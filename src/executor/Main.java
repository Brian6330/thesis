package executor;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

import analyzer.ManifestAnalyzer;
import analyzer.MetaInfoAnalyzer;
import analyzer.SmaliAnalyzer;

public class Main {

	private String srcFilePath = "";
	private String dstFolder = "";
	private ResultCollector rc = new ResultCollector();
	
	public static void main(String[] args) {
		if (args.length != 1) {
			System.out.println("You need to specify an APK input file.");
			System.exit(0);
		}
		
		String srcFilePath = args[0];
		Main start = new Main(srcFilePath);
				
		start.unpackFile();
		start.analyseFile();
		//start.cleanupFile();
	}
	
	public Main(String srcFilePath) {
		this.srcFilePath = srcFilePath;
		
		String cwd = System.getProperty("user.dir");
		
		if (srcFilePath.indexOf('\\') != -1) {
			int pos = this.srcFilePath.lastIndexOf('\\');
			this.dstFolder = cwd + "\\" + srcFilePath.substring(pos + 1, this.srcFilePath.length() - 4);
		} else if (srcFilePath.indexOf('/') != -1) {
			int pos = this.srcFilePath.lastIndexOf('/');
			this.dstFolder = cwd + "/" + srcFilePath.substring(pos + 1, this.srcFilePath.length() - 4);
		} else {
			this.dstFolder = cwd + "/" + srcFilePath.substring(0, this.srcFilePath.length() - 4);
		}
	}
	
	private void unpackFile() {
		try {
			Process p = Runtime.getRuntime().exec("java -jar apktool.jar d " + this.srcFilePath); // currently APKTool version 2.2.2 included
			p.waitFor();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	private void analyseFile() {
		ArrayList<File> files = scanDirectory(new File(this.dstFolder));

		for (File file : files) {
	    	if (file.getName().endsWith("smali")) {
		    	SmaliAnalyzer sa = new SmaliAnalyzer(file, rc);
	    		sa.analyse();
	    	} else if (file.getName().equals("AndroidManifest.xml")) {
		    	ManifestAnalyzer ma = new ManifestAnalyzer(file, rc);
	    		ma.analyse();
	    	} else if (file.getName().equals("apktool.yml")) {
		    	MetaInfoAnalyzer mia = new MetaInfoAnalyzer(file, rc);
	    		mia.analyse();
	    	}
		}
	}

	private void cleanupFile() {
		try {
			deleteRecursive(new File(this.dstFolder));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private ArrayList<File> scanDirectory(File parent) {
		ArrayList<File> files = new ArrayList<File>();
		
	    for (File child : parent.listFiles()) {
	        if (".".equals(child.getName()) || "..".equals(child.getName()))
	            continue;
	        if (child.isFile())
	            files.add(child);
	        else if (child.isDirectory())
	        	files.addAll(scanDirectory(child));
	    }
	    
	    return files;
	}
	
	public void deleteRecursive(File path) throws FileNotFoundException {
	        if (path.isDirectory()){
	            
	        	for (File file : path.listFiles()){
	            	if (".".equals(file.getName()) || "..".equals(file.getName()))
	    	            continue;
	                
	            	deleteRecursive(file);
	            }
	        }
	        
	        path.delete();
    }
}

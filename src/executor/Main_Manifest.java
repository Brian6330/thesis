package executor;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;

public class Main_Manifest {

	private String srcFilePath = "";
	private String dstFolder = "";
	private boolean runningOnWindows = true;
	
	public static void main(String[] args) {
		if (args.length != 1) {
			System.out.println("You need to specify an APK input file.");
			System.exit(0);
		}
		
		String srcFilePath = args[0];
		Main_Manifest start = new Main_Manifest(srcFilePath);
		
		start.unpackFile();
		start.cleanupFile();
	}
	
	public Main_Manifest(String srcFilePath) {
		this.srcFilePath = srcFilePath;
		
		String cwd = System.getProperty("user.dir");
		
		String OsType = System.getProperty("os.name");
		if (OsType.contains("Linux")) {
			this.runningOnWindows = false;
			System.out.println("Main: Detected Linux OS.");
		} else {
			System.out.println("Main: Detected Windows OS.");
		}
		
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
		Process p = null;
		
		String fileName = "";
		if (this.runningOnWindows) {
			fileName = this.srcFilePath.substring(0, this.srcFilePath.length() - 4);
		} else {
			fileName = this.srcFilePath.substring(7, this.srcFilePath.length() - 4);
		}
		
		try {
			if (this.runningOnWindows) {
				p = Runtime.getRuntime().exec("java -jar apktool.jar d -s " + this.srcFilePath); // currently APKTool version 2.2.2 included
			} else {
				p = Runtime.getRuntime().exec("../../jdk1.8.0_101/bin/java -d64 -Xmx60g -jar apktool.jar d -s " + this.srcFilePath); // currently APKTool version 2.2.2 included			
			}
				
			p.waitFor();
			
			if (this.runningOnWindows) {
				p = Runtime.getRuntime().exec("cmd /c copy " + fileName + "\\AndroidManifest.xml results\\" + fileName + ".xml");	
			} else {
				p = Runtime.getRuntime().exec("./store_file_manifest.sh " + fileName);			
			}
			
			p.waitFor();
			
			if (this.runningOnWindows) {
				p = Runtime.getRuntime().exec("cmd /c copy " + fileName + "\\apktool.yml results\\" + fileName + ".yml");	
			} else {
				p = Runtime.getRuntime().exec("./store_file_meta.sh " + fileName);			
			}
			
			p.waitFor();
			
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	private void cleanupFile() {
		try {
			deleteRecursive(new File(this.dstFolder));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
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

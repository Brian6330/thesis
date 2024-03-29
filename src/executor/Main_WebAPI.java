package executor;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

import executor.analyzers.ManifestAnalyzer;
import executor.analyzers.MetaInfoAnalyzer;
import executor.analyzers.SmaliAnalyzer;
import executor.collectors.ResultCollector;
import executor.io.ApiMappingsReader;
import executor.io.FileStore;

public class Main_WebAPI {

	private String srcFilePath = "";
	private String dstFolder = "";
	private String permissionMappingsFile = "jellybean_publishedapimapping.csv";
	private ResultCollector rc;
	private boolean runningOnWindows = true;
	
	public static void main(String[] args) {
		if (args.length != 1) {
			System.out.println("You need to specify an APK input file.");
			System.exit(0);
		}
		
		String srcFilePath = args[0];
		Main_WebAPI start = new Main_WebAPI(srcFilePath);
		
		long startTime = System.currentTimeMillis();
		start.unpackFile();
		start.analyseFile();
		start.storeResults();
		start.cleanupFile();
		long endTime = System.currentTimeMillis();
		System.out.println("Analysis took " + (endTime - startTime)/1000 + " seconds.");
	}
	
	public Main_WebAPI(String srcFilePath) {
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
	
	private void extractApkStats(ResultCollector rc) {
		File f = new File(this.srcFilePath);
		long apkSize = f.getAbsoluteFile().length();
		long dexSize = 0;
		long dexDate = 0;
		
		try {
			ZipFile zf = new ZipFile(f);
			ZipEntry ze = zf.getEntry("classes.dex");
			dexSize = ze.getSize();
			dexDate = ze.getLastModifiedTime().toMillis();
			zf.close();
		} catch (ZipException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		rc.found_ApkSize(apkSize);
		rc.found_DexSize(dexSize);
		rc.found_DexDate(dexDate);
	}
	
	private void unpackFile() {
		Process p = null;
		
		try {
			if (this.runningOnWindows) {
				p = Runtime.getRuntime().exec("java -jar apktool.jar d " + this.srcFilePath); // currently APKTool version 2.2.3 included	
			} else {
				p = Runtime.getRuntime().exec("../../jdk1.8.0_101/bin/java -d64 -Xmx60g -jar apktool.jar d " + this.srcFilePath); // currently APKTool version 2.2.3 included			
			}
				
			p.waitFor();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	private void analyseFile() {
		this.rc = new ResultCollector(new File(this.srcFilePath));
		
		extractApkStats(this.rc);
		
		cleanupOriginalFileCopies();
		
		ManifestAnalyzer ma = null;
		ArrayList<File> files = scanDirectory(new File(this.dstFolder));
		for (File file : files) {
			if (file.getName().equals("AndroidManifest.xml")) {
		    	ma = new ManifestAnalyzer(file, rc);
	    		ma.analyse();
	    	}
		}

		// prepare mappings for string matching
		ApiMappingsReader amr = new ApiMappingsReader(new File(this.permissionMappingsFile));
		amr.preparePermissionListFor(ma.getPermissionList());
		HashMap<String, ArrayList<String>> additionalSearchStrings = amr.getPreparedCleanedList();
		
		for (File file : files) {
	    	if (file.getName().endsWith("smali") && !(file.getParentFile().toString().contains("\\smali\\android\\support") || file.getParentFile().toString().contains("/smali/android/support"))) {
		    	SmaliAnalyzer sa = new SmaliAnalyzer(file, rc, additionalSearchStrings);
		    	additionalSearchStrings = sa.analyseAndReturnList();
	    	} else if (file.getName().equals("apktool.yml")) {
		    	MetaInfoAnalyzer mia = new MetaInfoAnalyzer(file, this.rc);
	    		mia.analyse();
	    	}
		}
		
	    if (!additionalSearchStrings.isEmpty()) {
	    	for (Entry<String, ArrayList<String>> e : additionalSearchStrings.entrySet()) {
				this.rc.found_Issue_UnnecPerm(new File(this.srcFilePath), -1, e.getKey());
			}
	    }
	}

	private void storeResults() {
		FileStore fs = new FileStore(this.rc);
		fs.storeToDisk();
	}

	private void cleanupFile() {
		try {
			deleteRecursive(new File(this.dstFolder));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
	}
	
	private void cleanupOriginalFileCopies() {
		try {
			deleteRecursive(new File(this.dstFolder + "/original"));
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

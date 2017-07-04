package exporter;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.ZipEntry;
import java.util.zip.ZipException;
import java.util.zip.ZipFile;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.xml.sax.SAXException;

import exporter.data.AnalysisResult;
import exporter.io.DatabaseHandler;

public class Main_Manifest_Meta_UPDATE {

//	private String dataFilePath = "manifest_and_meta_25k.zip"; //VirusShare
	private String dataFilePath = "manifest_and_meta_100k.zip"; // Uni Lu
	private String dbName = "database.sqlite";
	private File dataFile;
	private DatabaseHandler dbh;
	
	
	public static void main(String[] args) {
		Main_Manifest_Meta_UPDATE start = new Main_Manifest_Meta_UPDATE();
		
		ArrayList<AnalysisResult> ars = start.readZipFile();
		start.storeAnalysisResults(ars);
	}

	public Main_Manifest_Meta_UPDATE() {
		this.dataFile = new File(this.dataFilePath);
		this.dbh = new DatabaseHandler(this.dbName, false);
	}
	
	public ArrayList<AnalysisResult> readZipFile() {
		ArrayList<AnalysisResult> arl = new ArrayList<AnalysisResult>();
		
		Pattern p01 = Pattern.compile("isFrameworkApk: (\\w+)");
		Pattern p02 = Pattern.compile("minSdkVersion: '([\\d]+)'");
		Pattern p03 = Pattern.compile("versionCode: '([\\d]+)'");
		Pattern p04 = Pattern.compile("versionName: '([^']+)'");
		Pattern p05 = Pattern.compile("targetSdkVersion: '([\\d]+)'");
		Pattern p06 = Pattern.compile("sharedLibrary: (\\w+)");
		
		ZipFile zf = null;
		try {
			zf = new ZipFile(this.dataFile);
			for (Enumeration<? extends ZipEntry> e = zf.entries(); e.hasMoreElements();) {
			    ZipEntry ze = e.nextElement();
			    String name = ze.getName();
			    AnalysisResult ar = new AnalysisResult();
//			    ar.md5 = name.substring(name.length() - 4 - 32, name.length() - 4); //VirusShare
			    ar.sha256 = name.substring(0, name.length() - 4); // Uni Lu
			    InputStream in = zf.getInputStream(ze);
			    InputStreamReader isr = new InputStreamReader(in, Charset.forName("UTF-8"));
			    BufferedReader br = new BufferedReader(isr);
			    String line = "";

			    if (name.endsWith(".yml")) {
				    while ((line = br.readLine()) != null) {
						Matcher m01 = p01.matcher(line);
						if (m01.find() && ar.isFrameworkApk.equals("")) {
							ar.isFrameworkApk = m01.group(1);
					    }
						
						Matcher m02 = p02.matcher(line);
						if (m02.find() && ar.requiresVersionYml.equals("")) {
							ar.requiresVersionYml = m02.group(1);
					    }
						
						Matcher m03 = p03.matcher(line);
						if (m03.find() && ar.vercode == 0) {
							ar.vercode = Long.valueOf(m03.group(1)).longValue();
					    }
						
						Matcher m04 = p04.matcher(line);
						if (m04.find() && ar.currentVersion.equals("")) {
							ar.currentVersion = m04.group(1);
					    }
						
						Matcher m05 = p05.matcher(line);
						if (m05.find() && ar.targetsVersion.equals("")) {
							ar.targetsVersion = m05.group(1);
					    }
						
						Matcher m06 = p06.matcher(line);
						if (m06.find() && ar.isSharedLibrary.equals("")) {
							ar.isSharedLibrary = m06.group(1);
					    }
					} 
			    } else if (name.endsWith(".xml")) {
			    	StringBuilder xmlContent = new StringBuilder();
			    	
			    	while ((line = br.readLine()) != null) {
						xmlContent.append(line);
					}
			    	
					try {
						DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
						DocumentBuilder builder = factory.newDocumentBuilder();
						ByteArrayInputStream input =  new ByteArrayInputStream(xmlContent.toString().getBytes("UTF-8"));
						Document doc = builder.parse(input);		
						Element root = doc.getDocumentElement();
						ar.pkg_name = root.getAttribute("package");
					} catch (ParserConfigurationException | SAXException e1) {
						System.out.println("Main_Manifest_Meta_25k_UPDATE: Invalid XML found in file " + name);
					}
			    }
				    
				br.close();
				arl.add(ar);
			}
		} catch (ZipException e1) {
			e1.printStackTrace();
		} catch (IOException e1) {
			e1.printStackTrace();
		} finally {
		  try {
			zf.close();
		  } catch (IOException e) {
			e.printStackTrace();
		  }
		}
		
		return arl;
	}
	
	private void storeAnalysisResults(ArrayList<AnalysisResult> arl) {
		long arCount = 0;
		for (AnalysisResult ar : arl) {
//			dbh.updateVirusShareMetaEntry(ar); //VirusShare
			dbh.updateUniLuMetaEntry(ar); // Uni Lu
			arCount++;
			if (arCount % 1000 == 0) {
				System.out.println("Main: Updated row " + arCount);
			}
		}
	}
}

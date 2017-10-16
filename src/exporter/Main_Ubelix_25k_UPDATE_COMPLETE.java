package exporter;

import java.io.BufferedReader;
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

import exporter.data.AnalysisResult;
import exporter.io.DatabaseHandler;

public class Main_Ubelix_25k_UPDATE_COMPLETE {

	private String dataFilePath = "results_25k.zip";
	private String dbName = "database.sqlite";
	private File dataFile;
	private DatabaseHandler dbh;
	
	
	public static void main(String[] args) {
		Main_Ubelix_25k_UPDATE_COMPLETE start = new Main_Ubelix_25k_UPDATE_COMPLETE();
		
		ArrayList<AnalysisResult> ars = start.readZipFile();
		start.storeAnalysisResults(ars);
	}

	public Main_Ubelix_25k_UPDATE_COMPLETE() {
		this.dataFile = new File(this.dataFilePath);
		this.dbh = new DatabaseHandler(this.dbName, false);
	}
	
	public ArrayList<AnalysisResult> readZipFile() {
		ArrayList<AnalysisResult> arl = new ArrayList<AnalysisResult>();
		
		ZipFile zf = null;
		try {
			zf = new ZipFile(this.dataFile);
			for (Enumeration<? extends ZipEntry> e = zf.entries(); e.hasMoreElements();) {
			    ZipEntry ze = e.nextElement();
			    String name = ze.getName();
			    if (name.endsWith(".log")) {
			    	AnalysisResult ar = new AnalysisResult();
			    	ar.md5 = name.substring(name.length() - 4 - 32, name.length() - 4);
			    	InputStream in = zf.getInputStream(ze);
				    InputStreamReader isr = new InputStreamReader(in, Charset.forName("UTF-8"));
				    BufferedReader br = new BufferedReader(isr);
				    String line = "";
				    int lineNr = 0;
					while ((line = br.readLine()) != null) {
						lineNr++;
						
						Pattern p01 = Pattern.compile(".* = ([0-9]+)");
						Matcher m01 = p01.matcher(line);
																		
						if (m01.find()) {
							switch (lineNr) {
							case 1:
								ar.vuln_001 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 2:
								ar.vuln_002 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 3:
								ar.vuln_003 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 4:
								ar.vuln_004 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 5:
								ar.vuln_005 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 6:
								ar.vuln_006 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 7:
								ar.vuln_007 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 8:
								ar.vuln_009 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 9:
								ar.vuln_010 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 10:
								ar.vuln_011 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 11:
								ar.vuln_012 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 12:
								ar.vuln_016 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 13:
								ar.vuln_018 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 14:
								ar.vuln_020 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 15:
								ar.vuln_021 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 16:
								ar.vuln_022 = Integer.valueOf(m01.group(1)).intValue();
								break;
							case 17:
								ar.vuln_023 = Integer.valueOf(m01.group(1)).intValue();
								break;
							}
					    }
						
					}
					
					br.close();
					arl.add(ar);
			    }
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
			dbh.updateVirusShareEntry(ar);
			arCount++;
			if (arCount % 1000 == 0) {
				System.out.println("Main: Updated row " + arCount);
			}
		}
	}
}

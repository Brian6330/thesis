package exporter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import exporter.data.AnalysisResult;
import exporter.io.DatabaseHandler;

public class Main_Uni_Lu_CREATE_INSERT {

	private String dataFilePath = "latest.csv";
	private String dbName = "database.sqlite";
	private File dataFile;
	private DatabaseHandler dbh;
	
	
	public static void main(String[] args) {
		Main_Uni_Lu_CREATE_INSERT start = new Main_Uni_Lu_CREATE_INSERT();
		
		ArrayList<AnalysisResult> ars = start.readDataFile();
		start.storeAnalysisResults(ars);
	}

	public Main_Uni_Lu_CREATE_INSERT() {
		this.dataFile = new File(this.dataFilePath);
		this.dbh = new DatabaseHandler(this.dbName, true);
	}
	
	public ArrayList<AnalysisResult> readDataFile() {
		ArrayList<AnalysisResult> arl = new ArrayList<AnalysisResult>();
		
		long lineNr = 0;
		try {
			InputStream fis = new FileInputStream(this.dataFile);
		    InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		    BufferedReader br = new BufferedReader(isr);
		    String line = "";
		    
			while ((line = br.readLine()) != null) {
				lineNr++;
				if (lineNr == 1) {
					continue;
				}
				
				AnalysisResult ar = new AnalysisResult();
				
				Pattern p01 = Pattern.compile("(.*),.*,.*,.*,.*,.*,.*,.*,.*,.*,.*");
				Matcher m01 = p01.matcher(line);
				Pattern p02 = Pattern.compile(".*,(.*),.*,.*,.*,.*,.*,.*,.*,.*,.*");
				Matcher m02 = p02.matcher(line);
				Pattern p03 = Pattern.compile(".*,.*,(.*),.*,.*,.*,.*,.*,.*,.*,.*");
				Matcher m03 = p03.matcher(line);
				Pattern p04 = Pattern.compile(".*,.*,.*,(.*),.*,.*,.*,.*,.*,.*,.*");
				Matcher m04 = p04.matcher(line);
				Pattern p05 = Pattern.compile(".*,.*,.*,.*,(.*),.*,.*,.*,.*,.*,.*");
				Matcher m05 = p05.matcher(line);
				Pattern p06 = Pattern.compile(".*,.*,.*,.*,.*,\"(.*)\",.*,.*,.*,.*,.*");
				Matcher m06 = p06.matcher(line);
				Pattern p07 = Pattern.compile(".*,.*,.*,.*,.*,.*,(.*),.*,.*,.*,.*");
				Matcher m07 = p07.matcher(line);
				Pattern p08 = Pattern.compile(".*,.*,.*,.*,.*,.*,.*,(.*),.*,.*,.*");
				Matcher m08 = p08.matcher(line);
				Pattern p09 = Pattern.compile(".*,.*,.*,.*,.*,.*,.*,.*,(.*),.*,.*");
				Matcher m09 = p09.matcher(line);
				Pattern p10 = Pattern.compile(".*,.*,.*,.*,.*,.*,.*,.*,.*,(.*),.*");
				Matcher m10 = p10.matcher(line);
				Pattern p11 = Pattern.compile(".*,.*,.*,.*,.*,.*,.*,.*,.*,.*,(.*)");
				Matcher m11 = p11.matcher(line);
				
				if (m01.find()) {
			    	ar.sha256 = m01.group(1);
			    }
				if (m02.find()) {
					ar.sha1 = m02.group(1);
			    }
				if (m03.find()) {
					ar.md5 = m03.group(1);
			    }
				if (m04.find()) {
					ar.dex_date = m04.group(1);
			    }
				if (m05.find()) {
					ar.apk_size = Long.valueOf(m05.group(1));
			    }
				if (m06.find()) {
					ar.pkg_name = m06.group(1);
			    }
				if (m07.find()) {
					// bugfix for missing scan results in UniLU data file
					if (m07.group(1).equals("")) {
						ar.vercode = -1;
					} else {
						ar.vercode = Long.valueOf(m07.group(1));
					}
			    }
				if (m08.find()) {
					// bugfix for missing scan results in UniLU data file
					if (m08.group(1).equals("")) {
						ar.vt_detection = -1;
					} else {
						ar.vt_detection = Long.valueOf(m08.group(1));
					}
			    }
				if (m09.find()) {
					ar.vt_scan_date = m09.group(1);
			    }
				if (m10.find()) {
					ar.dex_size = Long.valueOf(m10.group(1));
			    }
				if (m11.find()) {
					ar.markets = m11.group(1);
			    }
				
				arl.add(ar);
				
				if (lineNr % 1000 == 0) {
					System.out.println("Main: Finished reading line " + lineNr);
				}
				if (lineNr == 100001) {
					break;
				}
			}
			
			br.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return arl;
	}
	
	private void storeAnalysisResults(ArrayList<AnalysisResult> arl) {
		long rowNr = 0;
		for (AnalysisResult ar : arl) {
			dbh.storeUniLuRepoData(ar);
			rowNr++;
			
			if (rowNr % 1000 == 0) {
				System.out.println("Main: Inserted row " + rowNr);
			}
		}
	}
}

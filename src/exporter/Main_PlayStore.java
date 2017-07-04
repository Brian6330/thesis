package exporter;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.ssl.HttpsURLConnection;

import exporter.data.AnalysisResult;
import exporter.io.DatabaseHandler;

public class Main_PlayStore {
	
	private String pkgIdFile = "google_ids.csv";
	private String dbName = "database.sqlite";
	private DatabaseHandler dbh;
	
	public static void main(String[] args) {
		Main_PlayStore start = new Main_PlayStore();
		ArrayList<String> al = start.readPackageIds();
		
		int c = 0;
		for (String s : al) {
			AnalysisResult ar = start.scrapePlayStoreUrl(s);
			start.storeResults(ar);
			c++;
			System.out.println("Main_PlayStore: " + c + " " + s);
		}
	}
	
	public Main_PlayStore() {
		this.dbh = new DatabaseHandler(this.dbName, false);
	}
	
	private AnalysisResult scrapePlayStoreUrl(String pkgName) {
		String httpsURL = "https://play.google.com/store/apps/details?id=" + pkgName + "&hl=en";
		AnalysisResult ar = new AnalysisResult();
		ar.pkg_name = pkgName;
		
		try {
		    URL myurl = new URL(httpsURL);
		    HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection();
		    InputStream ins = con.getInputStream();
		    InputStreamReader isr = new InputStreamReader(ins);
			
//			File playStoreSampleContent = new File("sample_playstore.html");
//			FileInputStream fis = new FileInputStream(playStoreSampleContent);
//			InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		   
			BufferedReader in = new BufferedReader(isr);
	
		    String line;
		    Pattern p1 = Pattern.compile("Rated ([0-9.]+) stars out of five stars");
		    Pattern p2 = Pattern.compile("/(\\w*)\"> <span itemprop=\"");
		    Pattern p3 = Pattern.compile("itemprop=\"datePublished\">([\\w\\s,]+)<");
		    Pattern p4 = Pattern.compile("itemprop=\"operatingSystems\">([\\w\\s,\\.-]+)<");
		    Pattern p5 = Pattern.compile("itemprop=\"numDownloads\">([\\w\\s,\\.-]+)<");
		    Pattern p6 = Pattern.compile("itemprop=\"softwareVersion\">([\\w\\s,\\.-]+)<");
		    Pattern p7 = Pattern.compile("itemprop=\"contentRating\">([\\w\\s,\\.-]+)<");
		    Pattern p8 = Pattern.compile("Offered By </div> <div class=\"content\">([^<]+)<");
		    Pattern p9 = Pattern.compile("mailto:([^\"]+)\"");
		    Pattern p10 = Pattern.compile("\"id-app-title\" tabindex=\"0\">([^<]+)<");
		    
			while ((line = in.readLine()) != null) {
				Matcher m1 = p1.matcher(line);
				if (m1.find() && ar.starRating.equals("")) {
					ar.starRating = m1.group(1);
				}
				
				Matcher m2 = p2.matcher(line);
				if (m2.find() && ar.category.equals("")) {
					ar.category = m2.group(1);
				}
				
				Matcher m3 = p3.matcher(line);
				if (m3.find() && ar.lastUpdateDate.equals("")) {
					ar.lastUpdateDate = m3.group(1);
				}
				
				Matcher m4 = p4.matcher(line);
				if (m4.find() && ar.requiresVersion.equals("")) {
					ar.requiresVersion = m4.group(1).trim();
				}
				
				Matcher m5 = p5.matcher(line);
				if (m5.find() && ar.numberOfDownloads.equals("")) {
					ar.numberOfDownloads = m5.group(1).trim();
				}
				
				Matcher m6 = p6.matcher(line);
				if (m6.find() && ar.currentVersion.equals("")) {
					ar.currentVersion = m6.group(1).trim();
				}
				
				Matcher m7 = p7.matcher(line);
				if (m7.find() && ar.contentRating.equals("")) {
					ar.contentRating = m7.group(1).trim();
				}
				
				Matcher m8 = p8.matcher(line);
				if (m8.find() && ar.offeredBy.equals("")) {
					ar.offeredBy = m8.group(1).trim();
					ar.offeredBy = ar.offeredBy.replace("'", "''");
				}
				
				Matcher m9 = p9.matcher(line);
				if (m9.find() && ar.contactMail.equals("")) {
					ar.contactMail = m9.group(1).trim();
				}
				
				Matcher m10 = p10.matcher(line);
				if (m10.find() && ar.appName.equals("")) {
					ar.appName = m10.group(1).trim();
					ar.appName = ar.appName.replace("'", "''");
				}
			}
			
			in.close();
			
			
		} catch (IOException e) {
			ar.starRating = "STOREPAGE_INEXISTENT";
			ar.category = "STOREPAGE_INEXISTENT";
			ar.lastUpdateDate = "STOREPAGE_INEXISTENT";
			ar.requiresVersion = "STOREPAGE_INEXISTENT";
			ar.numberOfDownloads = "STOREPAGE_INEXISTENT";
			ar.currentVersion = "STOREPAGE_INEXISTENT";
			ar.contentRating = "STOREPAGE_INEXISTENT";
			ar.offeredBy = "STOREPAGE_INEXISTENT";
			ar.contactMail = "STOREPAGE_INEXISTENT";
			ar.appName = "STOREPAGE_INEXISTENT";
			System.out.println("Main_PlayStore: Received FileNotFound error for " + ar.pkg_name);
		}
		
		
		return ar;
	}
	
	private ArrayList<String> readPackageIds() {
		ArrayList<String> al = new ArrayList<String>();
		
		try {
			File playStoreSampleContent = new File(this.pkgIdFile);
			FileInputStream fis = new FileInputStream(playStoreSampleContent);
			InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
			BufferedReader in = new BufferedReader(isr);
	
		    String line;
			while ((line = in.readLine()) != null) {
				al.add(line);
			}
			
			in.close();
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return al;
	}
	
	private void storeResults(AnalysisResult ar) {
		this.dbh.updatePlayStoreResults(ar);
	}
}

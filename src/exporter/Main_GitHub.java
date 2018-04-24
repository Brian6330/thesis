package exporter;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.nio.charset.Charset;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.ssl.HttpsURLConnection;

import exporter.data.AnalysisResult;
import exporter.io.DatabaseHandler;

public class Main_GitHub {
	
	private String pkgIdFile = "github_urls.csv";
	private String gitHubResultData = "GitHub_results.csv";
	
	// GitHub token of Astrid Ytrehorn, don't misuse!
	private String tokenStr = "?access_token=60a58f7387e72c630f2fc0e073a86a595ce78efb";
	
	public static void main(String[] args) {
		Main_GitHub start = new Main_GitHub();
		ArrayList<String> al = start.readPackageIds();
		
		int c = 0;
		for (String line : al) {
			String url = line.split(",")[0];
			String pkg = line.split(",")[1];
			AnalysisResult ar = start.scrapeGitHubJson(pkg, url);
			start.storeResults(ar);
			c++;
			System.out.println("Main_GitHub: " + c + " " + pkg);
//			System.exit(0);
		}
	}
	
	public Main_GitHub() {}
	
	private AnalysisResult scrapeGitHubJson(String pkg, String url) {
		String httpsURL = url + this.tokenStr;
		String httpsReleaseURL = url + "/releases" + this.tokenStr;
		AnalysisResult ar = new AnalysisResult();
		ar.pkg_name = pkg;
		
		try {
		    URL myurl = new URL(httpsURL);
		    HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection();
		    InputStream ins = con.getInputStream();
		    InputStreamReader isr = new InputStreamReader(ins);
			
//			File playStoreSampleContent = new File("sample_playstore.html");
//			FileInputStream fis = new FileInputStream(playStoreSampleContent);
//			InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		   
			BufferedReader in = new BufferedReader(isr);
			// "created_at":"2015-07-03T00:57:59Z","updated_at":"2018-04-19T18:32:16Z"
			String line;
		    Pattern p1 = Pattern.compile("\"created_at\":\"([^\"]+)\"");
		    Pattern p2 = Pattern.compile("\"updated_at\":\"([^\"]+)\"");
		   
		    while ((line = in.readLine()) != null) {
		    	Matcher m1 = p1.matcher(line);
				if (m1.find()) {
					ar.creationDate = m1.group(1);
				}
				
				Matcher m2 = p2.matcher(line);
				if (m2.find()) {
					ar.lastUpdateDate = m2.group(1);
				}
			}
			
			in.close();
			isr.close();
			ins.close();
			con.disconnect();
			
		} catch (IOException e) {
			ar.starRating = "PAGE_INEXISTENT";
			ar.category = "PAGE_INEXISTENT";
			ar.lastUpdateDate = "PAGE_INEXISTENT";
			ar.requiresVersion = "PAGE_INEXISTENT";
			ar.numberOfDownloads = "PAGE_INEXISTENT";
			ar.currentVersion = "PAGE_INEXISTENT";
			ar.contentRating = "PAGE_INEXISTENT";
			ar.offeredBy = "PAGE_INEXISTENT";
			ar.contactMail = "PAGE_INEXISTENT";
			ar.appName = "PAGE_INEXISTENT";
			ar.creationDate = "PAGE_INEXISTENT";
			ar.releaseCount = "PAGE_INEXISTENT";
			System.out.println("Main_GitHub: Received FileNotFound error for " + ar.pkg_name);
		}
		
		
		try { 
			URL myurl = new URL(httpsReleaseURL);
		    HttpsURLConnection con = (HttpsURLConnection)myurl.openConnection();
		    InputStream ins = con.getInputStream();
		    InputStreamReader isr = new InputStreamReader(ins);
			
//			File playStoreSampleContent = new File("sample_playstore.html");
//			FileInputStream fis = new FileInputStream(playStoreSampleContent);
//			InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		   
			BufferedReader in = new BufferedReader(isr);
			// "assets_url":
			String line;
		    Pattern p1 = Pattern.compile("\"(assets_url)\":");
		    		   
		    while ((line = in.readLine()) != null) {
		    	Matcher m1 = p1.matcher(line);
		    	
		    	
		    	int releases = 0;
		    	while (m1.find()) {
		    		releases++;
		    	}
		    		
				ar.releaseCount = String.valueOf(releases);
			}
			
			in.close();
			isr.close();
			ins.close();
			con.disconnect();
			
		} catch (IOException e) {
			ar.releaseCount = "PAGE_INEXISTENT";
			System.out.println("Main_GitHub: Received FileNotFound error for " + ar.pkg_name);
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
				if (line.equals("")) {
					al.add("https://www.google.com/");
				} else {
					al.add(line);					
				}
			}
			
			in.close();
			
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return al;
	}
	
	private void storeResults(AnalysisResult ar) {
		try {
			File gitHubResultData = new File(this.gitHubResultData);
			FileOutputStream fos = new FileOutputStream(gitHubResultData, true);
			OutputStreamWriter osr = new OutputStreamWriter(fos, Charset.forName("UTF-8"));
			BufferedWriter out = new BufferedWriter(osr);
	
			out.write(ar.pkg_name + ";" + ar.creationDate + ";" + ar.lastUpdateDate + ";" + ar.releaseCount + "\n");
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

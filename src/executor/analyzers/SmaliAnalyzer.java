package analyzer;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import executor.ResultCollector;

public class SmaliAnalyzer extends BaseAnalyzer {

	public SmaliAnalyzer(File file, ResultCollector rc) {
		super(file, rc);
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		String line = "";
		Pattern pattern = Pattern.compile("Landroid/telephony/TelephonyManager;->getDeviceId" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String;");
	    
	    try {
	    	
			while ((line = br.readLine()) != null) {
			    Matcher matcher = pattern.matcher(line);

			    while(matcher.find()){
			    	this.rc.foundIssueGetDeviceId();
			    	System.out.println("VULN-DEVICE_ID");
			        System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
}

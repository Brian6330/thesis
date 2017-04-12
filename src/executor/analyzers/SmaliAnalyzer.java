package executor.analyzers;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import executor.collectors.ResultCollector;

public class SmaliAnalyzer extends BaseAnalyzer {

	public SmaliAnalyzer(File file, ResultCollector rc) {
		super(file, rc);
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		String line = "";
		Pattern pattern_VULN_007 = Pattern.compile("Landroid/telephony/TelephonyManager;->getDeviceId" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String;");
	    
		long lineNr = 0;
	    try {
	    	
			while ((line = br.readLine()) != null) {
				lineNr++;
			    Matcher matcher = pattern_VULN_007.matcher(line);

			    while(matcher.find()){
			    	this.rc.found_Issue_GetDeviceId(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

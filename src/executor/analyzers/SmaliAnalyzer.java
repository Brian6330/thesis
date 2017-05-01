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
		Pattern pattern_VULN_003 = Pattern.compile("Lorg/apache/http/conn/scheme/SchemeRegistry;->register" + this.escapeChar + "(Lorg/apache/http/conn/scheme/Scheme;" + this.escapeChar + ")Lorg/apache/http/conn/scheme/Scheme");
		Pattern pattern_VULN_005 = Pattern.compile("Lorg/apache/http/client/methods/HttpGet;->addHeader" + this.escapeChar + "(Ljava/lang/String;Ljava/lang/String;" + this.escapeChar + ")V");
		Pattern pattern_VULN_006a = Pattern.compile("Landroid/telephony/TelephonyManager;->getDeviceId" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_006b = Pattern.compile("Landroid/bluetooth/BluetoothAdapter;->getAddress" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_006c = Pattern.compile("Landroid/net/wifi/WifiInfo;->getMacAddress" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_009a = Pattern.compile("Landroid/content/ClipboardManager;->getPrimaryClip" + this.escapeChar + "(" + this.escapeChar + ")Landroid.content.ClipData");
		Pattern pattern_VULN_009b = Pattern.compile("Landroid/content/ClipboardManager;->setPrimaryClip" + this.escapeChar + "(Landroid.content.ClipData;" + this.escapeChar + ")V");
		Pattern pattern_VULN_010 = Pattern.compile("Ljava/net/HttpURLConnection;-><init>" + this.escapeChar + "(Ljava/net/URL;" + this.escapeChar + ")V");
		Pattern pattern_VULN_011 = Pattern.compile(".implements Ljavax/net/ssl/X509TrustManager;");
		Pattern pattern_VULN_012a = Pattern.compile("new-array v\\d+, v\\d+, " + this.escapeChar + "[Ljava/security/cert/X509Certificate;");
		Pattern pattern_VULN_012b = Pattern.compile("Ljava/security/cert/CertificateFactory;->generateCertificate" + this.escapeChar + "(Ljava/io/InputStream;" + this.escapeChar + ")Ljava/security/cert/Certificate");
		Pattern pattern_VULN_012c = Pattern.compile("Ljava/security/cert/CertificateFactory;->generateCertificates" + this.escapeChar + "(Ljava/io/InputStream;" + this.escapeChar + ")Ljava/util/Collection");
		Pattern pattern_VULN_012d = Pattern.compile("Ljava/security/KeyStore;->getInstance" + this.escapeChar + "(Ljava/lang/String;" + this.escapeChar + ")Ljava/security/KeyStore");
		Pattern pattern_VULN_016a = Pattern.compile("Landroid/net/LocalServerSocket;->accept" + this.escapeChar + "(" + this.escapeChar + ")Landroid/net/LocalSocket");
		Pattern pattern_VULN_016b = Pattern.compile("Landroid/net/LocalSocket;->connect" + this.escapeChar + "(Landroid/net/LocalSocketAddress;" + this.escapeChar + ")V");
		Pattern pattern_VULN_021 = Pattern.compile("Landroid/webkit/WebSettings;->setJavaScriptEnabled" + this.escapeChar + "(Z" + this.escapeChar + ")V");
		Pattern pattern_VULN_022 = Pattern.compile("Landroid/webkit/WebView;->addJavascriptInterface" + this.escapeChar + "(Ljava/lang/Object;Ljava/lang/String;" + this.escapeChar + ")V");
		
		long lineNr = 0;
	    try {
	    	
			while ((line = br.readLine()) != null) {
				lineNr++;
				Matcher matcher_003 = pattern_VULN_003.matcher(line);
				Matcher matcher_005 = pattern_VULN_005.matcher(line);
			    Matcher matcher_006a = pattern_VULN_006a.matcher(line);
			    Matcher matcher_006b = pattern_VULN_006b.matcher(line);
			    Matcher matcher_006c = pattern_VULN_006c.matcher(line);
			    Matcher matcher_009a = pattern_VULN_009a.matcher(line);
			    Matcher matcher_009b = pattern_VULN_009b.matcher(line);
			    Matcher matcher_010 = pattern_VULN_010.matcher(line);
			    Matcher matcher_011 = pattern_VULN_011.matcher(line);
			    Matcher matcher_012a = pattern_VULN_012a.matcher(line);
			    Matcher matcher_012b = pattern_VULN_012b.matcher(line);
			    Matcher matcher_012c = pattern_VULN_012c.matcher(line);
			    Matcher matcher_012d = pattern_VULN_012d.matcher(line);
			    Matcher matcher_016a = pattern_VULN_016a.matcher(line);
			    Matcher matcher_016b = pattern_VULN_016b.matcher(line);
			    Matcher matcher_021 = pattern_VULN_021.matcher(line);
			    Matcher matcher_022 = pattern_VULN_022.matcher(line);

			    while(matcher_003.find()){
			    	this.rc.found_Issue_SchemeChan(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_005.find()){
			    	this.rc.found_Issue_HeadAttach(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_006a.find()){
			    	this.rc.found_Issue_HardwareId(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_006b.find()){
			    	this.rc.found_Issue_HardwareId(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_006c.find()){
			    	this.rc.found_Issue_HardwareId(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_009a.find()){
			    	this.rc.found_Issue_ExposeClip(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_009b.find()){
			    	this.rc.found_Issue_ExposeClip(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_010.find()){
			    	this.rc.found_Issue_InsecNetP(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_011.find()){
			    	this.rc.found_Issue_HttpsMisc(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_012a.find()){
			    	this.rc.found_Issue_ForgedCer(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_012b.find()){
			    	this.rc.found_Issue_ForgedCer(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_012c.find()){
			    	this.rc.found_Issue_ForgedCer(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_012d.find()){
			    	this.rc.found_Issue_ForgedCer(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_016a.find()){
			    	this.rc.found_Issue_UnprotSock(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_016b.find()){
			    	this.rc.found_Issue_UnprotSock(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_021.find()){
			    	this.rc.found_Issue_CodeInject(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_022.find()){
			    	this.rc.found_Issue_WebViewSB(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
}

package executor.analyzers;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import executor.collectors.ResultCollector;

public class SmaliAnalyzer extends BaseAnalyzer {
	
	HashMap<String, ArrayList<String>> additionalSearchStrings;
	HashSet<String> foundPermissions = new HashSet<String>();
	
	public SmaliAnalyzer(File file, ResultCollector rc, HashMap<String, ArrayList<String>> additionalSearchStrings) {
		super(file, rc);
		this.additionalSearchStrings = additionalSearchStrings;
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		String line = "";
		Pattern pattern_VULN_003 = Pattern.compile("Lorg/apache/http/conn/scheme/SchemeRegistry;->register" + this.escapeChar + "(Lorg/apache/http/conn/scheme/Scheme;" + this.escapeChar + ")Lorg/apache/http/conn/scheme/Scheme");
		Pattern pattern_VULN_005 = Pattern.compile("Lorg/apache/http/client/methods/HttpGet;->addHeader" + this.escapeChar + "(Ljava/lang/String;Ljava/lang/String;" + this.escapeChar + ")V");
		Pattern pattern_VULN_006a = Pattern.compile("Landroid/telephony/TelephonyManager;->getDeviceId" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_006b = Pattern.compile("Landroid/bluetooth/BluetoothAdapter;->getAddress" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_006c = Pattern.compile("Landroid/net/wifi/WifiInfo;->getMacAddress" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String");
		Pattern pattern_VULN_007a = Pattern.compile("Ljavax/crypto/KeyGenerator;->generateKey" + this.escapeChar + "(" + this.escapeChar + ")Ljavax/crypto/SecretKey");
		Pattern pattern_VULN_007b = Pattern.compile("Ljava/security/KeyPairGenerator;->generateKeyPair" + this.escapeChar + "(" + this.escapeChar + ")Ljava/security/KeyPair");
		Pattern pattern_VULN_007c = Pattern.compile("Ljava/security/KeyPairGenerator;->genKeyPair" + this.escapeChar + "(" + this.escapeChar + ")Ljava/security/KeyPair");
		Pattern pattern_VULN_009a = Pattern.compile("Landroid/content/ClipboardManager;->getPrimaryClip" + this.escapeChar + "(" + this.escapeChar + ")Landroid/content/ClipData");
		Pattern pattern_VULN_009b = Pattern.compile("Landroid/content/ClipboardManager;->setPrimaryClip" + this.escapeChar + "(Landroid/content/ClipData;" + this.escapeChar + ")V");
		Pattern pattern_VULN_010 = Pattern.compile("Ljava/net/HttpURLConnection;-><init>" + this.escapeChar + "(Ljava/net/URL;" + this.escapeChar + ")V");
		Pattern pattern_VULN_011 = Pattern.compile(".implements Ljavax/net/ssl/X509TrustManager;");
		Pattern pattern_VULN_012a = Pattern.compile("new-array v\\d+, v\\d+, " + this.escapeChar + "[Ljava/security/cert/X509Certificate;");
		Pattern pattern_VULN_012b = Pattern.compile("Ljava/security/cert/CertificateFactory;->generateCertificate" + this.escapeChar + "(Ljava/io/InputStream;" + this.escapeChar + ")Ljava/security/cert/Certificate");
		Pattern pattern_VULN_012c = Pattern.compile("Ljava/security/cert/CertificateFactory;->generateCertificates" + this.escapeChar + "(Ljava/io/InputStream;" + this.escapeChar + ")Ljava/util/Collection");
		Pattern pattern_VULN_016a = Pattern.compile("Landroid/net/LocalServerSocket;->accept" + this.escapeChar + "(" + this.escapeChar + ")Landroid/net/LocalSocket");
		Pattern pattern_VULN_016b = Pattern.compile("Landroid/net/LocalSocket;->connect" + this.escapeChar + "(Landroid/net/LocalSocketAddress;" + this.escapeChar + ")V");
		Pattern pattern_VULN_018 = Pattern.compile("Ljava/lang/System;->loadLibrary" + this.escapeChar + "(Ljava/lang/String;" + this.escapeChar + ")V");
		Pattern pattern_VULN_020 = Pattern.compile("Landroid/content/Context;->createPackageContext" + this.escapeChar + "(Ljava/lang/String;I" + this.escapeChar + ")Landroid/content/Context");
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
			    Matcher matcher_007a = pattern_VULN_007a.matcher(line);
			    Matcher matcher_007b = pattern_VULN_007b.matcher(line);
			    Matcher matcher_007c = pattern_VULN_007c.matcher(line);
			    Matcher matcher_009a = pattern_VULN_009a.matcher(line);
			    Matcher matcher_009b = pattern_VULN_009b.matcher(line);
			    Matcher matcher_010 = pattern_VULN_010.matcher(line);
			    Matcher matcher_011 = pattern_VULN_011.matcher(line);
			    Matcher matcher_012a = pattern_VULN_012a.matcher(line);
			    Matcher matcher_012b = pattern_VULN_012b.matcher(line);
			    Matcher matcher_012c = pattern_VULN_012c.matcher(line);
			    Matcher matcher_016a = pattern_VULN_016a.matcher(line);
			    Matcher matcher_016b = pattern_VULN_016b.matcher(line);
			    Matcher matcher_018 = pattern_VULN_018.matcher(line);
			    Matcher matcher_020 = pattern_VULN_020.matcher(line);
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
			    while(matcher_007a.find()){
			    	this.rc.found_Issue_UntrustEE(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_007b.find()){
			    	this.rc.found_Issue_UntrustEE(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_007c.find()){
			    	this.rc.found_Issue_UntrustEE(this.file, lineNr);
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
			    while(matcher_016a.find()){
			    	this.rc.found_Issue_UnprotSock(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_016b.find()){
			    	this.rc.found_Issue_UnprotSock(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_018.find()){
			    	this.rc.found_Issue_NativeCode(this.file, lineNr);
			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
			    }
			    while(matcher_020.find()){
			    	this.rc.found_Issue_DynCodeIns(this.file, lineNr);
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
			    
			    permissionEvaluation(line);
			}
			
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	private void permissionEvaluation(String line) {
		Matcher m = null;
		Pattern p = null;
		HashSet<String> toDelete = new HashSet<String>();
		
		for (Entry<String, ArrayList<String>> e : this.additionalSearchStrings.entrySet()) {
			for (String s : e.getValue()) {
//				System.out.println(s);
				p = Pattern.compile(s);
				m = p.matcher(line);
				if (m.find()) {
					toDelete.add(e.getKey());
					System.out.println("SmaliAnalyzer: permission is required: " + e.getKey() + " in " + this.file.getName());
				}
				
			}
		}
		
//		System.exit(0);
		for (String s : toDelete) {
			this.additionalSearchStrings.remove(s);
		}
		
		
		
	}
	
	public HashMap<String, ArrayList<String>> analyseAndReturnList() {
		try {
			InputStream fis = new FileInputStream(this.file);
		    InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		    BufferedReader br = new BufferedReader(isr);
		    
		    contentAnalysis(br);
		    
		    br.close();
		    
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		return this.additionalSearchStrings;
	}
}

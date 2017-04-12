package executor.analyzers;

import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

import executor.collectors.ResultCollector;

public class ManifestAnalyzer extends BaseAnalyzer {

	public ManifestAnalyzer(File file, ResultCollector rc) {
		super(file, rc);
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		StringBuilder xmlContent = new StringBuilder();
		//Pattern pattern_VULN_001 = Pattern.compile("android:debuggable = true" + this.escapeChar + "(" + this.escapeChar + ")Ljava/lang/String;");
		
		String line = "";	    
//		long lineNr = 0;
	    try {
	    	
			while ((line = br.readLine()) != null) {
				xmlContent.append(line);
//				lineNr++;
			    //Matcher matcher = pattern.matcher(line);

//			    while(matcher.find()){
//			    	this.rc.found_Issue_GetDeviceId(this.file, lineNr);
//			        //System.out.println(matcher.start()+matcher.group() + " | " + line);
//			    }
			}
			
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			ByteArrayInputStream input =  new ByteArrayInputStream(xmlContent.toString().getBytes("UTF-8"));
			Document doc = builder.parse(input);		

			Element root = doc.getDocumentElement();
			
			checkFor_VULN_001(root);
						
			
			
			
	    } catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}
	    
	}
	
	
	private void checkFor_VULN_001(Element root) {
		
		//NamedNodeMap baseElmnt_gold_attr = baseElmnt_gold.getAttributes();
		NodeList appNodes = root.getElementsByTagName("application");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:debuggable")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_DbgRelease(this.file, -1);
					}
				}
			}
		}
	}
}

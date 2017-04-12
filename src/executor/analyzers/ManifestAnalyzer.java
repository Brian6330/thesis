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
		
		String line = "";	    
	    try {
	    	
			while ((line = br.readLine()) != null) {
				xmlContent.append(line);
			}
			
			DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
			DocumentBuilder builder = factory.newDocumentBuilder();
			
			ByteArrayInputStream input =  new ByteArrayInputStream(xmlContent.toString().getBytes("UTF-8"));
			Document doc = builder.parse(input);		

			Element root = doc.getDocumentElement();
			
			//checkFor_VULN_001(root);
			//checkFor_VULN_003(root);
			checkFor_VULN_004(root);
			
	    } catch (IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		} catch (ParserConfigurationException e) {
			e.printStackTrace();
		}
	    
	}
	
	private void checkFor_VULN_001(Element root) {
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
	
	private void checkFor_VULN_003(Element root) {
		NodeList appNodes = root.getElementsByTagName("data");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:scheme")) {
					this.rc.found_Issue_SchemeChan(this.file, -1);
				}
			}
		}
	}
	
	private void checkFor_VULN_004(Element root) {
		NodeList appNodes = root.getElementsByTagName("intent-filter");
//		for (int i = 0; i < appNodes.getLength(); i++) {
//			this.rc.found_Issue_InterAppCom(this.file, -1);
//		}
		
		// TODO: One entry with parsing below is missed with FB apk...
		
		int count = 0;
		appNodes = root.getElementsByTagName("provider");
		System.out.println("C -> " + appNodes.getLength());
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:exported")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_InterAppCom(this.file, -1);
						count++;
					}
				}
			}
		}
		
		appNodes = root.getElementsByTagName("activity");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:exported")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_InterAppCom(this.file, -1);
						count++;
					}
				}
			}
		}
		
		appNodes = root.getElementsByTagName("receiver");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:exported")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_InterAppCom(this.file, -1);
						count++;
					}
				}
			}
		}
		
		appNodes = root.getElementsByTagName("service");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:exported")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_InterAppCom(this.file, -1);
						count++;
					}
				}
			}
		}
		
		appNodes = root.getElementsByTagName("activity-alias");
		for (int i = 0; i < appNodes.getLength(); i++) {
			Node n = appNodes.item(i);
			NamedNodeMap nnl = n.getAttributes();
			for (int j = 0; j < nnl.getLength(); j++) {
				Node n2 = nnl.item(j);
				if (n2.getNodeName().toLowerCase().equals("android:exported")) {
					if (n2.getNodeValue().toLowerCase().equals("true")) {
						this.rc.found_Issue_InterAppCom(this.file, -1);
						count++;
					}
				}
			}
		}
		
		System.out.println("B -> " + count);
	}
}

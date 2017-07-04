package executor.io;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;

public class ApiMappingsReader {

	private File dataPath;
	private HashMap<String, ArrayList<String>> mappings = new HashMap<String, ArrayList<String>>();
	
	public ApiMappingsReader(File dataPath) {
		this.dataPath = dataPath;
	}
	
	public void preparePermissionListFor(ArrayList<String> manifestPermissions) {
		for (int i = 0; i < manifestPermissions.size(); i++) {
			manifestPermissions.set(i, manifestPermissions.get(i).toLowerCase());
		}
		
		try {	
			FileInputStream fis = new FileInputStream(dataPath);
		    InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		    BufferedReader br = new BufferedReader(isr);

		    ArrayList<String> methodDeclarations = null;
		    String line = "";
		    String permission = "";
		    while ((line = br.readLine()) != null) {
		    	if (line.startsWith("Permission:")) {
		    		if (methodDeclarations != null) {
		    			mappings.put(permission, methodDeclarations);
		    		}
		    		methodDeclarations = new ArrayList<String>();
		    		permission = line.substring(11, line.length());
		    	} else if (line.startsWith("<")) {
		    		if (!manifestPermissions.contains(permission.toLowerCase())) {
		    			continue;
		    		}
		    		line = line.substring(1, line.length() - 1);
		    		
		    		String className = line.substring(0, line.indexOf(':'));
		    		className = this.smaliTypeConversion(className);
		    		
		    		String methodReturnType = line.substring(line.indexOf(':') + 2, line.indexOf(' ', line.indexOf(' ') + 1));
		    		methodReturnType = this.smaliTypeConversion(methodReturnType);
		    		
		    		String methodName = line.substring(line.indexOf(' ', line.indexOf(' ') + 1) + 1, line.indexOf('('));
		    		
		    		String methodParams = line.substring(line.indexOf('(') + 1, line.length() - 1);
		    		String methodParamsConverted = "";
		    		for (String s : methodParams.split(",")) {
		    			methodParamsConverted = methodParamsConverted + this.smaliTypeConversion(s);
		    		}
		    		
		    		// \\ is escape char for regex
		    		String smaliString = className + "->" + methodName + "\\(" + methodParamsConverted + "\\)" + methodReturnType;
		    		methodDeclarations.add(smaliString);
		    	}
		    }
		    
			fis.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("ApiMappingsReader: Successfully read permission mappings from file.");		
	}
	
	private String smaliTypeConversion(String type) {
		if (type.startsWith("void") && !type.contains(".")) {
			type = type.replace("void", "V");
		} else if (type.startsWith("boolean")) {
			type = type.replace("boolean", "Z");
		} else if (type.startsWith("byte")) {
			type = type.replace("byte", "B");
		} else if (type.startsWith("short")) {
			type = type.replace("short", "S");
		} else if (type.startsWith("char")) {
			type = type.replace("char", "C");
		} else if (type.startsWith("int")) {
			type = type.replace("int", "I");
		} else if (type.startsWith("long")) {
			type = type.replace("long", "J");
		} else if (type.startsWith("float")) {
			type = type.replace("float", "F");
		} else if (type.startsWith("double")) {
			type = type.replace("double", "D");
		} 
		
		while (type.contains("[]")) {
			type = type.replace("[]", "");
			type = "\\[" + type;
		}
		
		if (type.contains(".")) {
			type = type.replace('.', '/');
			type = "L" + type + ";";	
		}
		
		return type;
	}
	
	public ArrayList<String> getSearchStrings() {
		ArrayList<String> searchStrings = new ArrayList<String>();
		
		for (Entry<String, ArrayList<String>> e : mappings.entrySet()) {
			for (String s : e.getValue()) {
				searchStrings.add(s);
			}
		}
		
		return searchStrings;
	}
	
	public HashMap<String, ArrayList<String>> getPreparedCleanedList() {
		HashMap<String, ArrayList<String>> mappingsCleaned = new HashMap<String, ArrayList<String>>();
		for (Entry<String, ArrayList<String>> e : this.mappings.entrySet()) {
			ArrayList<String> searchStrings = new ArrayList<String>();
			for (String s : e.getValue()) {
				searchStrings.add(s);
			}
			
			if (!searchStrings.isEmpty()) {
				mappingsCleaned.put(e.getKey(), searchStrings);
			}
		}
		
		return mappingsCleaned;
	}
}

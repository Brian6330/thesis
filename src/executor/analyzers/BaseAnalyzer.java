package executor.analyzers;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.nio.charset.Charset;

import executor.collectors.ResultCollector;

public abstract class BaseAnalyzer {
	
	protected File file;
	protected String escapeChar = "\\";
	protected ResultCollector rc;
	
	public BaseAnalyzer(File file, ResultCollector rc) {
		this.file = file;
		this.rc = rc;
	}
	
	protected abstract void contentAnalysis(BufferedReader br);
	
	public void analyse() {
		try {
			InputStream fis = new FileInputStream(this.file);
		    InputStreamReader isr = new InputStreamReader(fis, Charset.forName("UTF-8"));
		    BufferedReader br = new BufferedReader(isr);
		    
		    contentAnalysis(br);
		    
		    br.close();
		    
		} catch (IOException e) {
			e.printStackTrace();
		}
	}	
}

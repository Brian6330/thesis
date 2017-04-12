package executor.collectors;

import java.io.File;

public class ResultCollector {
	
	private long issue_GetDeviceId = 0;
	private long issue_DbgRelease = 0;
	private File apkUnderAnalysis;
	
	public ResultCollector(File f) {
		this.apkUnderAnalysis = f;
	}
	
	public File getApkUnderAnalysis() {
		return this.apkUnderAnalysis;
	}
	
	public void found_Issue_GetDeviceId(File file, long lineNr) {
		System.out.println("VULN_007_GetDeviceId\t->\t" + file.getName() + ":" + lineNr);
		this.issue_GetDeviceId++;
	}
	
	public String get_Issue_GetDeviceId() {
		return "VULN_007_GetDeviceId = " + this.issue_GetDeviceId;
	}
	
	public void found_Issue_DbgRelease(File file, long lineNr) {
		System.out.println("VULN_001_DbgRelease\t->\t" + file.getName() + ":" + lineNr);
		this.issue_DbgRelease++;
	}
	
	public String get_Issue_DbgRelease() {
		return "VULN_001_DbgRelease = " + this.issue_DbgRelease;
	}
}

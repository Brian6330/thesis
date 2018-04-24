package exporter.data;

public class AnalysisResult {
	
	public String sha256 = "";
	public String sha1 = "";
	public String md5 = "";
	public String dex_date = "";
	public long apk_size = 0;
	public String pkg_name = "";
	public long vercode = 0;
	public long vt_detection = 0;
	public String vt_scan_date = "";
	public long dex_size = 0;
	public String markets = "";
	
	public int vuln_001 = 0;
	public int vuln_002 = 0;
	public int vuln_003 = 0;
	public int vuln_004 = 0;
	public int vuln_005 = 0;
	public int vuln_006 = 0;
	public int vuln_007 = 0;
//	public int vuln_008 = 0;
	public int vuln_009 = 0;
	public int vuln_010 = 0;
	public int vuln_011 = 0;
	public int vuln_012 = 0;
//	public int vuln_013 = 0;
//	public int vuln_014 = 0;
//	public int vuln_015 = 0;
	public int vuln_016 = 0;
//	public int vuln_017 = 0;
	public int vuln_018 = 0;
//	public int vuln_019 = 0;
	public int vuln_020 = 0;
	public int vuln_021 = 0;
	public int vuln_022 = 0;
	public int vuln_023 = 0;
//	public int vuln_024 = 0;
	
	public String starRating = "";
	public String category = "";
	public String lastUpdateDate = "";
	public String creationDate = "";
	public String requiresVersion = "";
	public String numberOfDownloads = "";
	public String currentVersion = "";
	public String contentRating = "";
	public String offeredBy = "";
	public String contactMail = "";
	public String appName = "";
	
	public String targetsVersion = "";
	public String requiresVersionYml = "";
	public String isSharedLibrary = "";
	public String isFrameworkApk = "";
		
	@Override
	public String toString() {
		StringBuilder sb = new StringBuilder();
		sb.append("AnalysisResult: " + "sha256:\t\t" + this.sha256 + "\n");
		sb.append("AnalysisResult: " + "sha1:\t\t" + this.sha1 + "\n");
		sb.append("AnalysisResult: " + "md5:\t\t" + this.md5 + "\n");
		sb.append("AnalysisResult: " + "dex_date:\t" + this.dex_date + "\n");
		sb.append("AnalysisResult: " + "apk_size:\t" + this.apk_size + "\n");
		sb.append("AnalysisResult: " + "pkg_name:\t" + this.pkg_name + "\n");
		sb.append("AnalysisResult: " + "vercode:\t" + this.vercode + "\n");
		sb.append("AnalysisResult: " + "vt_detection:\t" + this.vt_detection + "\n");
		sb.append("AnalysisResult: " + "vt_scan_date:\t" + this.vt_scan_date + "\n");
		sb.append("AnalysisResult: " + "dex_size:\t" + this.dex_size + "\n");
		sb.append("AnalysisResult: " + "markets:\t" + this.markets + "\n");
		
		sb.append("AnalysisResult: " + "vuln_001:\t" + this.vuln_001 + "\n");
		sb.append("AnalysisResult: " + "vuln_002:\t" + this.vuln_002 + "\n");
		sb.append("AnalysisResult: " + "vuln_003:\t" + this.vuln_003 + "\n");
		sb.append("AnalysisResult: " + "vuln_004:\t" + this.vuln_004 + "\n");
		sb.append("AnalysisResult: " + "vuln_005:\t" + this.vuln_005 + "\n");
		sb.append("AnalysisResult: " + "vuln_006:\t" + this.vuln_006 + "\n");
		sb.append("AnalysisResult: " + "vuln_007:\t" + this.vuln_007 + "\n");
		sb.append("AnalysisResult: " + "vuln_009:\t" + this.vuln_009 + "\n");
		sb.append("AnalysisResult: " + "vuln_010:\t" + this.vuln_010 + "\n");
		sb.append("AnalysisResult: " + "vuln_011:\t" + this.vuln_011 + "\n");
		sb.append("AnalysisResult: " + "vuln_012:\t" + this.vuln_012 + "\n");
		sb.append("AnalysisResult: " + "vuln_016:\t" + this.vuln_016 + "\n");
		sb.append("AnalysisResult: " + "vuln_018:\t" + this.vuln_018 + "\n");
		sb.append("AnalysisResult: " + "vuln_020:\t" + this.vuln_020 + "\n");
		sb.append("AnalysisResult: " + "vuln_021:\t" + this.vuln_021 + "\n");
		sb.append("AnalysisResult: " + "vuln_022:\t" + this.vuln_022 + "\n");
		sb.append("AnalysisResult: " + "vuln_023:\t" + this.vuln_023 + "\n");
		
		sb.append("AnalysisResult: " + "starRating:\t" + this.starRating + "\n");
		sb.append("AnalysisResult: " + "category:\t" + this.category + "\n");
		sb.append("AnalysisResult: " + "lastUpdateDate:\t" + this.lastUpdateDate + "\n");
		sb.append("AnalysisResult: " + "creationDate:\t" + this.creationDate + "\n");
		sb.append("AnalysisResult: " + "requiresVersion:\t" + this.requiresVersion + "\n");
		sb.append("AnalysisResult: " + "numberOfDownloads:\t" + this.numberOfDownloads + "\n");
		sb.append("AnalysisResult: " + "currentVersion:\t" + this.currentVersion + "\n");
		sb.append("AnalysisResult: " + "contentRating:\t" + this.contentRating + "\n");
		sb.append("AnalysisResult: " + "offeredBy:\t" + this.offeredBy + "\n");
		sb.append("AnalysisResult: " + "contactMail:\t" + this.contactMail + "\n");
		sb.append("AnalysisResult: " + "appName:\t" + this.appName + "\n");
		
		sb.append("AnalysisResult: " + "targetsVersion:\t" + this.targetsVersion + "\n");
		sb.append("AnalysisResult: " + "requiresVersionYml:\t" + this.requiresVersionYml + "\n");
		sb.append("AnalysisResult: " + "isSharedLibrary:\t" + this.isSharedLibrary + "\n");
		sb.append("AnalysisResult: " + "isFrameworkApk:\t" + this.isFrameworkApk);
		return sb.toString();
	}
}

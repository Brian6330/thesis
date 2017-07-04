package executor.collectors;

import java.io.File;

public class ResultCollector {

	private File apkUnderAnalysis;
	
	private long issue_DbgRelease = 0;
	private long issue_UnnecPerm = 0;
	private long issue_SchemeChan = 0;
	private long issue_InterAppCom = 0;
	private long issue_HeadAttach = 0;
	private long issue_HardwareId = 0;
	private long issue_UntrustEE = 0;
//	private long issue_ExposePers = 0;
	private long issue_ExposeClip = 0;
	private long issue_InsecNetP = 0;
	private long issue_HttpsMisc = 0;
	private long issue_ForgedCer = 0;
//	private long issue_OutdateLib = 0;
//	private long issue_UntrustAPI = 0;
//	private long issue_MisuseCryp = 0;
	private long issue_UnprotSock = 0;
//	private long issue_AdbCapab = 0;
	private long issue_NativeCode = 0;
//	private long issue_DynCodeExt = 0;
	private long issue_DynCodeIns = 0;
	private long issue_CodeInject = 0;
	private long issue_WebViewSB = 0;
	private long issue_UnackInst = 0;
//	private long issue_Piggyback = 0;
	
	private long apkSize = 0;
	private long dexSize = 0;
	private long dexDate = 0;
	
	public ResultCollector(File f) {
		this.apkUnderAnalysis = f;
	}
	
	public File getApkUnderAnalysis() {
		return this.apkUnderAnalysis;
	}
	
	public void found_Issue_DbgRelease(File file, long lineNr) {
		System.out.println("VULN_001_DbgRelease\t->\t" + file.getName() + ":" + lineNr);
		this.issue_DbgRelease++;
	}
	
	public String get_Issue_DbgRelease() {
		return "VULN_001_DbgRelease = " + this.issue_DbgRelease;
	}
	
	public void found_Issue_UnnecPerm(File file, long lineNr) {
		System.out.println("VULN_002_UnnecPerm\t->\t" + file.getName() + ":" + lineNr);
		this.issue_UnnecPerm++;
	}
	
	public void found_Issue_UnnecPerm(File file, long lineNr, String unnecessaryPermission) {
		System.out.println("VULN_002_UnnecPerm\t->\t" + file.getName() + ":" + lineNr + ", " + unnecessaryPermission);
		this.issue_UnnecPerm++;
	}
	
	public String get_Issue_UnnecPerm() {
		return "VULN_002_UnnecPerm = " + this.issue_UnnecPerm;
	}
	
	public void found_Issue_SchemeChan(File file, long lineNr) {
		System.out.println("VULN_003_SchemeChan\t->\t" + file.getName() + ":" + lineNr);
		this.issue_SchemeChan++;
	}
	
	public String get_Issue_SchemeChan() {
		return "VULN_003_SchemeChan = " + this.issue_SchemeChan;
	}
	
	public void found_Issue_InterAppCom(File file, long lineNr) {
		System.out.println("VULN_004_InterAppCom\t->\t" + file.getName() + ":" + lineNr);
		this.issue_InterAppCom++;
	}
	
	public String get_Issue_InterAppCom() {
		return "VULN_004_InterAppCom = " + this.issue_InterAppCom;
	}
	
	public void found_Issue_HeadAttach(File file, long lineNr) {
		System.out.println("VULN_005_HeadAttach\t->\t" + file.getName() + ":" + lineNr);
		this.issue_HeadAttach++;
	}
	
	public String get_Issue_HeadAttach() {
		return "VULN_005_HeadAttach = " + this.issue_HeadAttach;
	}

	public void found_Issue_HardwareId(File file, long lineNr) {
		System.out.println("VULN_006_HardwareId\t->\t" + file.getName() + ":" + lineNr);
		this.issue_HardwareId++;
	}
	
	public String get_Issue_HardwareId() {
		return "VULN_006_HardwareId = " + this.issue_HardwareId;
	}
	
	public void found_Issue_UntrustEE(File file, long lineNr) {
		System.out.println("VULN_007_UntrustEE\t->\t" + file.getName() + ":" + lineNr);
		this.issue_UntrustEE++;
	}
	
	public String get_Issue_UntrustEE() {
		return "VULN_007_UntrustEE = " + this.issue_UntrustEE;
	}
	
	public void found_Issue_ExposeClip(File file, long lineNr) {
		System.out.println("VULN_009_ExposeClip\t->\t" + file.getName() + ":" + lineNr);
		this.issue_ExposeClip++;
	}
	
	public String get_Issue_ExposeClip() {
		return "VULN_009_ExposeClip = " + this.issue_ExposeClip;
	}
	
	public void found_Issue_InsecNetP(File file, long lineNr) {
		System.out.println("VULN_010_InsecNetP\t->\t" + file.getName() + ":" + lineNr);
		this.issue_InsecNetP++;
	}
	
	public String get_Issue_InsecNetP() {
		return "VULN_010_InsecNetP = " + this.issue_InsecNetP;
	}
	
	public void found_Issue_HttpsMisc(File file, long lineNr) {
		System.out.println("VULN_011_HttpsMisc\t->\t" + file.getName() + ":" + lineNr);
		this.issue_HttpsMisc++;
	}
	
	public String get_Issue_HttpsMisc() {
		return "VULN_011_HttpsMisc = " + this.issue_HttpsMisc;
	}
	
	public void found_Issue_ForgedCer(File file, long lineNr) {
		System.out.println("VULN_012_ForgedCer\t->\t" + file.getName() + ":" + lineNr);
		this.issue_ForgedCer++;
	}
	
	public String get_Issue_ForgedCer() {
		return "VULN_012_ForgedCer = " + this.issue_ForgedCer;
	}
	
	public void found_Issue_UnprotSock(File file, long lineNr) {
		System.out.println("VULN_016_UnprotSock\t->\t" + file.getName() + ":" + lineNr);
		this.issue_UnprotSock++;
	}
	
	public String get_Issue_UnprotSock() {
		return "VULN_016_UnprotSock = " + this.issue_UnprotSock;
	}
	
	public void found_Issue_NativeCode(File file, long lineNr) {
		System.out.println("VULN_018_NativeCode\t->\t" + file.getName() + ":" + lineNr);
		this.issue_NativeCode++;
	}
	
	public String get_Issue_NativeCode() {
		return "VULN_018_NativeCode = " + this.issue_NativeCode;
	}
	
	public void found_Issue_DynCodeIns(File file, long lineNr) {
		System.out.println("VULN_020_DynCodeIns\t->\t" + file.getName() + ":" + lineNr);
		this.issue_DynCodeIns++;
	}
	
	public String get_Issue_DynCodeIns() {
		return "VULN_020_DynCodeIns = " + this.issue_DynCodeIns;
	}
	
	public void found_Issue_CodeInject(File file, long lineNr) {
		System.out.println("VULN_021_CodeInject\t->\t" + file.getName() + ":" + lineNr);
		this.issue_CodeInject++;
	}
	
	public String get_Issue_CodeInject() {
		return "VULN_021_CodeInject = " + this.issue_CodeInject;
	}
	
	public void found_Issue_WebViewSB(File file, long lineNr) {
		System.out.println("VULN_022_WebViewSB\t->\t" + file.getName() + ":" + lineNr);
		this.issue_WebViewSB++;
	}
	
	public String get_Issue_WebViewSB() {
		return "VULN_022_WebViewSB = " + this.issue_WebViewSB;
	}
	
	public void found_Issue_UnackInst(File file, long lineNr) {
		System.out.println("VULN_023_UnackInst\t->\t" + file.getName() + ":" + lineNr);
		this.issue_UnackInst++;
	}
	
	public String get_Issue_UnackInst() {
		return "VULN_023_UnackInst = " + this.issue_UnackInst;
	}
	
	public void found_DexDate(long dexDate) {
		System.out.println("Found DexDate\t\t->\t" + dexDate);
		this.dexDate = dexDate;
	}
	
	public String get_DexDate() {
		return "DexDate = " + this.dexDate;
	}
	
	public void found_DexSize(long dexSize) {
		System.out.println("Found DexSize\t\t->\t" + dexSize);
		this.dexSize = dexSize;
	}
	
	public String get_DexSize() {
		return "DexSize = " + this.dexSize;
	}
	
	public void found_ApkSize(long apkSize) {
		System.out.println("Found ApkSize\t\t->\t" + apkSize);
		this.apkSize = apkSize;
	}
	
	public String get_ApkSize() {
		return "ApkSize = " + this.apkSize;
	}
}

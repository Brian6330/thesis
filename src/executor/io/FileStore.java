package executor.io;

import java.io.FileNotFoundException;
import java.io.PrintWriter;

import executor.collectors.ResultCollector;

public class FileStore {
	
	private ResultCollector rc;
	
	public FileStore(ResultCollector rc) {
		this.rc = rc;
	}
	
	public void storeToDisk() {
		String fileName = rc.getApkUnderAnalysis().getName();
		String fileNameStripped = (String) fileName.subSequence(0, fileName.lastIndexOf('.'));
		
		PrintWriter out;

		try {
			out = new PrintWriter("./results/" + fileNameStripped + ".log");
			out.println(this.rc.get_Issue_DbgRelease());	// VULN_001
			// VULN_002_UnnecPerm
			out.println(this.rc.get_Issue_SchemeChan());	// VULN_003
			out.println(this.rc.get_Issue_InterAppCom());	// VULN_004
			out.println(this.rc.get_Issue_HeadAttach());	// VULN_005
			out.println(this.rc.get_Issue_HardwareId());	// VULN_006
			// VULN_007_UntrustEE
			// VULN_008_ExposePers
			out.println(this.rc.get_Issue_ExposeClip());	// VULN_009
			out.println(this.rc.get_Issue_InsecNetP());		// VULN_010
			out.println(this.rc.get_Issue_HttpsMisc());		// VULN_011
			out.println(this.rc.get_Issue_ForgedCer());		// VULN_012
			// VULN_013
			// VULN_014
			// VULN_015
			out.println(this.rc.get_Issue_UnprotSock());	// VULN_016
			// VULN_017
			// VULN_018
			// VULN_019
			// VULN_020
			out.println(this.rc.get_Issue_CodeInject());	// VULN_021
			out.println(this.rc.get_Issue_WebViewSB());		// VULN_022
			// VULN_023
			// VULN_024
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
}

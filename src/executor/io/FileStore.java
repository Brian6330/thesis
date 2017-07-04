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
			out.println(this.rc.get_Issue_UnnecPerm());		// VULN_002
			out.println(this.rc.get_Issue_SchemeChan());	// VULN_003
			out.println(this.rc.get_Issue_InterAppCom());	// VULN_004
			out.println(this.rc.get_Issue_HeadAttach());	// VULN_005
			out.println(this.rc.get_Issue_HardwareId());	// VULN_006
			out.println(this.rc.get_Issue_UntrustEE());		// VULN_007
			// VULN_008_ExposePers
			out.println(this.rc.get_Issue_ExposeClip());	// VULN_009
			out.println(this.rc.get_Issue_InsecNetP());		// VULN_010
			out.println(this.rc.get_Issue_HttpsMisc());		// VULN_011
			out.println(this.rc.get_Issue_ForgedCer());		// VULN_012
			// VULN_013_OutdateLib
			// VULN_014_UntrustAPI
			// VULN_015_MisuseCryp
			out.println(this.rc.get_Issue_UnprotSock());	// VULN_016
			// VULN_017_AdbCapab
			out.println(this.rc.get_Issue_NativeCode());	// VULN_018
			// VULN_019_DynCodeExt
			out.println(this.rc.get_Issue_DynCodeIns());	// VULN_020
			out.println(this.rc.get_Issue_CodeInject());	// VULN_021
			out.println(this.rc.get_Issue_WebViewSB());		// VULN_022
			out.println(this.rc.get_Issue_UnackInst());		// VULN_023
			// VULN_024_Piggyback
			out.println(this.rc.get_ApkSize());		// apk_size
			out.println(this.rc.get_DexSize());		// dex_size
			out.println(this.rc.get_DexDate());		// dex_date (last modified)
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
}

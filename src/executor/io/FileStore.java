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
			out = new PrintWriter(fileNameStripped + ".log");
			out.println(this.rc.get_Issue_DbgRelease());
			// VULN_002_UnnecPerm generated externally
			out.println(this.rc.get_Issue_SchemeChan());
			// VULN_004
			// VULN_005
			// VULN_006
			out.println(this.rc.get_Issue_GetDeviceId());
			out.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
	}
}

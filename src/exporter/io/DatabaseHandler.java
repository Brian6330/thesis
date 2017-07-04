package exporter.io;

import java.io.File;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

import exporter.data.AnalysisResult;

public class DatabaseHandler {
	private Connection conn;

	public DatabaseHandler(String dbName, boolean initDatabase) {
		if (initDatabase) {
			deleteExistingDatabase(dbName);
			connectToDatabase(dbName);
			createDatabaseTables();
		} else {
			connectToDatabase(dbName);
		}
	}
	
	private void connectToDatabase(String fileName) {
		 
        String url = "jdbc:sqlite:" + fileName;
 
        try {
        	this.conn = DriverManager.getConnection(url);
        			
            if (conn != null) {
                DatabaseMetaData meta = conn.getMetaData();
                System.out.println("DatabaseHandler: The driver name is " + meta.getDriverName());
                System.out.println("DatabaseHandler: Connection to database has been established.");
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	private void createDatabaseTables() {
		try {
			String sql = "CREATE TABLE 'result_data' (" + 
						"'sha256' TEXT, " +
						"'sha1' TEXT, " +
						"'md5' TEXT, " + 
						"'dex_date' TEXT, " +
						"'apk_size' INTEGER, " + 
						"'pkg_name' TEXT, " + 
						"'vercode' INTEGER, " + 
						"'vt_detection' INTEGER, " + 
						"'vt_scan_date' TEXT, " + 
						"'dex_size' INTEGER, " +
						"'markets' TEXT, " +
						"'vuln_001_DbgRelease' INTEGER, " +
						"'vuln_002_UnnecPerm' INTEGER, " + 
						"'vuln_003_SchemeChan' INTEGER, " + 
						"'vuln_004_InterAppCom' INTEGER, " +
						"'vuln_005_HeadAttach' INTEGER, " +
						"'vuln_006_HardwareId' INTEGER, " +
						"'vuln_007_UntrustEE' INTEGER, " +
						"'vuln_008_ExposePers' INTEGER, " +
						"'vuln_009_ExposeClip' INTEGER, " +
						"'vuln_010_InsecNetP' INTEGER, " +
						"'vuln_011_HttpsMisc' INTEGER, " +
						"'vuln_012_ForgedCer' INTEGER, " +
						"'vuln_013_OutdateLib' INTEGER, " +
						"'vuln_014_UntrustAPI' INTEGER, " +
						"'vuln_015_MisuseCryp' INTEGER, " +
						"'vuln_016_UnprotSock' INTEGER, " +
						"'vuln_017_AdbCapab' INTEGER, " +
						"'vuln_018_NativeCode' INTEGER, " +
						"'vuln_019_DynCodeExt' INTEGER, " +
						"'vuln_020_DynCodeIns' INTEGER, " +
						"'vuln_021_CodeInject' INTEGER, " +
						"'vuln_022_WebViewSB' INTEGER, " +
						"'vuln_023_UnackInst' INTEGER, " +
						"'vuln_024_Piggyback' INTEGER, " +
						"PRIMARY KEY('sha256', 'md5')" + 
						");";
			Statement stmt;
			stmt = conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println("DatabaseHandler: Tables created successfully.");
	}
	
	private void deleteExistingDatabase(String dbName) {
		File f = new File(dbName);
		
		if (f.exists()) {
			f.delete();
			System.out.println("DatabaseHandler: Deleted old database successfully.");
		}
	}
	
	public void storeUniLuRepoData(AnalysisResult ar) {
		try {
			String sql = "INSERT INTO result_data (" + 
						"sha256, " +
						"sha1, " +
						"md5, " + 
						"dex_date, " +
						"apk_size, " + 
						"pkg_name, " + 
						"vercode, " + 
						"vt_detection, " + 
						"vt_scan_date, " + 
						"dex_size, " +
						"markets) " +
						"VALUES (" +
						"'" + ar.sha256 + "', " +
						"'" + ar.sha1 + "', " +
						"'" + ar.md5 + "', " +
						"'" + ar.dex_date + "', " +
						ar.apk_size + ", " +
						"'" + ar.pkg_name + "', " +
						ar.vercode + ", " +
						ar.vt_detection + ", " +
						"'" + ar.vt_scan_date + "', " +
						ar.dex_size + ", " +
						"'" + ar.markets + "'" + 
						");";

			Statement stmt;
			stmt = this.conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void updateEntry(AnalysisResult ar) {
		try {
			String sql = "UPDATE result_data " + 
						"SET vuln_001_DbgRelease = " + ar.vuln_001 + ", " +
						"vuln_002_UnnecPerm = " + ar.vuln_002 + ", " +
						"vuln_003_SchemeChan = " + ar.vuln_003 + ", " +
						"vuln_004_InterAppCom = " + ar.vuln_004 + ", " +
						"vuln_005_HeadAttach = " + ar.vuln_005 + ", " +
						"vuln_006_HardwareId = " + ar.vuln_006 + ", " +
						"vuln_007_UntrustEE = " + ar.vuln_007 + ", " +
//						"vuln_008_ExposePers = " + ar.vuln_008 + ", " +
						"vuln_009_ExposeClip = " + ar.vuln_009 + ", " +
						"vuln_010_InsecNetP = " + ar.vuln_010 + ", " +
						"vuln_011_HttpsMisc = " + ar.vuln_011 + ", " +
						"vuln_012_ForgedCer = " + ar.vuln_012 + ", " +
//						"vuln_013_OutdateLib = " + ar.vuln_013 + ", " +
//						"vuln_014_UntrustAPI = " + ar.vuln_014 + ", " +
//						"vuln_015_MisuseCryp = " + ar.vuln_015 + ", " +
						"vuln_016_UnprotSock = " + ar.vuln_016 + ", " +
//						"vuln_017_AdbCapab = " + ar.vuln_017 + ", " +
						"vuln_018_NativeCode = " + ar.vuln_018 + ", " +
//						"vuln_019_DynCodeExt = " + ar.vuln_019 + ", " +
						"vuln_020_DynCodeIns = " + ar.vuln_020 + ", " +
						"vuln_021_CodeInject = " + ar.vuln_021 + ", " +
						"vuln_022_WebViewSB = " + ar.vuln_022 + ", " +
						"vuln_023_UnackInst = " + ar.vuln_023 + " " +
//						"vuln_024_Piggyback = " + ar.vuln_024 + " " +
						"WHERE sha256 = '" + ar.sha256 + "';";
			
			Statement stmt;
			stmt = this.conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insertVirusShareEntry(AnalysisResult ar) {
		try {
			String sql = "INSERT INTO result_data (" + 
				"md5, " +	
				"vuln_001_DbgRelease, " +
				"vuln_002_UnnecPerm, " +
				"vuln_003_SchemeChan, " +
				"vuln_004_InterAppCom, " + 
				"vuln_005_HeadAttach, " +
				"vuln_006_HardwareId, " +
				"vuln_007_UntrustEE, " +
//				"vuln_008_ExposePers, " +
				"vuln_009_ExposeClip, " +
				"vuln_010_InsecNetP, " +
				"vuln_011_HttpsMisc, " +
				"vuln_012_ForgedCer, " +
//				"vuln_013_OutdateLib, " +
//				"vuln_014_UntrustAPI, " +
//				"vuln_015_MisuseCryp, " +
				"vuln_016_UnprotSock, " +
//				"vuln_017_AdbCapab, " +
				"vuln_018_NativeCode, " +
//				"vuln_019_DynCodeExt, " +
				"vuln_020_DynCodeIns, " +
				"vuln_021_CodeInject, " +
				"vuln_022_WebViewSB, " +
				"vuln_023_UnackInst) " +
//				"vuln_024_Piggyback) " +
				"VALUES (" +
				"'" + ar.md5 + "', " +
				ar.vuln_001 + ", " +
				ar.vuln_002 + ", " +
				ar.vuln_003 + ", " +
				ar.vuln_004 + ", " +
				ar.vuln_005 + ", " +
				ar.vuln_006 + ", " +
				ar.vuln_007 + ", " +
//				ar.vuln_008 + ", " +
				ar.vuln_009 + ", " +
				ar.vuln_010 + ", " +
				ar.vuln_011 + ", " +
				ar.vuln_012 + ", " +
//				ar.vuln_013 + ", " +
//				ar.vuln_014 + ", " +
//				ar.vuln_015 + ", " +
				ar.vuln_016 + ", " +
//				ar.vuln_017 + ", " +
				ar.vuln_018 + ", " +
//				ar.vuln_019 + ", " +
				ar.vuln_020 + ", " +
				ar.vuln_021 + ", " +
				ar.vuln_022 + ", " +
				ar.vuln_023 + ");";
//				ar.vuln_024 + ");";
			Statement stmt;
			stmt = this.conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * ==================================================================
	 *	IMPORTANT: needs previous manual column insertion into table !
	 * ==================================================================
	 */
	public void updatePlayStoreResults(AnalysisResult ar) {
		try {
			String sql = "UPDATE result_data " + 
						"SET starRating = '" + ar.starRating + "', " +
						"category = '" + ar.category + "', " +
						"lastUpdateDate = '" + ar.lastUpdateDate + "', " +
						"requiresVersion = '" + ar.requiresVersion + "', " +
						"numberOfDownloads = '" + ar.numberOfDownloads + "', " +
						"currentVersion = '" + ar.currentVersion + "', " +
						"contentRating = '" + ar.contentRating + "', " +
						"offeredBy = '" + ar.offeredBy + "', " +
						"contactMail = '" + ar.contactMail + "', " +
						"appName = '" + ar.appName + "' " +
						"WHERE pkg_name = '" + ar.pkg_name + "';";
			
			Statement stmt;
			stmt = this.conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	public void updateVirusShareEntry(AnalysisResult ar) {
		try {
			String sql = "UPDATE result_data " + 
				"SET vuln_001_DbgRelease = " + ar.vuln_001 + ", " +
				"vuln_002_UnnecPerm = " + ar.vuln_002 + ", " +
				"vuln_003_SchemeChan = " + ar.vuln_003 + ", " +
				"vuln_004_InterAppCom = " + ar.vuln_004 + ", " +
				"vuln_005_HeadAttach = " + ar.vuln_005 + ", " +
				"vuln_006_HardwareId = " + ar.vuln_006 + ", " +
				"vuln_007_UntrustEE = " + ar.vuln_007 + ", " +
//				"vuln_008_ExposePers = " + ar.vuln_008 + ", " +
				"vuln_009_ExposeClip = " + ar.vuln_009 + ", " +
				"vuln_010_InsecNetP = " + ar.vuln_010 + ", " +
				"vuln_011_HttpsMisc = " + ar.vuln_011 + ", " +
				"vuln_012_ForgedCer = " + ar.vuln_012 + ", " +
//				"vuln_013_OutdateLib = " + ar.vuln_013 + ", " +
//				"vuln_014_UntrustAPI = " + ar.vuln_014 + ", " +
//				"vuln_015_MisuseCryp = " + ar.vuln_015 + ", " +
				"vuln_016_UnprotSock = " + ar.vuln_016 + ", " +
//				"vuln_017_AdbCapab = " + ar.vuln_017 + ", " +
				"vuln_018_NativeCode = " + ar.vuln_018 + ", " +
//				"vuln_019_DynCodeExt = " + ar.vuln_019 + ", " +
				"vuln_020_DynCodeIns = " + ar.vuln_020 + ", " +
				"vuln_021_CodeInject = " + ar.vuln_021 + ", " +
				"vuln_022_WebViewSB = " + ar.vuln_022 + ", " +
				"vuln_023_UnackInst = " + ar.vuln_023 + " " +
//				"vuln_024_Piggyback = " + ar.vuln_024 + " " +
				"WHERE " +
				"md5 = '" + ar.md5 + "';";
			Statement stmt;
			stmt = this.conn.createStatement();
			stmt.execute(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	
	/**
	 * ==================================================================
	 *	IMPORTANT: needs previous manual column insertion into table !
	 * ==================================================================
	 */
	public void updateVirusShareMetaEntry(AnalysisResult ar) {
		try {
			String sql = "";
			
			if (ar.isSharedLibrary.equals("")) { // xml file was processed
				sql = "UPDATE result_data " + 
						"SET pkg_name = '" + ar.pkg_name + "' " +
						"WHERE " +
						"md5 = '" + ar.md5 + "' AND sha1 is null;";

			} else { // yml file was processed
				sql = "UPDATE result_data " + 
						"SET isFrameworkApk = '" + ar.isFrameworkApk + "', " +
						"requiresVersionYml = '" + ar.requiresVersionYml + "', " +
						"vercode = " + ar.vercode + ", " +
						"currentVersion = '" + ar.currentVersion + "', " +
						"targetsVersion = '" + ar.targetsVersion + "', " +
						"isSharedLibrary = '" + ar.isSharedLibrary + "' " +
						"WHERE " +
						"md5 = '" + ar.md5 + "' AND sha1 is null;";
			}
			
			Statement stmt = this.conn.createStatement();
			stmt.execute(sql);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * ==================================================================
	 *	IMPORTANT: needs previous manual column insertion into table !
	 * ==================================================================
	 */
	public void updateUniLuMetaEntry(AnalysisResult ar) {
		try {
			String sql = "";
			
			if (ar.pkg_name.equals("")) { // yml file was processed
				sql = "UPDATE result_data " + 
						"SET isFrameworkApk = '" + ar.isFrameworkApk + "', " +
						"targetsVersion = '" + ar.targetsVersion + "', " +
						"requiresVersionYml = '" + ar.requiresVersionYml + "', " +
						"isSharedLibrary = '" + ar.isSharedLibrary + "' " +
						"WHERE " +
						"sha256 = '" + ar.sha256 + "';";
				Statement stmt = this.conn.createStatement();
				stmt.execute(sql);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}

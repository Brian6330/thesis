package analyzer;

import java.io.BufferedReader;
import java.io.File;

import executor.ResultCollector;

public class ManifestAnalyzer extends BaseAnalyzer {

	public ManifestAnalyzer(File file, ResultCollector rc) {
		super(file, rc);
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		
	}
}

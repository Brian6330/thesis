package analyzer;

import java.io.BufferedReader;
import java.io.File;

import executor.ResultCollector;

public class MetaInfoAnalyzer extends BaseAnalyzer {

	public MetaInfoAnalyzer(File file, ResultCollector rc) {
		super(file, rc);
	}

	@Override
	protected void contentAnalysis(BufferedReader br) {
		
	}
}

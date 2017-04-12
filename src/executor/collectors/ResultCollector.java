package executor;

public class ResultCollector {
	
	private double issueGetDeviceId = 0;
	
	public void foundIssueGetDeviceId() {
		this.issueGetDeviceId++;
	}
	
	public double getIssueGetDeviceId() {
		return this.issueGetDeviceId;
	}
}

package admin.beans;

public class Admin_Bean {

	private int adminId;
	private String adminName;
	private String adminUsername;
	private String adminPassword;

	public Admin_Bean() {

	}

	public Admin_Bean(int adminId, String adminName, String adminUsername, String adminPassword) {
		this.adminId = adminId;
		this.adminName = adminName;
		this.adminUsername = adminUsername;
		this.adminPassword = adminPassword;
	}

	@Override
	public String toString() {
		return "Admin_Bean [adminId=" + adminId + ", adminName=" + adminName + ", adminUsername=" + adminUsername
				+ ", adminPassword=" + adminPassword + "]";
	}

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminName() {
		return adminName;
	}

	public void setAdminName(String adminName) {
		this.adminName = adminName;
	}

	public String getAdminUsername() {
		return adminUsername;
	}

	public void setAdminUsername(String adminUsername) {
		this.adminUsername = adminUsername;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}

}

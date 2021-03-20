package study.java.mvmanagement.model;

public class Actor {
	int acode;
	String birthdate;
	String name;
	String gender;
	String birthplace;
	int height;
	int weight;
	String blood_type;
	String role;
	int mcode;
	public int getAcode() {
		return acode;
	}
	public void setAcode(int acode) {
		this.acode = acode;
	}
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getBirthplace() {
		return birthplace;
	}
	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public int getWeight() {
		return weight;
	}
	public void setWeight(int weight) {
		this.weight = weight;
	}
	public String getBlood_type() {
		return blood_type;
	}
	public void setBlood_type(String blood_type) {
		this.blood_type = blood_type;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	@Override
	public String toString() {
		return "Actor [acode=" + acode + ", birthdate=" + birthdate + ", name=" + name + ", gender=" + gender
				+ ", birthplace=" + birthplace + ", height=" + height + ", weight=" + weight + ", blood_type="
				+ blood_type + ", role=" + role + ", mcode=" + mcode + "]";
	}

}

package study.java.mvmanagement.model;

public class Director {
	int dcode;
	String name;
	String gender;
	String birthdate;
	String birthplace;
	String education;
	int mcode;
	public int getDcode() {
		return dcode;
	}
	public void setDcode(int dcode) {
		this.dcode = dcode;
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
	public String getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(String birthdate) {
		this.birthdate = birthdate;
	}
	public String getBirthplace() {
		return birthplace;
	}
	public void setBirthplace(String birthplace) {
		this.birthplace = birthplace;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	@Override
	public String toString() {
		return "Director [dcode=" + dcode + ", name=" + name + ", gender=" + gender + ", birthdate=" + birthdate
				+ ", birthplace=" + birthplace + ", education=" + education + ", mcode=" + mcode + "]";
	}
}

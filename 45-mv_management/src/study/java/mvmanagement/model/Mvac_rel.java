package study.java.mvmanagement.model;

public class Mvac_rel {
	int mcode;
	int acode;
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public int getAcode() {
		return acode;
	}
	public void setAcode(int acode) {
		this.acode = acode;
	}
	@Override
	public String toString() {
		return "Mvac_rel [mcode=" + mcode + ", acode=" + acode + "]";
	}
	
}

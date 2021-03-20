package study.java.mvmanagement.model;

public class Mvdi_rel {
	int mcode;
	int dcode;
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public int getDcode() {
		return dcode;
	}
	public void setDcode(int dcode) {
		this.dcode = dcode;
	}
	@Override
	public String toString() {
		return "Mvdi_rel [mcode=" + mcode + ", dcode=" + dcode + "]";
	}
}

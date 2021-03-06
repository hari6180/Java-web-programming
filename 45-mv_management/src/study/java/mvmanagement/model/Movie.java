package study.java.mvmanagement.model;

public class Movie {
	int mcode;
	String title;
	String made_year;
	String country;
	String running_time;
	String opendate;
	String producer;
	String distributor;
	int dcode;
	int acode;
	public int getMcode() {
		return mcode;
	}
	public void setMcode(int mcode) {
		this.mcode = mcode;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getMade_year() {
		return made_year;
	}
	public void setMade_year(String made_year) {
		this.made_year = made_year;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getRunning_time() {
		return running_time;
	}
	public void setRunning_time(String running_time) {
		this.running_time = running_time;
	}
	public String getOpendate() {
		return opendate;
	}
	public void setOpendate(String opendate) {
		this.opendate = opendate;
	}
	public String getProducer() {
		return producer;
	}
	public void setProducer(String producer) {
		this.producer = producer;
	}
	public String getDistributor() {
		return distributor;
	}
	public void setDistributor(String distributor) {
		this.distributor = distributor;
	}
	public int getDcode() {
		return dcode;
	}
	public void setDcode(int dcode) {
		this.dcode = dcode;
	}
	public int getAcode() {
		return acode;
	}
	public void setAcode(int acode) {
		this.acode = acode;
	}
	@Override
	public String toString() {
		return "Movie [mcode=" + mcode + ", titile=" + title + ", made_year=" + made_year + ", country=" + country
				+ ", running_time=" + running_time + ", opendate=" + opendate + ", producer=" + producer
				+ ", distributor=" + distributor + ", dcode=" + dcode + ", acode=" + acode + "]";
	}
	
	
}

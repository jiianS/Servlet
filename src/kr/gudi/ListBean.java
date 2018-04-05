package kr.gudi;

/*
 * getter /setter
 * (담을 수 있는 클래스 만들기 위한..?)
 * */

public class ListBean {
	String title;
	String contents;
	
	public ListBean(String title,String contents ) {
		// TODO Auto-generated constructor stub
		this.title = title;
		this.contents = contents;					
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	
	@Override
	public String toString() {
		//"ListBean [title=" + title + ", contents=" + contents + "]" 
		// 한번에 출력하기 위함
		return "ListBean [title=" + title + ", contents=" + contents + "]";
	}
	

}

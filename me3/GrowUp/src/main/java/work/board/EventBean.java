package work.board;

import java.io.Serializable;

public class EventBean implements Serializable{
	private String evNo;		//글번호
	private String evTitle;		//제목
	private String evContent;	//내용
	private String evRegId;		//등록자
	private String evModId;		//수정자
	private String evRegDate;	//등록일자
	private String evModDate;	//수정일자
	private String evHit;		//조회수

	public EventBean() {
		super();
	}

	public EventBean(String evNo, String evTitle, String evContent, String evRegId, String evModId, String evRegDate,
			String evModDate, String evHit) {
		super();
		this.evNo = evNo;
		this.evTitle = evTitle;
		this.evContent = evContent;
		this.evRegId = evRegId;
		this.evModId = evModId;
		this.evRegDate = evRegDate;
		this.evModDate = evModDate;
		this.evHit = evHit;
	}

	
	
	

	public String getEvNo() {
		return evNo;
	}

	public void setEvNo(String evNo) {
		this.evNo = evNo;
	}

	public String getEvTitle() {
		return evTitle;
	}

	public void setEvTitle(String evTitle) {
		this.evTitle = evTitle;
	}

	public String getEvContent() {
		return evContent;
	}

	public void setEvContent(String evContent) {
		this.evContent = evContent;
	}

	public String getEvRegId() {
		return evRegId;
	}

	public void setEvRegId(String evRegId) {
		this.evRegId = evRegId;
	}

	public String getEvModId() {
		return evModId;
	}

	public void setEvModId(String evModId) {
		this.evModId = evModId;
	}

	public String getEvRegDate() {
		return evRegDate;
	}

	public void setEvRegDate(String evRegDate) {
		this.evRegDate = evRegDate;
	}

	public String getEvModDate() {
		return evModDate;
	}

	public void setEvModDate(String evModDate) {
		this.evModDate = evModDate;
	}

	public String getEvHit() {
		return evHit;
	}

	public void setEvHit(String evHit) {
		this.evHit = evHit;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("EventBean [eventNo=");
		builder.append(evNo);
		builder.append(", userCode=");
		builder.append(evRegId);
		builder.append(", eventTitle=");
		builder.append(evTitle);
		builder.append(", eventContents=");
		builder.append(evContent);
		builder.append(", eventDate=");
		builder.append(evRegDate);
		builder.append(", eventHits=");
		builder.append(evHit);
		builder.append("]");
		return builder.toString();
	}

}

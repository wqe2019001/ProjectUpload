package work.board;

import java.io.Serializable;

public class InquiryBean implements Serializable{
	private String inqNo; //-- 글번호
	private String inqTitle; //-- 제목
	private String inqContent; //-- 내용
	private String inqPhone; //-- 전화번호
	private String inqEmail; //-- 이메일
	private String inqRegId; //-- 등록자
	private String inqModId; //-- 수정자
	private String inqRegDate; //-- 등록일자
	private String inqModDate; // -- 수정일자
	

	public InquiryBean() {
		super();
	}

	

	public InquiryBean(String inqNo, String inqTitle, String inqContent, String inqPhone, String inqEmail,
			String inqRegId, String inqModId, String inqRegDate, String inqModDate) {
		super();
		this.inqNo = inqNo;
		this.inqTitle = inqTitle;
		this.inqContent = inqContent;
		this.inqPhone = inqPhone;
		this.inqEmail = inqEmail;
		this.inqRegId = inqRegId;
		this.inqModId = inqModId;
		this.inqRegDate = inqRegDate;
		this.inqModDate = inqModDate;
	}



	public String getInqNo() {
		return inqNo;
	}



	public void setInqNo(String inqNo) {
		this.inqNo = inqNo;
	}



	public String getInqTitle() {
		return inqTitle;
	}


	public void setInqTitle(String inqTitle) {
		this.inqTitle = inqTitle;
	}


	public String getInqContent() {
		return inqContent;
	}



	public void setInqContent(String inqContent) {
		this.inqContent = inqContent;
	}



	public String getInqPhone() {
		return inqPhone;
	}


	public void setInqPhone(String inqPhone) {
		this.inqPhone = inqPhone;
	}



	public String getInqEmail() {
		return inqEmail;
	}



	public void setInqEmail(String inqEmail) {
		this.inqEmail = inqEmail;
	}


	public String getInqRegId() {
		return inqRegId;
	}


	public void setInqRegId(String inqRegId) {
		this.inqRegId = inqRegId;
	}

	public String getInqModId() {
		return inqModId;
	}



	public void setInqModId(String inqModId) {
		this.inqModId = inqModId;
	}


	public String getInqRegDate() {
		return inqRegDate;
	}



	public void setInqRegDate(String inqRegDate) {
		this.inqRegDate = inqRegDate;
	}


	public String getInqModDate() {
		return inqModDate;
	}


	public void setInqModDate(String inqModDate) {
		this.inqModDate = inqModDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("InquiryBean [inquiryNo=");
		builder.append(inqNo);
		builder.append(", inquiryTitle=");
		builder.append(inqTitle);
		builder.append(", inquiryPhone=");
		builder.append(inqPhone);
		builder.append(", inquiryEmail=");
		builder.append(inqEmail);
		builder.append(", inquiryRegId=");
		builder.append(inqRegId);
		builder.append(", inquiryModId=");
		builder.append(inqModId);
		builder.append(", inquiryRegDate=");
		builder.append(inqRegDate);
		builder.append(", inquiryModDate=");
		builder.append(inqModDate);
		return builder.toString();
	}
	

	
}

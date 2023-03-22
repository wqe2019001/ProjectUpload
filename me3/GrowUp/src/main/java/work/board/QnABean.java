package work.board;

import java.io.Serializable;

public class QnABean implements Serializable{
	private String qaNo;		//글번호
	private String qaTitle;		//제목
	private String qaContent;	//내용
	private String qaRegId;		//등록자
	private String qaModId;		//수정자
	private String qaRegDate;	//등록일자
	private String qaModDate;	//수정일자
	private String qaHit;		//조회수

	public QnABean() {
		super();
	}

	public QnABean(String qaNo, String qaTitle, String qaContent, String qaRegId, String qaModId, String qaRegDate,
			String qaModDate) {
		super();
		this.qaNo = qaNo;
		this.qaTitle = qaTitle;
		this.qaContent = qaContent;
		this.qaRegId = qaRegId;
		this.qaModId = qaModId;
		this.qaRegDate = qaRegDate;
		this.qaModDate = qaModDate;
	}

	
	
	

	public String getQaNo() {
		return qaNo;
	}

	public void setQaNo(String qaNo) {
		this.qaNo = qaNo;
	}

	public String getQaTitle() {
		return qaTitle;
	}

	public void setQaTitle(String qaTitle) {
		this.qaTitle = qaTitle;
	}

	public String getQaContent() {
		return qaContent;
	}

	public void setQaContent(String qaContent) {
		this.qaContent = qaContent;
	}

	public String getQaRegId() {
		return qaRegId;
	}

	public void setQaRegId(String qaRegId) {
		this.qaRegId = qaRegId;
	}

	public String getQaModId() {
		return qaModId;
	}

	public void setQaModId(String qaModId) {
		this.qaModId = qaModId;
	}

	public String getQaRegDate() {
		return qaRegDate;
	}

	public void setQaRegDate(String qaRegDate) {
		this.qaRegDate = qaRegDate;
	}

	public String getQaModDate() {
		return qaModDate;
	}

	public void setQaModDate(String qaModDate) {
		this.qaModDate = qaModDate;
	}

	public String getQaHit() {
		return qaHit;
	}

	public void setQaHit(String qaHit) {
		this.qaHit = qaHit;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("QnABean [qnaNo=");
		builder.append(qaNo);
		builder.append(", userCode=");
		builder.append(qaRegId);
		builder.append(", qnaTitle=");
		builder.append(qaTitle);
		builder.append(", qnaContents=");
		builder.append(qaContent);
		builder.append(", qnaDate=");
		builder.append(qaRegDate);
		builder.append(", qnaHits=");
		builder.append(qaHit);
		builder.append("]");
		return builder.toString();
	}

	}



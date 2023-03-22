package work.reply;

import java.io.Serializable;

public class CommentBean implements Serializable{
	private String qnaNo;     //제품코드
	private String userCode;     //유저코드
	private int userCommentNo;	 //댓글일련번호
	private String userComment;    //댓글내용
	private String commentDate;    //댓글날짜

	public CommentBean() {
		super();
	}

	public CommentBean(String qnaNo, String userCode, int userCommentNo,
			String userComment, String commentDate) {
		super();
		this.qnaNo = qnaNo;
		this.userCode = userCode;
		this.userCommentNo = userCommentNo;
		this.userComment = userComment;
		this.commentDate = commentDate;
	}


	public String getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(String qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getUserCode() {
		return userCode;
	}

	public void setUserCode(String userCode) {
		this.userCode = userCode;
	}

	public int getUserCommentNo() {
		return userCommentNo;
	}

	public void setUserCommentNo(int userCommentNo) {
		this.userCommentNo = userCommentNo;
	}

	public String getUserComment() {
		return userComment;
	}

	public void setUserComment(String userComment) {
		this.userComment = userComment;
	}

	public String getCommentDate() {
		return commentDate;
	}

	public void setCommentDate(String commentDate) {
		this.commentDate = commentDate;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CommentBean [qnaNo=");
		builder.append(qnaNo);
		builder.append(", userCode=");
		builder.append(userCode);
		builder.append(", userCommentNo=");
		builder.append(userCommentNo);
		builder.append(", userComment=");
		builder.append(userComment);
		builder.append(", commentDate=");
		builder.append(commentDate);
		builder.append("]");
		return builder.toString();
	}
}

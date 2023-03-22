package work.reply;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("commentService")
public class CommentServiceImpl implements CommentService{
	@Autowired
	private CommentDAO commentDAO;

	public List<Map<String, String>> retrieveCommentList(Map<String, String> commentParam){
		return commentDAO.retrieveCommentList(commentParam);
	}

	public Map<String, String> retrieveComment(Map<String, String> commentParam){
		return commentDAO.retrieveComment(commentParam);
	}

	public void createComment(Map<String, String> commentParam){
		commentDAO.createComment(commentParam);
	}

	public void updateComment(Map<String, String> commentParam){
		commentDAO.updateComment(commentParam);
	}

	public void deleteComment(Map<String, String> commentParam){
		commentDAO.deleteComment(commentParam);
	}
}

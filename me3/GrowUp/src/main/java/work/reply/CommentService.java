package work.reply;

import java.util.List;
import java.util.Map;


public interface CommentService {
	public List<Map<String, String>> retrieveCommentList(Map<String, String> commentParam);

	public Map<String, String> retrieveComment(Map<String, String> commentParam);

	public void createComment(Map<String, String> commentParam);

	public void updateComment(Map<String, String> commentParam);
	public void deleteComment(Map<String, String> commentParam);
}

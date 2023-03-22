package work.reply;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class CommentDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> retrieveCommentList(Map<String, String> commentParam){
		return sqlSession.selectList("comment.retrieveCommentList", commentParam);
	}

	public Map<String, String> retrieveComment(Map<String, String> commentParam){
		return sqlSession.selectOne("comment.retrieveComment", commentParam);
	}

	public void createComment(Map<String, String> commentParam){
		sqlSession.insert("comment.createComment", commentParam);
	}

	public void updateComment(Map<String, String> commentParam){
		sqlSession.update("comment.updateComment", commentParam);
	}

	public void deleteComment(Map<String, String> commentParam){
		sqlSession.delete("comment.deleteComment", commentParam);
	}


}

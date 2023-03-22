package work.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class QnADAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> qnaList(Map<String, String> qnaParam){
		return sqlSession.selectList("qna.qnaList", qnaParam);
	}

	public Map<String, String> qnaView(Map<String, String> qnaParam){
		return sqlSession.selectOne("qna.qnaView", qnaParam);
	}

	public String maxQnANo(){
		return sqlSession.selectOne("qna.maxQnANo");
	}

	public void qnaWrite(QnABean qna){
		sqlSession.insert("qna.qnaWrite", qna);
	}
	
	public void qnaModify(QnABean qna){
		sqlSession.update("qna.qnaModify", qna);
	}


	public void deleteQnA(Map<String, String> qnaParam){
		sqlSession.delete("qna.deleteQnA", qnaParam);
	}

	public void deleteQnA2(Map<String, String> qnaParam){
		sqlSession.delete("qna.deleteQnA2", qnaParam);
	}
	public Map<String, String> retrieveQnA(Map<String, String> qnaParam){
		return sqlSession.selectOne("qna.retrieveQnA", qnaParam);
	}
}
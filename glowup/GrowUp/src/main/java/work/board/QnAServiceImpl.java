package work.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service("qnaService")
public class QnAServiceImpl implements QnAService {
	
	@Autowired
	private QnADAO qnaDAO;
	
	public List<Map<String, String>> qnaList(Map<String, String> qnaParam) {
		return qnaDAO.qnaList(qnaParam);
	}
	public Map<String, String> qnaView(Map<String, String> qnaParam) {
		return qnaDAO.qnaView(qnaParam);
	}
	public String maxQnANo() {
		return qnaDAO.maxQnANo();
	}
	public void qnaWrite(QnABean qna) {
		qnaDAO.qnaWrite(qna);	
	}
	public void qnaModify(QnABean qna) {
		qnaDAO.qnaModify(qna);
		
	}
	public void deleteQnA(Map<String, String> qnaParam) {
		qnaDAO.deleteQnA(qnaParam);
		
	}
	public void deleteQnA2(Map<String, String> qnaParam) {
		qnaDAO.deleteQnA2(qnaParam);
		
	}
	
}
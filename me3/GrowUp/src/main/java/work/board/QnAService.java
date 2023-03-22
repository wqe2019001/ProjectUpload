package work.board;

import java.util.List;
import java.util.Map;


public interface QnAService {
	public List<Map<String, String>> qnaList(Map<String, String> qnaParam);

	public Map<String, String> qnaView(Map<String, String> qnaParam);

	public String maxQnANo();

	public void qnaWrite(QnABean qna);

	public void qnaModify(QnABean qna);

	public void deleteQnA(Map<String, String> qnaParam);
	
	public void deleteQnA2(Map<String, String> qnaParam);
	
	public Map<String, String> retrieveQnA(Map<String, String> qnaParam);
}

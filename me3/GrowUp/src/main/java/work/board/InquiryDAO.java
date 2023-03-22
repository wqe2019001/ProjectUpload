package work.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class InquiryDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> inquiryList(Map<String, String> inquiryParam){
		return sqlSession.selectList("inquiry.inquiryList", inquiryParam);
	}

	public Map<String, String> inquiryView(Map<String, String> inquiryParam){
		return sqlSession.selectOne("inquiry.inquiryView", inquiryParam);
	}

	public String maxInquiryNo(){
		return sqlSession.selectOne("inquiry.maxInquiryNo");
	}

	public void inquiryWrite(InquiryBean inquiry){
		sqlSession.insert("inquiry.inquiryWrite", inquiry);
	}
	
	public void inquiryModify(InquiryBean inquiry){
		sqlSession.update("inquiry.inquiryModify", inquiry);
	}

	public void updateInquiryHit(Map<String, String> inquiryParam){
		sqlSession.update("inquiry.updateInquiryHit", inquiryParam);
	}
	


	public void deleteInquiry(Map<String, String> inquiryParam){
		sqlSession.delete("inquiry.deleteInquiry", inquiryParam);
	}

	public void deleteInquiry2(Map<String, String> inquiryParam){
		sqlSession.delete("inquiry.deleteInquiry2", inquiryParam);
	}
}
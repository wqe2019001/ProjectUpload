package work.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;


@Service("inquiryService")
public class InquiryServiceImpl implements InquiryService {
	
	@Resource(name = "inquiryDAO")
	private InquiryDAO inquiryDAO;
	
	public List<Map<String, String>> inquiryList(Map<String, String> inquiryParam) {
		return inquiryDAO.inquiryList(inquiryParam);
	}
	public Map<String, String> inquiryView(Map<String, String> inquiryParam) {
		return inquiryDAO.inquiryView(inquiryParam);
	}
	public String maxInquiryNo() {
		return inquiryDAO.maxInquiryNo();
	}
	public void inquiryWrite(InquiryBean inquiry) {
		inquiryDAO.inquiryWrite(inquiry);	
		
		
	}
	public void inquiryModify(InquiryBean inquiry) {
		inquiryDAO.inquiryModify(inquiry);
		
	}
	public void updateInquiryHit(Map<String, String> inquiryParam) {
		inquiryDAO.updateInquiryHit(inquiryParam);
		
	}
	public void deleteInquiry(Map<String, String> inquiryParam) {
		inquiryDAO.deleteInquiry(inquiryParam);
		
	}
	public void deleteInquiry2(Map<String, String> inquiryParam) {
		inquiryDAO.deleteInquiry2(inquiryParam);
		
	}
	
	

}

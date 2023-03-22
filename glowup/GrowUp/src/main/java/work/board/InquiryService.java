package work.board;

import java.util.List;
import java.util.Map;

public interface InquiryService {
		public List<Map<String, String>> inquiryList(Map<String, String> inquiryParam);

		public Map<String, String> inquiryView(Map<String, String> inquiryParam);

		public String maxInquiryNo();

		public void inquiryWrite(InquiryBean inquiry);

		public void inquiryModify(InquiryBean inquiry);

		public void updateInquiryHit(Map<String, String> inquiryParam);

		public void deleteInquiry(Map<String, String> inquiryParam);
		
		public void deleteInquiry2(Map<String, String> inquiryParam);

}
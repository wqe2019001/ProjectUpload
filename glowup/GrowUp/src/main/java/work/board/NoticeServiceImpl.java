package work.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("noticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource(name = "noticeDAO")
	private NoticeDAO noticeDAO;
	
	public List<Map<String, String>> noticeList(Map<String, String> noticeParam) {
		return noticeDAO.noticeList(noticeParam);
	}

	public Map<String, String> noticeView(Map<String, String> noticeParam) {
		return noticeDAO.noticeView(noticeParam);
	}

	public String maxNoticeNo() {
		return noticeDAO.maxNoticeNo();
	}

	public void noticeWrite(NoticeBean notice) {
		noticeDAO.noticeWrite(notice);		
	}

	public void noticeModify(NoticeBean notice) {
		noticeDAO.noticeModify(notice);
	}

	public void updateNoticeHit(Map<String, String> noticeParam) {
		noticeDAO.updateNoticeHit(noticeParam);
	}

	public void deleteNotice(Map<String, String> noticeParam) {
		noticeDAO.deleteNotice(noticeParam);
	}

	public void deleteNotice2(Map<String, String> noticeParam) {
		noticeDAO.deleteNotice2(noticeParam);
	}

}

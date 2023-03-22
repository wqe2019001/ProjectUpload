package work.board;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class EventDAO {

	@Autowired
	private SqlSessionTemplate sqlSession;

	public List<Map<String, String>> eventList(Map<String, String> eventParam){
		return sqlSession.selectList("event.eventList", eventParam);
	}

	public Map<String, String> eventView(Map<String, String> eventParam){
		return sqlSession.selectOne("event.eventView", eventParam);
	}

	public String maxEventNo(){
		return sqlSession.selectOne("event.maxEventNo");
	}

	public void eventWrite(EventBean event){
		sqlSession.insert("event.eventWrite", event);
	}

	public void eventModify(EventBean event){
		sqlSession.update("event.eventModify", event);
	}

	public void updateEventHits(Map<String, String> eventParam){
		sqlSession.update("event.updateEventHits", eventParam);
	}

	public void deleteEvent(Map<String, String> eventParam){
		sqlSession.delete("event.deleteEvent", eventParam);
	}

	public void deleteEvent2(Map<String, String> eventParam){
		sqlSession.delete("event.deleteEvent2", eventParam);
	}
}

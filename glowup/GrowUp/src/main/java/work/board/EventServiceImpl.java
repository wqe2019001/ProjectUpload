package work.board;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("eventService")
public class EventServiceImpl implements EventService{
	@Resource(name = "eventDAO")
	private EventDAO eventDAO;

	public List<Map<String, String>> eventList(Map<String, String> eventParam){
		return eventDAO.eventList(eventParam);
	}

	public Map<String, String> eventView(Map<String, String> eventParam){
		return eventDAO.eventView(eventParam);
	}

	public String maxEventNo(){
		return eventDAO.maxEventNo();
	}

	public void eventWrite(EventBean event){
		eventDAO.eventWrite(event);
	}

	public void eventModify(EventBean event){
		eventDAO.eventModify(event);
	}

	public void updateEventHits(Map<String, String> eventParam){
		eventDAO.updateEventHits(eventParam);
	}

	public void deleteEvent(Map<String, String> eventParam){
		eventDAO.deleteEvent(eventParam);
	}

	public void deleteEvent2(Map<String, String> eventParam){
		eventDAO.deleteEvent2(eventParam);
	}
}

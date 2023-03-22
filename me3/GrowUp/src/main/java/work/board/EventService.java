package work.board;

import java.util.List;
import java.util.Map;


public interface EventService {
	public List<Map<String, String>> eventList(Map<String, String> eventParam);

	public Map<String, String> eventView(Map<String, String> eventParam);

	public String maxEventNo();

	public void eventWrite(EventBean event);

	public void eventModify(EventBean event);

	public void updateEventHits(Map<String, String> eventParam);

	public void deleteEvent(Map<String, String> eventParam);
	public void deleteEvent2(Map<String, String> eventParam);
}

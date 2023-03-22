package work.board;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import work.user.UserService;

@Controller
public class EventController {
	@Resource(name = "eventService")
	private EventService eventService;

	@Resource(name = "userService")
	private UserService userService;


	@RequestMapping(value="/work/board/eventWrite.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView eventWrite(@ModelAttribute EventBean event, HttpServletRequest request){
		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");

		ModelAndView mv = new ModelAndView();

		String flag = event.getEvTitle(); //BoardBean 존재여부

		if(flag == null){
			mv.setViewName("/board/eventWrite");
		}else if(flag != null){
			//게시글 생성
			event.setEvRegId(userCode);
			eventService.eventWrite(event);

			String maxEventNo = eventService.maxEventNo();

			mv.setViewName("redirect:/work/board/eventView.do?maxEventNo=" + maxEventNo + "&fromCreate=true");
		}

		return mv;
	}
	@RequestMapping(value="/work/board/event.do", method = {RequestMethod.GET, RequestMethod.POST})
	public String goMain(){
//		ModelAndView mv = new ModelAndView();
//
//		mv.setViewName("/intro/index");

		return "redirect:/work/board/eventList.do";
	}

	@RequestMapping(value="/work/board/eventView.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView eventView(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		String eventNo = request.getParameter("maxEventNo");
		String fromRating = request.getParameter("fromRating");
		String fromCreate = request.getParameter("fromCreate");
		String fromReply = request.getParameter("fromReply");

		if(eventNo == null) eventNo = request.getParameter("evNo");

		Map<String, String> eventParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();

		eventParam.put("evNo", eventNo);
		replyParam.put("evNo", eventNo);

		//조회수 증가
		if(!"true".equals(fromRating) && !"true".equals(fromCreate) && !"true".equals(fromReply) ){
			eventService.updateEventHits(eventParam);
		}

		Map<String, String> dsEvent = eventService.eventView(eventParam);


		mv.addObject("dsEvent", dsEvent);

		mv.setViewName("/board/eventView");

		return mv;
	}

	@RequestMapping(value="/work/board/eventList.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView eventList(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> eventParam = new HashMap<String, String>();

		List<Map<String, String>> dsEventList = eventService.eventList(eventParam);

		mv.addObject("dsEventList", dsEventList);
		mv.setViewName("/board/eventList");

		return mv;
	}

	@RequestMapping(value="/work/board/deleteEvent.do", method=RequestMethod.GET)
	public ModelAndView deleteEvent(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		Map<String, String> eventParam = new HashMap<String, String>();
		Map<String, String> replyParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		HttpSession session = request.getSession();

		String userCode = (String)session.getAttribute("userCode");
		String eventNo = request.getParameter("evNo");

		eventParam.put("userCode", userCode);
		eventParam.put("evNo", eventNo);

		replyParam.put("evNo", eventNo);

		markParam.put("evNo", eventNo);

		//글 삭제
		eventService.deleteEvent(eventParam);

		mv.setViewName("redirect:/work/board/eventList.do");

		return mv;
	}

	@RequestMapping(value="/work/board/updateEventRating.do", method=RequestMethod.GET)
	public ModelAndView updateEventRating(HttpServletRequest request){
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		Map<String, String> eventParam = new HashMap<String, String>();
		Map<String, String> markParam = new HashMap<String, String>();

		String userCode = (String)session.getAttribute("userCode");
		String eventNo = request.getParameter("evNo");

		eventParam.put("evNo", eventNo);

		markParam.put("userCode", userCode);
		markParam.put("evNo", eventNo);

		mv.setViewName("redirect:/work/board/eventView.do?boNo=" + eventNo + "&fromRating=true");

		return mv;
	}

	@RequestMapping(value="/work/board/eventModify.do", method = {RequestMethod.GET, RequestMethod.POST})
	public ModelAndView eventModify(HttpServletRequest request, @ModelAttribute EventBean bean){
		Map<String, String> eventParam = new HashMap<String, String>();
		ModelAndView mv = new ModelAndView();
        String eventNo = request.getParameter("evNo"); //없으면 GET(create안함), 있으면 POST(create)

        String flag = bean.getEvTitle();
        eventParam.put("evNo", eventNo);

        Map<String, String> dsEvent = eventService.eventView(eventParam);

		if(flag == null){
			mv.addObject("dsEvent", dsEvent);
			mv.setViewName("/board/eventModify");
		}else{
			eventService.eventModify(bean);
			mv.setViewName("/work/board/eventView.do?boNo=" + eventNo + "&fromUpdate=true");
		}
		return mv;
	}

}

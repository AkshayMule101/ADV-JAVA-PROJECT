package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.TicketB;
import com.cdac.dto.User;
import com.cdac.service.TicketBService;

@Controller
public class TicketBController {
	@Autowired
	private TicketBService ticketBService;
	
	@RequestMapping(value = "/prep_ticketB_add_form.htm",method = RequestMethod.GET)
	public String prepTicketBAddForm(ModelMap map) {
		map.put("ticketB", new TicketB());
		return "ticketB_add_form";
	}
	
	@RequestMapping(value = "/ticketB_add.htm",method = RequestMethod.POST)
	public String ticketBAdd(TicketB ticketB,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		ticketB.setUserId(userId); 
		ticketBService.addTicketB(ticketB);
		return "home";
	}
	
	@RequestMapping(value = "/ticketB_list.htm",method = RequestMethod.GET)
	public String allTicketB(ModelMap map,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<TicketB> li = ticketBService.selectAll(userId);
		map.put("expList", li);
		return "ticketB_list";
	}
	
	@RequestMapping(value = "/ticketB_delete.htm",method = RequestMethod.GET)
	public String ticketBDelete(@RequestParam int ticketBId,ModelMap map,HttpSession session) {
		
		ticketBService.removeTicketB(ticketBId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<TicketB> li = ticketBService.selectAll(userId);
		map.put("expList", li);
		return "ticketB_list";
	}
	
	@RequestMapping(value = "/ticketB_update_form.htm",method = RequestMethod.GET)
	public String ticketBUpdateForm(@RequestParam int ticketBId,ModelMap map) {
		
		TicketB exp = ticketBService.findTicketB(ticketBId);
		map.put("ticketB", exp);
		
		return "ticketB_update_form";
	}
	
	@RequestMapping(value = "/ticketB_update.htm",method = RequestMethod.POST)
	public String ticketBUpdate(TicketB ticketB,ModelMap map,HttpSession session) {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		ticketB.setUserId(userId);
		ticketBService.modifyTicketB(ticketB);
			
		List<TicketB> li = ticketBService.selectAll(userId);
		map.put("expList", li);
		return "ticketB_list";
	}
}

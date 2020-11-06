package com.cdac.service;

import java.util.List;

import com.cdac.dto.TicketB;

public interface TicketBService {
	void addTicketB(TicketB ticketB);
	void removeTicketB(int ticketBId);
	TicketB findTicketB(int ticketBId);
	void modifyTicketB(TicketB ticketB);
	List<TicketB> selectAll(int userId);


}

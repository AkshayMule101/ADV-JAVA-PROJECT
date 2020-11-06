package com.cdac.dao;

import java.util.List;

import com.cdac.dto.TicketB;

public interface TicketBDao {
	void insertTicketB(TicketB ticketB);
	void deleteTicketB(int ticketBId);
	TicketB selectTicketB(int ticketBId);
	void updateTicketB(TicketB ticketB);
	List<TicketB> selectAll(int ticketBId);
}

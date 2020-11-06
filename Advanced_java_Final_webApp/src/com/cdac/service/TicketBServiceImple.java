package com.cdac.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cdac.dao.TicketBDao;
import com.cdac.dto.TicketB;

@Service
public class TicketBServiceImple implements TicketBService {

	@Autowired
	private TicketBDao ticketBDao;

	@Override
	public void addTicketB(TicketB ticketB) {
		ticketBDao.insertTicketB(ticketB);
		
	}

	@Override
	public void removeTicketB(int ticketBId) {
		ticketBDao.deleteTicketB(ticketBId);
		
	}

	@Override
	public TicketB findTicketB(int ticketBId) {
		return ticketBDao.selectTicketB(ticketBId);
	}

	@Override
	public void modifyTicketB(TicketB ticketB) {
		ticketBDao.updateTicketB(ticketB);
		
	}

	@Override
	public List<TicketB> selectAll(int userId) {
		return ticketBDao.selectAll(userId);
	}

}

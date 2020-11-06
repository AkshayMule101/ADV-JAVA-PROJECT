package com.cdac.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate4.HibernateCallback;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.cdac.dto.TicketB;

@Repository
public class TicketBDaoImple implements TicketBDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public void insertTicketB(TicketB ticketB) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.save(ticketB);
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public void deleteTicketB(int ticketBId) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				session.delete(new TicketB(ticketBId));
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
	}

	@Override
	public TicketB selectTicketB(int ticketBId) {
		TicketB ticketB = hibernateTemplate.execute(new HibernateCallback<TicketB>() {

			@Override
			public TicketB doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				TicketB ex = (TicketB)session.get(TicketB.class, ticketBId);
				tr.commit();
				session.flush();
				session.close();
				return ex;
			}
			
		});
		return ticketB;
	}

	@Override
	public void updateTicketB(TicketB ticketB) {
		hibernateTemplate.execute(new HibernateCallback<Void>() {

			@Override
			public Void doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				
//				TicketB ex = (TicketB)session.get(TicketB.class, ticketB.getTicketBId());
//				ex.setItemName(ticketB.getItemName());
//				ex.setPrice(ticketB.getPrice());
//				ex.setPurchaseDate(ticketB.getPurchaseDate()); 
				
				session.update(ticketB);
				
				tr.commit();
				session.flush();
				session.close();
				return null;
			}
			
		});
		
	}

	@Override
	public List<TicketB> selectAll(int userId) {
		List<TicketB> expList = hibernateTemplate.execute(new HibernateCallback<List<TicketB>>() {

			@Override
			public List<TicketB> doInHibernate(Session session) throws HibernateException {
				Transaction tr = session.beginTransaction();
				System.out.println(userId);
				Query q = session.createQuery("from TicketB where userId = ?");
				q.setInteger(0, userId);
				List<TicketB> li = q.list();
				System.out.println(li); 
				tr.commit();
				session.flush();
				session.close();
				return li;
			}
			
		});
		return expList;
	}
}

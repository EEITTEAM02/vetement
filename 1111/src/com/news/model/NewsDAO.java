package com.news.model;

import org.hibernate.*;
import hibernate.util.HibernateUtil;
import java.util.*;

public class NewsDAO implements NewsDAO_interface {

	private static final String GET_ALL_STMT = "from NewsVO order by newsno";
	
	@Override
	public void insert(NewsVO newsVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(newsVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
	}

	@Override
	public void update(NewsVO newsVO) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			session.saveOrUpdate(newsVO);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}

	@Override
	public void delete(Integer newsno) {
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();

			NewsVO newsVO = new NewsVO();
			newsVO.setNewsno(newsno);
			session.delete(newsVO);

			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		
	}
	@Override
	public NewsVO findByPrimaryKey(Integer newsno) {
		NewsVO newsVO = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			newsVO = (NewsVO) session.get(NewsVO.class, newsno);
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return newsVO;
	}

	@Override
	public List<NewsVO> getAll() {
		List<NewsVO> list = null;
		Session session = HibernateUtil.getSessionFactory().getCurrentSession();
		try {
			session.beginTransaction();
			Query query = session.createQuery(GET_ALL_STMT);
			list = query.list();
			session.getTransaction().commit();
		} catch (RuntimeException ex) {
			session.getTransaction().rollback();
			throw ex;
		}
		return list;
	}
	
//	public static void main(String[] args) {
//
//		NewsDAO dao = new NewsDAO();
//	
//		List<NewsVO> list = dao.getAll();
//		for (NewsVO anews : list) {
//			System.out.print(anews.getNewsno() + ",");
//			System.out.print(anews.getTitle() + ",");
//			System.out.print(anews.getContent() + ",");
//			System.out.print(anews.getPubdate() + ",");
//			System.out.println();
//		}
//	}
	
	
	
}

package com.news.model;

import java.util.List;

public class NewsService {
	
	private NewsDAO_interface dao;

	public NewsService() {
		dao = new NewsDAO();
	}

	public NewsVO addNews(String title, String content, 
			java.sql.Date pubdate) {

		NewsVO newsVO = new NewsVO();

		newsVO.setTitle(title);
		newsVO.setContent(content);
		newsVO.setPubdate(pubdate);

		dao.insert(newsVO);

		return newsVO;
	}

	//預留給 Struts 2 用的
	public void addNews(NewsVO newsVO) {
		dao.insert(newsVO);
	}
	
	public NewsVO updateNews(Integer newsno, String title, String content,
			java.sql.Date pubdate) {

		NewsVO newsVO = new NewsVO();

		newsVO.setNewsno(newsno);
		newsVO.setTitle(title);
		newsVO.setContent(content);
		newsVO.setPubdate(pubdate);
		dao.update(newsVO);

		return dao.findByPrimaryKey(newsno);
	}
	
	//預留給 Struts 2 用的
	public void updateNews(NewsVO newsVO) {
		dao.update(newsVO);
	}

	public void deleteNews(Integer newsno) {
		dao.delete(newsno);
	}

	public NewsVO getOneNews(Integer newsno) {
		return dao.findByPrimaryKey(newsno);
	}

	public List<NewsVO> getAll() {
		return dao.getAll();
	}
}

package com.news.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONValue;

import com.news.model.NewsService;
import com.news.model.NewsVO;

public class NewsServlet extends HttpServlet{

	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}

	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setHeader("Access-Control-Allow-Origin", "*");
		res.setHeader("content-type", "text/html;charset=UTF-8");
		res.setCharacterEncoding("UTF-8");

		PrintWriter out = res.getWriter();
		NewsService newsSvc = new NewsService();
		
		//selete
		String s1 = req.getParameter("newsno");
		
		System.out.println(s1);
		NewsVO newsVO = newsSvc.getOneNews(Integer.parseInt(s1));
		req.setAttribute("newsVO", newsVO); 
		List  l1 = new LinkedList();
		
			 Map m1 = new HashMap();       
			 m1.put("Newsno",newsVO.getNewsno());   
			 m1.put("Title", newsVO.getTitle()); 
			 m1.put("Content",newsVO.getContent()); 
			 m1.put("Pubdate", newsVO.getPubdate());
			 l1.add(m1);
		
		String jsonString = JSONValue.toJSONString(l1);
		System.out.println(jsonString);
		
		out.println(jsonString);
		

		//delete
		Integer newsno = new Integer(req.getParameter("deleteno"));
		System.out.println(newsno);
		
		newsSvc.deleteNews(newsno);
		
		String url = "/news/back_page.jsp";
		RequestDispatcher successView = req.getRequestDispatcher(url);// 刪除成功後,轉交回送出刪除的來源網頁
		successView.forward(req, res);
		
		
		
		
		
		
	}
}

package com.news.model;

import java.util.*;

public interface NewsDAO_interface {
	public void insert(NewsVO NewsVO);
	public void update(NewsVO NewsVO);
	public void delete(Integer newsno);
	public NewsVO findByPrimaryKey(Integer newsno);
	public List<NewsVO> getAll();
}

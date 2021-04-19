package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface CommentDAO {
	void add(Comment comment);
	List<Comment> selectProduct(@Param("productid") int productid);
	void delete(int id);
}

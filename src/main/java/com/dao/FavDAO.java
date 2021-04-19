package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface FavDAO {
	List<Fav> selectMyProduct(@Param("memberid") int memberid, @Param("productid") int productid);
	void add(Fav fav);
	List<Fav> selectAll(@Param("memberid") int memberid);
	void delete(int id);
}

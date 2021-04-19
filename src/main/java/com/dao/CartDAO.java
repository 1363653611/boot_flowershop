package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface CartDAO {
	List<Cart> selectAll();
	List<Cart> selectMyProduct(@Param("memberid") int memberid, @Param("productid") int productid);
	void add(Cart cart);
	void update(Cart cart);
	List<Cart> selectMyProductList(int memberid);
	void delCart(int id);
	void updateNum(Cart cart);
}

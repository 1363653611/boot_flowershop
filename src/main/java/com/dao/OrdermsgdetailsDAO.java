package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface OrdermsgdetailsDAO {
	void add(Ordermsgdetails ordermsgdetails);
	List<Ordermsgdetails> selectorderDetails(String orderno);
	void delete(int id);
	List<Ordermsgdetails> selectOne(@Param("productid") int productid, @Param("memberid") int memberid);
	List<Ordermsgdetails> selectSale(int prodcutid);
}

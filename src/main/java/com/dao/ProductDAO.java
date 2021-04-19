package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface ProductDAO {
	List<Product> selectAll(HashMap map);
	void add(Product ct);
	Product findById(int id);
	void update(Product product);
	void delete(int id);
	List<Product> search(@Param("key") String key, @Param("key1") String key1);
	List<Product> selectCorrelation(@Param("id") int id,@Param("categoryid") String categoryid);
	List<Product> selectCategory(int categoryid);
	List<Product> selectProductname(String productname);
    void updateVote(Product product);
    List<Product> selectVote();
    void updateLooknum(Product product);
    List<Product> selectProductAll(HashMap map);
    void updateIsxs(Product product);
}

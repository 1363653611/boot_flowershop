package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface InventoryDAO {
	List<Inventory> selectInventory(@Param("id") int id);
	void add(Inventory inventory);
}

package com.dao;
import com.entity.*;
import org.apache.ibatis.annotations.Param;

import java.util.*;
public interface MemberDAO {
	List<Member> selectOne(@Param("uname") String uname, @Param("upass") String upass);
	void add(Member member);
	List<Member> checkUname(String uname);
	Member findById(int id);
	void update(Member member);
	List<Member> selectAll();
	List<Member> selectMember(String key);
	void delete(int id);
	void updateLev(Member member);
}

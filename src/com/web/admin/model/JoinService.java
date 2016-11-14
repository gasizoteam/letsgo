package com.web.admin.model;

import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class JoinService {

	@Autowired
	SqlSessionFactory factory;

	public boolean register(HashMap map) {
			boolean can = false;
			SqlSession sql = factory.openSession();
			int r = sql.insert("user.insertHash" , map);
			sql.close();
			if(r==1){
				can = true;
			}
			return can;
	}

}
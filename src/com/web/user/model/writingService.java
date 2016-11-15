package com.web.user.model;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class writingService {
	@Autowired
	SqlSessionFactory fac;
	
	public boolean writingDB(Map map){
		SqlSession sql=fac.openSession();
		int r=sql.insert("write.upload",map);
		sql.close();
		if(r>0){
			return true;
		}else{
			return false;
		}
	}
}

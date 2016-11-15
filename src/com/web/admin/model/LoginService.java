package com.web.admin.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component("ls")
public class LoginService {

	@Autowired
	SqlSessionFactory fac;

	public int existCheck(String userid, String userpass) {
		SqlSession sql = fac.openSession();
		HashMap<String, String> map = new HashMap<>();
		map.put("userid", userid);
		map.put("userpass", userpass);
		List<HashMap> rst = sql.selectList("user.findIdPass", map);
		sql.close();
		return rst.size();
	}

	// 비밀번호 수정
	public boolean editPass(Map map) {
		SqlSession sql = fac.openSession();
		int rst = sql.update("user.updatepass", map);
		if (rst == 1)
			return true;
		else
			return false;
	}

	// 개인정보 수정
	public boolean ediUser(Map map) {
		SqlSession sql = fac.openSession();
		int rst = sql.update("updateUserMap", map);
		if (rst == 1)
			return true;
		else
			return false;
	}

}

package com.web.admin.model;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	
	
}

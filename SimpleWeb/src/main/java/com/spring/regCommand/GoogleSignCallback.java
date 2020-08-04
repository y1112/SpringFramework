package com.spring.regCommand;

import java.net.URI;
import java.net.http.HttpHeaders;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpEntity;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.client.RestTemplate;

import com.spring.regDAO.regDAO;

public class GoogleSignCallback {

	public String service(Model model) {
		Map<String, Object> map = model.asMap();
		HttpServletRequest request = (HttpServletRequest) map.get("request");
		String code = request.getParameter("code");
		String client_id = request.getParameter("client_id");
		String client_secret = request.getParameter("client_secret");
		String redirect_uri = request.getParameter("redirect_uri");
		String grant_type = request.getParameter("grant_type");
		System.out.println("code:" + code);
		System.out.println("client_id:" + client_id);
		System.out.println("client_secret:" + client_secret);
		System.out.println("redirect_uri:" + redirect_uri);
		System.out.println("grant_type:" + grant_type);
		
		
		return code;

//		regDAO dao = new regDAO();
//		dao.loginOk(email, password);

	}

}

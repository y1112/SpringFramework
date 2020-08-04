package com.spring.fileup;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
	
	@Autowired//객체 생성할 필요 없음
	private Upload upload;//Upload 클래스 멤버로 처리
	
	@RequestMapping(value = "/fileUpload", method = RequestMethod.POST)
	public ModelAndView fileUpload(MultipartHttpServletRequest mRequest) {
		ModelAndView mav=new ModelAndView();
		
//		upload=new Upload();//DAO 처럼 service 객체 역할
		if(upload.fileUpload(mRequest)) {
			mav.addObject("result","파일 업로드 성공");
		}else {
			mav.addObject("result","파일 업로드 실패");
		}
		mav.setViewName("uploadResult");
		
		return mav;
	}
	
	@RequestMapping(value="/fileUpload",method=RequestMethod.GET)//method 방식에 따라 처리되는 로직 달라짐
	public ModelAndView uploadForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("file_submit");
		
		return mav;
	}
}

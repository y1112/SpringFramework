package com.spring.fileup;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

@Service//@Autowired 해서 사용하려면 비즈니스 로직에 해당하는 @Service여야 함, 클래스 앞에 사용 가능
public class Upload {
	public  boolean fileUpload(MultipartHttpServletRequest mRequest) {
		boolean isUpload=false;
		
		String uploadPath="/Users/won-yungyeong/SpringFramework/fileUpload/uploadFile/";
		
		Iterator<String> iterator=mRequest.getFileNames();//여러 개의 파일 받을 수 있음
		while(iterator.hasNext()) {
			String uploadFileName=iterator.next();
			
			MultipartFile mFile=mRequest.getFile(uploadFileName);//mFile(임시 파일)에 실제 파일 받아옴
			String originFileName=mFile.getOriginalFilename();//실제 파일명(임시 저장)
			String saveFileName=originFileName;//중복된 파일 없앰
			
			if(saveFileName!=null && !saveFileName.equals("")) {
				if(new File(uploadPath+saveFileName).exists()) {
					saveFileName=saveFileName+"_"+System.currentTimeMillis();//파일명 중복 방지
				}//if
				
				//파일을 실제 물리적인 공간에 저장
				try {
					mFile.transferTo(new File(uploadPath+saveFileName));
					isUpload=true;
				}catch(IllegalStateException e) {
					e.printStackTrace();
					isUpload=false;
				}catch (IOException e2) {
					e2.printStackTrace();
					isUpload=false;
				}
				
			}//if
		}
		
		return isUpload;
	}//fileUpload()
}

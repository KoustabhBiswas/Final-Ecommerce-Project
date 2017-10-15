package com.ecommerce2.ecommercebackend.FileUpload;
import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.multipart.MultipartFile;
public class UploadFile {
	private static final String ABS_PATH= "C:\\Users\\Koustabh\\project\\ecommerce1\\src\\main\\webapp\\resources\\images\\";
	private static String REAL_PATH="";
	
	private static final Logger logger = LoggerFactory.getLogger(UploadFile.class);
	
	public static void uploadFile(HttpServletRequest request, MultipartFile file) {
		
		REAL_PATH= request.getSession().getServletContext().getRealPath("/resources/images/");
		logger.info(REAL_PATH);
		logger.info(ABS_PATH);
		
		if(!new File(ABS_PATH).exists()){
			new File(ABS_PATH).mkdirs();
		}
		
		if(!new File(REAL_PATH).exists()){
			new File(REAL_PATH).mkdirs();
		}
		
		try{
			//server upload
			file.transferTo(new File(REAL_PATH + file.getOriginalFilename()));
			//project directory upload
			file.transferTo(new File(ABS_PATH + file.getOriginalFilename()));
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
}

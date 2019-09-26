package com.lavish.springdemo.controller;
import java.util.List;

import javax.servlet.http.HttpServletRequest;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.lavish.springdemo.dao.FileUploadDAO;
import com.lavish.springdemo.entity.UploadFile;

@Controller
@RequestMapping("/fileupload")
public class HomeController {
	
	@Autowired
	private FileUploadDAO fileUploadDao;

	@RequestMapping(value = "/file", method = RequestMethod.GET)
	public String showUploadForm(HttpServletRequest request) {
		return "Upload";
	}
	
	@RequestMapping("/img")
	public String img(Model theModel)
	{
		List<UploadFile> theImg=fileUploadDao.getImgs();
		theModel.addAttribute("img",theImg);
		return "imglist";
	}
	
    @RequestMapping(value = "/doUpload", method = RequestMethod.POST)
    public String handleFileUpload(HttpServletRequest request,
            @RequestParam CommonsMultipartFile[] fileUpload) throws Exception {
         
        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload){
                 
                System.out.println("Saving file: " + aFile.getOriginalFilename());
                
                UploadFile uploadFile = new UploadFile();
                uploadFile.setFileName(aFile.getOriginalFilename());
                uploadFile.setData(aFile.getBytes());
                fileUploadDao.save(uploadFile);                
            }
        }
 
        return "Success";
    }	
}




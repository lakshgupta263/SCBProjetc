package com.scb.controller;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpSession;
import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.StringJoiner;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.scb.bean.MyBeans;
import com.scb.services.MyService;



@Controller
public class MyController {
	
	@Autowired
	private MyService myService;
	
	private static String UPLOADED_FOLDER = "C://Users//IBM//Desktop//LuxProject//jas//WebContent//";  // hardcode the path for your project file
	 @GetMapping("/")
	    public String index() {
	        return "upload";
	    }
	 
	    @PostMapping("/upload") 
	    public String singleFileUpload(@RequestParam("file") MultipartFile file,
	                                   RedirectAttributes redirectAttributes,  MyBeans mb) {

	        if (file.isEmpty()) {
	            redirectAttributes.addFlashAttribute("message", "Please select a file to upload");
	            return "redirect:uploadStatus";
	            }
	        try {

	            // Get the file and save it somewhere
	           /* byte[] bytes = file.getBytes();
	            Path path = Paths.get(UPLOADED_FOLDER + file.getOriginalFilename());
	            Files.write(path, bytes);*/
	        	
	        	byte[] bytes = file.getBytes();
	            Path path = Paths.get(UPLOADED_FOLDER + "2.pdf");
	            Files.write(path, bytes);

	            redirectAttributes.addFlashAttribute("message", 
	                        "You successfully uploaded the file'" );

	        } catch (IOException e) {
	            e.printStackTrace();
	        }
	    
	       return "redirect:/uploadStatus";


	        }

	    @GetMapping("/uploadStatus")
	    public ModelAndView uploadStatus(MyBeans mb) {
	    	
	    	int res=myService.insert(mb);
	    	return new ModelAndView("LastPage","msg",res);
	    }
	
	
	@RequestMapping("/insert")
	public ModelAndView method2(HttpServletRequest req, MyBeans mb)
	{	
		String des=req.getParameter("des");
		int refe=Integer.parseInt(req.getParameter("refe"));
		String optn=req.getParameter("option");
		String coment=req.getParameter("comment");
		String location=req.getParameter("location");
		int empid=Integer.parseInt(req.getParameter("empid"));
		//String attachments=req.getParameter("attachments");
		String traveltype1=req.getParameter("traveltype1");
		
		String edate=req.getParameter("edate");
		
		String currency=req.getParameter("currency");
		int espent=Integer.parseInt(req.getParameter("espent"));
		
		String etype=req.getParameter("etype");
		
		
		//if(rid==0 || des.equals(null) || refe==0 || option.equals(null) || comment.equals(null) || location.equals(null) || attachments.equals(null) || traveltype1.equals(null) || traveltype2.equals(null) || traveltype3.equals(null) || traveltype4.equals(null) || currency.equals(null) || espent.equals(null) || edate.equals(null) || etype.equals(null)|| currency1.equals(null) || espent1.equals(null) || edate1.equals(null) || etype.equals(null)|| currency1.equals(null) )

		/*if(id=="")
		{
			
			String msg = " ";
			
	 return new ModelAndView("home","msg",msg);
			
			
		}*/
		/*else
		{
		
			mb.setId(id);
			myService.insert(mb);
			return new ModelAndView("expo");
		}*/
		mb.setDes(des);
		mb.setRefe(refe);
		mb.setOptn(optn);
		mb.setComent(coment);
		mb.setLocation(location);
		mb.setEmpid(empid);
		//mb.setAttachments(attachments);
		mb.setTraveltype1(traveltype1);
		
		mb.setEdate(edate);
		
		mb.setCurrency(currency);
		mb.setEspent(espent);
		
		mb.setEtype(etype);
		
		
		int res=myService.insert(mb);
		return new ModelAndView("LastPage","msg",res);

}
	
	@RequestMapping("/delete")
	public ModelAndView method4(HttpServletRequest request,MyBeans mb,HttpSession session)
	{
		mb.setRid(Integer.parseInt(request.getParameter("delid")));
		int n = myService.delete(mb);
		if(n==1)
			{
			//String msg = "Deleted Record with id "+request.getParameter("delid");
			//return new ModelAndView("home","mesg",msg);
			return new ModelAndView("SecondPage");
			}
		else
		{
			//String msg = "Enter Valid ID to delete";
			return new ModelAndView("index");
		}
	}
	@RequestMapping("/search")
    public ModelAndView method6(HttpServletRequest request,MyBeans mb,HttpSession session)
    {
        //String opt = request.getParameter("rid");
        
            mb.setRid(Integer.parseInt(request.getParameter("ser")));
            List<MyBeans> l = myService.searchId(mb);
            session = request.getSession();
            session.setAttribute("list", l);
            if(l.size() >=1)
            return new ModelAndView("view");
            else
                return new ModelAndView("index");
        }
	@RequestMapping("/fetch")
	public ModelAndView method7(HttpServletRequest request,MyBeans mb,HttpSession session)
	{
	/*	String img=UPLOADED_FOLDER+"2.jpg";
		img=img.replace("//","\\");
	       System.out.print(img);*/
	      // String img="C:/Users/IBM/Documents/project -copy/jas/WebContent/resources/uploads/2.pdf";
	       String img="2.pdf";
			return new ModelAndView("show","res",img);	
	}
}
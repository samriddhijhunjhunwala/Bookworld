package bookstore;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

import bookstore.StudentService;
import daoimplementation.Productdaoimp;
import model.Productlist;
import model.Student;
import model.User;


@Controller
public class Bookcontroller {

	
	@RequestMapping(value={"/","index"})
	public String loadIndexPage()
	{
		return "index";
	}
	
	@RequestMapping("/aboutus")
	public String loadAboutusPage()
	{
		return "aboutus";
	}
	@RequestMapping("/contactus")
	public String loadContactusPage()
	{
		return "contactus";
	}
	
/*	@RequestMapping("/register")
	public String loadRegisterPage()
	{
		return "register";
	}*/
	/*@RequestMapping("/books")
	public ModelAndView loadBooksPage()
	{   
	   Productdaoimp productdoaimp=new Productdaoimp();
	   ArrayList<Productlist> productlist=new ArrayList<Productlist>();
	   productlist=productdoaimp.products();
	   
	   String json = new Gson().toJson(productlist);  // converting list into Google Gson object which is a string
	   
	   ModelAndView mv=new ModelAndView("books");
	   mv.addObject("myJson", json);
	   return mv;
	}*/

	 @RequestMapping(value = "/bookuser", method = RequestMethod.GET)
	    public String listBookusers(Model model) {
	        model.addAttribute("student", new Student());
	        model.addAttribute("listfromtable", this.ss.listPersons());
	        
	       /* List<Student> productlist=new ArrayList<Student>();
	        productlist=ss.listPersons();
	        String json = new Gson().toJson(productlist);  // converting list into Google Gson object which is a string
	 	   
	 	   ModelAndView mv=new ModelAndView("bookuser");
	 	   mv.addObject("myJson", json);
	 	   return mv;*/
	        
	        return "bookuser";
	    }

	/*@RequestMapping("/details/{id}")
	public String loadDetailsPage(@PathVariable("id") int id, Model model,HttpServletRequest request)
	{
	 //request.getParameter("bookname");	
	 return "details";
	}*/
		@RequestMapping("/details")
		public String loadDetailsPage()
		{	
		 return "details";
		}
	
//CRUD OPERATIONS
	
private StudentService ss;
    @Autowired
	public Bookcontroller(StudentService ss) {
	super();
	this.ss = ss;
}

	
	
	
	    @RequestMapping(value = "/students", method = RequestMethod.GET)
	      public ModelAndView listPersons(Model model) {
	        model.addAttribute("student", new Student());
	        model.addAttribute("listfromtable", this.ss.listPersons());
	       List<Student> productlist=new ArrayList<Student>();
	        productlist=ss.listPersons();
	        String json = new Gson().toJson(productlist);  // converting list into Google Gson object which is a string
	 	   
	 	   ModelAndView mv=new ModelAndView("adminpage");
	 	   mv.addObject("myJson", json);
	 	   return mv;
	        //return "studentdetails";
	    }
     
    @RequestMapping("/adminpage")
	public ModelAndView showDetailstoAdmin(Model mp)
	{
		List<Student> listtojsp=new ArrayList<Student>();
		listtojsp=ss.listPersons();
		mp.addAttribute("listfromtable",listtojsp);
		  List<Student> productlist=new ArrayList<Student>();
	        productlist=ss.listPersons();
	        String json = new Gson().toJson(productlist);  // converting list into Google Gson object which is a string
	 	   
	 	   ModelAndView mv=new ModelAndView("adminpage");
	 	   mv.addObject("myJson", json);
	 	   return mv;
        //return listtojsp;
	}
	
	 
	 @RequestMapping(value= "/adminpage/add", method = RequestMethod.POST)
	  public String addPerson(@Valid @ModelAttribute("student") Student p, BindingResult result, HttpServletRequest request, Model model){
		  String filename = null;
          byte[] bytes;
          if(!p.getImage().isEmpty())
         {
              
             try
             {
               bytes=p.getImage().getBytes();
                 ss.addPerson(p);
                 System.out.println("Data Inserted");
            
            
         
                 
                            String path=request.getSession().getServletContext().getRealPath("/resources/images/"+p.getId()+".jpg");
                            System.out.println("Path = "+path);
                            System.out.println("File name = "+p.getImage().getOriginalFilename());
                            File f=new File(path);
                            BufferedOutputStream bs=new BufferedOutputStream(new FileOutputStream(f));
                            bs.write(bytes);
                            bs.close();
                            System.out.println("Image uploaded");
             }
                     catch(Exception ex)
             {
                 System.out.println(ex.getMessage());
             }
         }
              
              
              
               if (result.hasErrors())
               {
            	System.out.println("error");
       			//model.addAttribute("listfromtable", this.ss.listPersons());
                return "adminpage";
       
               }
               else
               {
       
                     if(p.getId() == 0){
             this.ss.addPerson(p);
               }
        }
		 
		       if(p.getId() == 0){
	            //new person, add it
	            this.ss.addPerson(p);
	        }
		     else{
	            //existing person, call update
	            this.ss.updatePerson(p);
	        }
	        return "redirect:/students";
        }
        
	 
	 @RequestMapping("/remove/{id}")
	    public String removePerson(@PathVariable("id") int id){
	         
	        this.ss.removePerson(id);
	        return "redirect:/students";
	    }
	 
	    @RequestMapping("/edit/{id}")
	    public String editPerson(@PathVariable("id") int id, Model model){
	        model.addAttribute("student", this.ss.getPersonById(id));
	        model.addAttribute("listfromtable", this.ss.listPersons());
	      return "adminpage";
	    	 // Student student = ss.getPersonById(id);
              //model.addAttribute("student", student);
	        //return("redirect:/students");
	    }
	    @RequestMapping("/students")
		public String showIndexPage()
		{
			return("redirect:/students");
		}
	    
	  //<!---------------LOGIN----------------->
		@RequestMapping(value="/signin", method = RequestMethod.GET)
	    public String login(ModelMap model) {
	     
	    return "signin";
	     
	    }
	     
	    @RequestMapping(value="/loginError", method = RequestMethod.GET)
	    public String loginError(ModelMap model) {
	    model.addAttribute("error", "Invalid Username or Password!!");
	    return "signin";
	     
	    }
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(ModelMap model) {
	        return "index";
	    }
		
}
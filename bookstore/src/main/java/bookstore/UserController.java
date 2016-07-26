package bookstore;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.User;

@Controller
public class UserController {
private UserService us;
	
	@Autowired
	public UserController(UserService us) {
		this.us = us;
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
    public String listPersons(Model model) {
        model.addAttribute("user", new User());
        model.addAttribute("listfromtable", this.us.listUsers());
        return "signup";
    }
	
	@RequestMapping(value= "/register/add", method = RequestMethod.POST)
    public String addPerson(@ModelAttribute("user") User u,BindingResult result, HttpServletRequest request)
    {
		u.setEnabled(true);
		u.setRole("ROLE_USER");
		us.addUser(u);
		/*if(u.getUserId() == 0){
            //new person, add it
            this.us.addUser(u);
        }else{
            //existing person, call update
            this.us.updateUser(u);
        }*/
         
        return "signupsuccess";
    }


}

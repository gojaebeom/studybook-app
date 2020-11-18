package com.studybook.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.studybook.domain.UserVO;
import com.studybook.service.register.RegisterService;


@Controller
public class RegisterController {
	
	@Autowired
	private RegisterService registerService;
	
	@Autowired
    private PasswordEncoder passwordEncoder;
	
	@Autowired
	private static final Log LOG = LogFactory.getLog(RegisterController.class);
	
	@RequestMapping(value="/register",method=RequestMethod.GET)
	public String index() {
		
		return "/sign/register";
	}
	
	@ResponseBody
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public boolean store(@RequestBody UserVO user) throws Exception {
		LOG.info(user);
		
		String encodePassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(encodePassword);
		
		int result = registerService.insertUser(user);
				
		return (result != 0) ? true : false;
	}
	
	@ResponseBody
    @RequestMapping(value="/register/accountCheck", method=RequestMethod.POST)
    public boolean accountCheck(@RequestBody String account) throws Exception
    {
        int result = registerService.selectUserAccount(account);
        return (result == 0)? true : false;
    }
}

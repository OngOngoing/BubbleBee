package com.bubblebee.webapp.controller;
 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class HelloWorldController {
	String message = "Result of ";
	 
	@RequestMapping("/hello")
	public ModelAndView showMessage(
			@RequestParam(value = "name", required = false, defaultValue = " Operation") String name,
			@RequestParam(value = "fint", required = false, defaultValue = "0") String fint,
			@RequestParam(value = "sint", required = false, defaultValue = "0") String sint,
			@RequestParam(value = "submit", required = false, defaultValue = "0") String submit) {
		System.out.println("in controller");
		
		double f = Double.parseDouble(fint);
		double s = Double.parseDouble(sint);
		double res;
		if (submit.equals("Plus")){
			res = plus(f,s);
		} else if (submit.equals("Minus")){
			res = min(f,s);
		} else if (submit.equals("Multiply")){
			res = mul(f,s);
		} else {
			res = div(f,s);
		}
		String result = Double.toString(res);
		
		ModelAndView mv = new ModelAndView("helloworld");
		mv.addObject("message", message);
		mv.addObject("name", name);
		mv.addObject("result", result);
		return mv;
		
	}
	public double plus (double a,double b){
		double c = a+b;
		return c;
	}
	public double min (double a,double b){
		double c = a-b;
		return c;
	}
	public double mul (double a,double b){
		double c = a*b;
		return c;
	}
	public double div (double a,double b){
		double c = a/b;
		return c;
	}	
}

package july.lease.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import july.lease.service.HeaderService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HeaderController {

	@Autowired
	private HeaderService headerService;
	
	@GetMapping("/home")
	public String home(Model model, String startDate, String endDate) {
		
		//headerService.getCategory(model);
		
		log.info("home");
		
		log.info("startDate={}",startDate);
		log.info("endDate={}",endDate);
		
		return "Project_home";
	}
	
//	@GetMapping("/home")
//	public String getCategory(Model model) {
//		
//		// 헤더 필요한곳에서 호출
//		// headerService.getCategory(model);
//		
//		return "/Project_home";
//	}
}

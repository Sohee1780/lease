package july.lease.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import july.lease.service.dto.searchDto;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HomeController {

	@GetMapping("/home")
	public String home(Model model, searchDto searchDto) {

		log.info("home »£√‚");

		return "Project_home";
	}
	
}

package july.lease.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import july.lease.domain.Category;
import july.lease.service.HeaderService;
import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class HeaderController {

	@Autowired
	private HeaderService headerService;
	
	@GetMapping("/header")
	public String getCategory(Model model) {
		
		List<Category> list = headerService.getCategory();
		
		
		log.info("headerController ½ÇÇà");
		
		list.forEach(cate -> {
			log.info("cateName={}",cate.getCategoryName());
		});
		
		model.addAttribute("list", list);
		model.addAttribute("msg", "test");
		
		return "/header";
	}
}

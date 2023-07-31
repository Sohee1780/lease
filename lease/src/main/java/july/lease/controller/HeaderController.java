package july.lease.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import july.lease.service.HeaderService;
import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class HeaderController {

	@Autowired
	private HeaderService headerService;
	
	
	@GetMapping("/category")
	public Map<String, Object> getCategory() {

		log.info("category호출");
		
		Map<String, Object> map = new HashMap();
		
		
		// 카테고리 리스트 맵에 put
		map.put("list", headerService.getCategory());
		// 헤더에 쪽지부분 map 저장해서 같이 보내기
		
		// 맵 반환
		return map;
	}
	
}

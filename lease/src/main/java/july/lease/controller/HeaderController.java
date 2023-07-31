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

		log.info("categoryȣ��");
		
		Map<String, Object> map = new HashMap();
		
		
		// ī�װ� ����Ʈ �ʿ� put
		map.put("list", headerService.getCategory());
		// ����� �����κ� map �����ؼ� ���� ������
		
		// �� ��ȯ
		return map;
	}
	
}

package july.lease.dao.header;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import july.lease.domain.Category;
import july.lease.service.HeaderService;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
@ActiveProfiles("test")
public class HeaderServiceTest {

	@Autowired
	HeaderService headerService;
	
	@Test
	public void serviceTest() {
		
		List<Category> list = headerService.getCategory();
		list.forEach(cate -> {
			log.info("cateName={}",cate.getCategoryName());
		});
		
	}
}

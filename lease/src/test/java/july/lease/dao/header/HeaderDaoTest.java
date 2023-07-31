package july.lease.dao.header;

import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ActiveProfiles;

import july.lease.domain.Category;
import lombok.extern.slf4j.Slf4j;

@SpringBootTest
@Slf4j
@ActiveProfiles("test")
public class HeaderDaoTest {

	@Autowired
	private HeaderDao headerDao;
	
	@Test
	public void getCategory() {
		
		List<Category> list = headerDao.getCategory();
		list.forEach(cate -> {
			log.info("cateId={}",cate.getCategoryId());
			log.info("cateParent={}",cate.getCategoryId2());
			log.info("cateName={}",cate.getCategoryName());
		});
	}
}

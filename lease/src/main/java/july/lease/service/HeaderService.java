package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import july.lease.dao.header.HeaderDao;
import july.lease.domain.Category;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Service
@RequiredArgsConstructor
@Slf4j
public class HeaderService {

	private final HeaderDao headerDao;
	
	public List<Category> getCategory() {
		/*
		ObjectMapper objm = new ObjectMapper();
		List<Category> list = headerDao.getCategory();

		try {
			// String타입의 json형식 데이터로 변환
			String cateList = objm.writeValueAsString(list);
			log.info("headerController 실행");
			log.info("변경 전={}", list);
			log.info("변경 후={}", cateList);
			
			// 뷰로 데이터를 넘겨주기 위해서 model에 저장

		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;*/
		
		return headerDao.getCategory();
	}
}

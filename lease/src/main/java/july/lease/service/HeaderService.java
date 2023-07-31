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
			// StringŸ���� json���� �����ͷ� ��ȯ
			String cateList = objm.writeValueAsString(list);
			log.info("headerController ����");
			log.info("���� ��={}", list);
			log.info("���� ��={}", cateList);
			
			// ��� �����͸� �Ѱ��ֱ� ���ؼ� model�� ����

		} catch (JsonProcessingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return null;*/
		
		return headerDao.getCategory();
	}
}

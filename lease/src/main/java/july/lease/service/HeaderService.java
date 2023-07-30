package july.lease.service;

import java.util.List;

import org.springframework.stereotype.Service;

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
		return headerDao.getCategory();
	}
}

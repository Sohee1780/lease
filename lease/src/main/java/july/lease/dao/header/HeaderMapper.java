package july.lease.dao.header;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import july.lease.domain.Category;

@Mapper
public interface HeaderMapper {

	// ī�װ�
	List<Category> getCategory();
	
}

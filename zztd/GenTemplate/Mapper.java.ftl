package ${model.packageName}.persistence;

import java.util.List;
import com.core.code.util.Page;
import ${model.packageName}.domain.${model.className};

public interface ${model.className}Mapper {
	
    int deleteByPrimaryKey(Long tbid);

    int insert(${model.className} ${model.className?uncap_first});

    ${model.className} selectByPrimaryKey(Long tbid);

    int updateByPrimaryKey(${model.className} ${model.className?uncap_first});

	List<${model.className}> search(Page pager);
	
}
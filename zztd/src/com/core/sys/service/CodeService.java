package com.core.sys.service;
import java.util.List;

import com.core.sys.domain.Attribute;

public interface CodeService {

	String generateCode(String realPath ,String packageName, String className,
			List<Attribute> attrs);
	
}
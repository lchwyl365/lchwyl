package com.core.sys.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.core.sys.domain.Attribute;
import com.core.sys.service.CodeService;
import com.core.util.ZipCompressor;
import com.core.util.gencode.GenMainWeb;

@Service("codeService")
public class CodeServiceImpl implements CodeService {

	public String generateCode(String realPath,String packageName, String className,
			List<Attribute> attrs) {
		try {
			GenMainWeb genMain = new GenMainWeb(realPath);
			genMain.autoGenerate(className,packageName,attrs);
			ZipCompressor zc = new ZipCompressor(realPath+"download/code/"+genMain.uuid+".zip"); 
			zc.compress(realPath+"download/code/"+genMain.uuid); 
			return genMain.uuid;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "";
	}
	
}
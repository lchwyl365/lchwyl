package com.core.util;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component("sysProperties")
public class SysProperties {
	
	@Value("${msg.savePath}")
    private String msgSavePath;

	public String getMsgSavePath() {
		return msgSavePath;
	}
	
	public void setMsgSavePath(String msgSavePath) {
		this.msgSavePath = msgSavePath;
	}

}
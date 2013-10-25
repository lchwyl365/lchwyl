package com.team.loan.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Product implements Serializable {
	
    private Long tbid;

    private String name;

    private String describe;

    private Integer maxmoney;

    private Integer minmoney;

    private Integer maxlimit;

    private Integer minlimit;

    private String verifytime;

    private Float maxrate;

    private Float minrate;

    private String tendertime;

    private String replyway;

    private String fee;

    public Long getTbid() {
        return tbid;
    }

    public void setTbid(Long tbid) {
        this.tbid = tbid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    public Integer getMaxmoney() {
        return maxmoney;
    }

    public void setMaxmoney(Integer maxmoney) {
        this.maxmoney = maxmoney;
    }

    public Integer getMinmoney() {
        return minmoney;
    }

    public void setMinmoney(Integer minmoney) {
        this.minmoney = minmoney;
    }

    public Integer getMaxlimit() {
        return maxlimit;
    }

    public void setMaxlimit(Integer maxlimit) {
        this.maxlimit = maxlimit;
    }

    public Integer getMinlimit() {
        return minlimit;
    }

    public void setMinlimit(Integer minlimit) {
        this.minlimit = minlimit;
    }

    public String getVerifytime() {
        return verifytime;
    }

    public void setVerifytime(String verifytime) {
        this.verifytime = verifytime;
    }

    public Float getMaxrate() {
        return maxrate;
    }

    public void setMaxrate(Float maxrate) {
        this.maxrate = maxrate;
    }

    public Float getMinrate() {
        return minrate;
    }

    public void setMinrate(Float minrate) {
        this.minrate = minrate;
    }

    public String getTendertime() {
        return tendertime;
    }

    public void setTendertime(String tendertime) {
        this.tendertime = tendertime;
    }

    public String getReplyway() {
        return replyway;
    }

    public void setReplyway(String replyway) {
        this.replyway = replyway;
    }

    public String getFee() {
        return fee;
    }

    public void setFee(String fee) {
        this.fee = fee;
    }
}
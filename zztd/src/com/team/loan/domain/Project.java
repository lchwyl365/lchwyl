package com.team.loan.domain;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Project implements Serializable {
	
    private Long tbid;

    private String name;

    private Integer money;

    private Integer deadline;

    private Float rate;

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

    public Integer getMoney() {
        return money;
    }

    public void setMoney(Integer money) {
        this.money = money;
    }

    public Integer getDeadline() {
        return deadline;
    }

    public void setDeadline(Integer deadline) {
        this.deadline = deadline;
    }

    public Float getRate() {
        return rate;
    }

    public void setRate(Float rate) {
        this.rate = rate;
    }
}
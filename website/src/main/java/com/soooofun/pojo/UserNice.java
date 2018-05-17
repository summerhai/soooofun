package com.soooofun.pojo;

import java.util.Date;

public class UserNice {
    private String id;

    private String nUId;

    private String nItemId;

    private Short niceType;

    private Date niceTime;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id == null ? null : id.trim();
    }

    public String getnUId() {
        return nUId;
    }

    public void setnUId(String nUId) {
        this.nUId = nUId == null ? null : nUId.trim();
    }

    public String getnItemId() {
        return nItemId;
    }

    public void setnItemId(String nItemId) {
        this.nItemId = nItemId == null ? null : nItemId.trim();
    }

    public Short getNiceType() {
        return niceType;
    }

    public void setNiceType(Short niceType) {
        this.niceType = niceType;
    }

    public Date getNiceTime() {
        return niceTime;
    }

    public void setNiceTime(Date niceTime) {
        this.niceTime = niceTime;
    }
}
package com.soooofun.pojo;

import java.util.Date;

public class Comment {
    private String cId;

    private String cFId;

    private String cContent;

    private Date cTime;

    private String cUserId;

    private String cUserName;

    private String cUserAvatar;

    private Integer cUserLevel;

    private Integer cFloor;

    private Integer cNiceNum;

    private Short cAvailable;

    public String getcId() {
        return cId;
    }

    public void setcId(String cId) {
        this.cId = cId == null ? null : cId.trim();
    }

    public String getcFId() {
        return cFId;
    }

    public void setcFId(String cFId) {
        this.cFId = cFId == null ? null : cFId.trim();
    }

    public String getcContent() {
        return cContent;
    }

    public void setcContent(String cContent) {
        this.cContent = cContent == null ? null : cContent.trim();
    }

    public Date getcTime() {
        return cTime;
    }

    public void setcTime(Date cTime) {
        this.cTime = cTime;
    }

    public String getcUserId() {
        return cUserId;
    }

    public void setcUserId(String cUserId) {
        this.cUserId = cUserId == null ? null : cUserId.trim();
    }

    public String getcUserName() {
        return cUserName;
    }

    public void setcUserName(String cUserName) {
        this.cUserName = cUserName == null ? null : cUserName.trim();
    }

    public String getcUserAvatar() {
        return cUserAvatar;
    }

    public void setcUserAvatar(String cUserAvatar) {
        this.cUserAvatar = cUserAvatar == null ? null : cUserAvatar.trim();
    }

    public Integer getcUserLevel() {
        return cUserLevel;
    }

    public void setcUserLevel(Integer cUserLevel) {
        this.cUserLevel = cUserLevel;
    }

    public Integer getcFloor() {
        return cFloor;
    }

    public void setcFloor(Integer cFloor) {
        this.cFloor = cFloor;
    }

    public Integer getcNiceNum() {
        return cNiceNum;
    }

    public void setcNiceNum(Integer cNiceNum) {
        this.cNiceNum = cNiceNum;
    }

    public Short getcAvailable() {
        return cAvailable;
    }

    public void setcAvailable(Short cAvailable) {
        this.cAvailable = cAvailable;
    }
}
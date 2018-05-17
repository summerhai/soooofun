package com.soooofun.pojo;

import java.util.Date;

public class FunItem {
    private String fId;

    private String fTitle;

    private String fContent;

    private Date fPublishTime;

    private String fPublisherId;

    private String fPublisherName;

    private Short fHasImage;

    private String fClass;

    private String fTag;

    private Integer fNiceNum;

    private Integer fCommentNum;

    private Double fScore;

    private Integer fCollectNum;

    private Short fAvailable;

    public String getfId() {
        return fId;
    }

    public void setfId(String fId) {
        this.fId = fId == null ? null : fId.trim();
    }

    public String getfTitle() {
        return fTitle;
    }

    public void setfTitle(String fTitle) {
        this.fTitle = fTitle == null ? null : fTitle.trim();
    }

    public String getfContent() {
        return fContent;
    }

    public void setfContent(String fContent) {
        this.fContent = fContent == null ? null : fContent.trim();
    }

    public Date getfPublishTime() {
        return fPublishTime;
    }

    public void setfPublishTime(Date fPublishTime) {
        this.fPublishTime = fPublishTime;
    }

    public String getfPublisherId() {
        return fPublisherId;
    }

    public void setfPublisherId(String fPublisherId) {
        this.fPublisherId = fPublisherId == null ? null : fPublisherId.trim();
    }

    public String getfPublisherName() {
        return fPublisherName;
    }

    public void setfPublisherName(String fPublisherName) {
        this.fPublisherName = fPublisherName == null ? null : fPublisherName.trim();
    }

    public Short getfHasImage() {
        return fHasImage;
    }

    public void setfHasImage(Short fHasImage) {
        this.fHasImage = fHasImage;
    }

    public String getfClass() {
        return fClass;
    }

    public void setfClass(String fClass) {
        this.fClass = fClass == null ? null : fClass.trim();
    }

    public String getfTag() {
        return fTag;
    }

    public void setfTag(String fTag) {
        this.fTag = fTag == null ? null : fTag.trim();
    }

    public Integer getfNiceNum() {
        return fNiceNum;
    }

    public void setfNiceNum(Integer fNiceNum) {
        this.fNiceNum = fNiceNum;
    }

    public Integer getfCommentNum() {
        return fCommentNum;
    }

    public void setfCommentNum(Integer fCommentNum) {
        this.fCommentNum = fCommentNum;
    }

    public Double getfScore() {
        return fScore;
    }

    public void setfScore(Double fScore) {
        this.fScore = fScore;
    }

    public Integer getfCollectNum() {
        return fCollectNum;
    }

    public void setfCollectNum(Integer fCollectNum) {
        this.fCollectNum = fCollectNum;
    }

    public Short getfAvailable() {
        return fAvailable;
    }

    public void setfAvailable(Short fAvailable) {
        this.fAvailable = fAvailable;
    }
}
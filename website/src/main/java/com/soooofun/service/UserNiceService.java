package com.soooofun.service;

import com.alibaba.fastjson.JSONObject;

/**
 * 用户点赞的接口
 */
public interface UserNiceService {
    /**
     * 添加点赞记录
     * @param userId
     * @param itemId
     * @param niceType
     * @return
     */
    JSONObject addUserNice(String userId, String itemId, Short niceType);

    /**
     * 取消点赞记录
     * @param userId
     * @param itemId
     * @param niceType
     * @return
     */
    JSONObject cancelUserNice(String userId, String itemId, short niceType);
}

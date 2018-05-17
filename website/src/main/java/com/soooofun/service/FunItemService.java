package com.soooofun.service;

import com.alibaba.fastjson.JSONObject;

import java.io.IOException;

/**
 * 处理每一条内容的接口
 */
public interface FunItemService {
    /**
     * 获取主页
     * @return
     */
    JSONObject getHomePage();

    /**
     * 初始化部分数据
     * @return
     */
    void init() throws IOException;

    JSONObject getFunItemByPage(int pageNum);
}

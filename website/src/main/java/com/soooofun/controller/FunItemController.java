package com.soooofun.controller;

import com.alibaba.fastjson.JSONObject;
import com.soooofun.service.FunItemService;
import com.soooofun.service.UserNiceService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller
@RequestMapping("/funItem")
public class FunItemController {
    Logger logger = Logger.getLogger(FunItemController.class);
    @Autowired
    private FunItemService funItemService;
    @Autowired
    private UserNiceService userNiceService;
    @Autowired
    private RedisTemplate redisTemplate;
    /**
     * 初始化内容
     *
     * @return
     */
    @RequestMapping(value = "/init", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject init() throws IOException{
        long start = System.currentTimeMillis();
        funItemService.init();
        long end = System.currentTimeMillis();
        System.out.println("耗时：" + (end - start));
        JSONObject result = new JSONObject();
        result.put("flag", true);
        result.put("time", (end - start));
        return result;
    }
    /**
     * 主页
     *
     * @return
     */
    @RequestMapping(value = "/home", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject homePage(){
        logger.info("获取主页...");
        //判断是否登录
        JSONObject result = funItemService.getHomePage();
        return result;
    }

    /**
     * 获取分页数据
     *
     * @return
     */
    @RequestMapping(value = "/page/{pageNum}", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject getFunItemByPage(@PathVariable("pageNum") int pageNum){
        logger.info("获取第"+pageNum+"页数据...");
        //判断是否登录
        JSONObject result = funItemService.getFunItemByPage(pageNum);
        return result;
    }

    /**
     * 用户点赞，先写到redis，定期同步到mysql
     *
     * @return
     */
    @RequestMapping(value = "/nice/add", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject addUserNice(HttpServletRequest request){
        logger.info("进行点赞操作...");
        //判断是否登录
        String userId = request.getParameter("userId");
        String itemId = request.getParameter("itemId");
        short niceType = Short.valueOf(request.getParameter("niceType"));
        JSONObject result = userNiceService.addUserNice(userId,itemId,niceType);
        return result;
    }

    /**
     * 用户取消点赞
     *
     * @return
     */
    @RequestMapping(value = "/nice/cancel", method = RequestMethod.POST)
    @ResponseBody
    public JSONObject cancelUserNice(HttpServletRequest request){
        logger.info("取消点赞操作...");
        //判断是否登录
        String userId = request.getParameter("userId");
        String itemId = request.getParameter("itemId");
        short niceType = Short.valueOf(request.getParameter("niceType"));
        JSONObject result = userNiceService.cancelUserNice(userId,itemId,niceType);
        return result;
    }


    /**
     * 初始化内容
     *
     * @return
     */
    @RequestMapping(value = "/redis", method = RequestMethod.GET)
    @ResponseBody
    public JSONObject redis() throws IOException {
        redisTemplate.opsForValue().set("date","today");
        JSONObject result = new JSONObject();
        result.put("flag", true);
        result.put("time", redisTemplate.opsForValue().get("date"));
        return result;
    }
}

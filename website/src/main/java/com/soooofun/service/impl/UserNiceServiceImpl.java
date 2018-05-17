package com.soooofun.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.soooofun.dao.CommentMapper;
import com.soooofun.dao.FunItemMapper;
import com.soooofun.dao.UserNiceMapper;
import com.soooofun.pojo.Comment;
import com.soooofun.pojo.FunItem;
import com.soooofun.pojo.UserNice;
import com.soooofun.service.UserNiceService;
import com.soooofun.utils.Constant;
import com.soooofun.utils.MyUUID;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Date;

@Service
public class UserNiceServiceImpl implements UserNiceService {
    @Resource
    private UserNiceMapper userNiceMapper;
    @Resource
    private FunItemMapper funItemMapper;
    @Resource
    private CommentMapper commentMapper;

    /**
     * 添加点赞记录,后期放到消息队列里处理
     *
     * @param userId
     * @param itemId
     * @param niceType
     * @return
     */
    @Override
    public JSONObject addUserNice(String userId, String itemId, Short niceType) {
        JSONObject result = new JSONObject();
        try {
            UserNice userNice = new UserNice();
            userNice.setId(MyUUID.uuid("n"));
            userNice.setnUId(userId);
            userNice.setnItemId(itemId);
            userNice.setNiceType(niceType);
            userNice.setNiceTime(new Date());
            userNiceMapper.insert(userNice);
            //段子或评论属性的点赞数也要增加
            if (Constant.NICE_FUN_ITEM == niceType) {
                FunItem funItem = funItemMapper.selectByPrimaryKey(itemId);
                int niceNum = funItem.getfNiceNum();
                funItem.setfNiceNum(niceNum + 1);
                funItemMapper.updateByPrimaryKey(funItem);
            } else {
                Comment comment = commentMapper.selectByPrimaryKey(itemId);
                int niceNum = comment.getcNiceNum();
                comment.setcNiceNum(niceNum + 1);
                commentMapper.updateByPrimaryKey(comment);
            }
            result.put("flag", true);
            result.put("message", "点赞成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("flag", false);
            result.put("message", "处理异常" + e.getMessage());
        }
        return result;
    }

    /**
     * 取消点赞记录
     *
     * @param userId
     * @param itemId
     * @param niceType
     * @return
     */
    @Override
    public JSONObject cancelUserNice(String userId, String itemId, short niceType) {
        JSONObject result = new JSONObject();
        try {
            UserNice userNice = userNiceMapper.selectUserNice(userId,itemId);
            if(userNice == null){
                result.put("flag", false);
                result.put("message", "没有找到点赞记录");
                return result;
            }
            userNiceMapper.deleteByPrimaryKey(userNice.getId());
            //段子或评论属性的点赞数也要减少
            if (Constant.NICE_FUN_ITEM == niceType) {
                FunItem funItem = funItemMapper.selectByPrimaryKey(itemId);
                int niceNum = funItem.getfNiceNum();
                funItem.setfNiceNum(niceNum - 1);
                funItemMapper.updateByPrimaryKey(funItem);
            } else {
                Comment comment = commentMapper.selectByPrimaryKey(itemId);
                int niceNum = comment.getcNiceNum();
                comment.setcNiceNum(niceNum - 1);
                commentMapper.updateByPrimaryKey(comment);
            }
            result.put("flag", true);
            result.put("message", "取消点赞成功");
        } catch (Exception e) {
            e.printStackTrace();
            result.put("flag", false);
            result.put("message", "处理异常" + e.getMessage());
        }
        return result;
    }
}

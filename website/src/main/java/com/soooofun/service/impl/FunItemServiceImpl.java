package com.soooofun.service.impl;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.soooofun.dao.FunItemMapper;
import com.soooofun.dao.UserMapper;
import com.soooofun.dao.UserNiceMapper;
import com.soooofun.pojo.FunItem;
import com.soooofun.pojo.User;
import com.soooofun.service.FunItemService;
import com.soooofun.utils.Constant;
import com.soooofun.utils.ExcelToJSON;
import com.soooofun.utils.MyUUID;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.List;

/**
 * 处理有趣内容的实现类
 */
@Service
public class FunItemServiceImpl implements FunItemService {

    @Resource
    private FunItemMapper funItemMapper;
    @Resource
    private UserMapper userMapper;
    @Resource
    private UserNiceMapper userNiceMapper;
    /**
     * 获取主页
     *
     * @return
     */
    @Override
    @Cacheable(value = "home")
    public JSONObject getHomePage() {
        JSONObject result = new JSONObject();
        List<FunItem> funItemList = funItemMapper.selectListByPage(Constant.HOME_PAGE, Constant.HOME_PAGE_SHOW_NUM,Constant.DEFAULT_ORDER);
        JSONArray content = getFunItem(funItemList);
        result.put("result", content);
        int itemNum = funItemMapper.selectFunItemNum();
        int total = getPageNum(itemNum);
        result.put("totalNum",itemNum);
        result.put("currentPage",1);
        return result;
    }

    /**
     * 根据段子数量获取总页数
     * @param dzNum
     * @return
     */
    public int getPageNum(int dzNum) {
        int pageNum = dzNum / Constant.HOME_PAGE_SHOW_NUM;
        if(dzNum % Constant.HOME_PAGE_SHOW_NUM == 0){
            return pageNum;
        }
        return pageNum + 1;
    }

    /**
     * 初始化部分数据
     *
     * @return
     */
    @Override
    public void init() throws IOException {
        JSONArray dzArray = ExcelToJSON.excelToJSON("E:\\home\\fun\\dz.xlsx");
        String content = "", title = "", publisher = "", source = "", tag = "", type = "", time = "", score = "";
        for (int i = 0; i < dzArray.size(); i++) {
            JSONObject object = dzArray.getJSONObject(i);
            FunItem funItem = new FunItem();
            funItem.setfId(MyUUID.uuid("f_"));
            content = object.getString("Content");
            title = object.getString("Title");
            publisher = object.getString("Publisher");
            source = object.getString("Source");
            tag = object.getString("Tag");
            type = object.getString("Type");
            time = object.getString("Time");
            score = object.getString("Score");
            funItem.setfContent(content);
            if (content.contains("<img")) {
                funItem.setfHasImage((short)1);
            } else {
                funItem.setfHasImage((short)-1);
            }
            if (!Constant.BLANK_NULL.equals(title)) {
                funItem.setfTitle(title);
            }
            funItem.setfPublisherId(publisher);
            if (!Constant.BLANK_NULL.equals(tag)) {
                funItem.setfTag(tag);
            }
            //class分类，type类型，具体取值有待细化
            if (!Constant.BLANK_NULL.equals(type)) {
                funItem.setfClass(type);
            }
            if (!Constant.BLANK_NULL.equals(time)) {
                funItem.setfPublishTime(Timestamp.valueOf(time));
            }
            if (!Constant.BLANK_NULL.equals(score)) {
                funItem.setfScore(Double.valueOf(score));
            }
            funItem.setfCollectNum(0);
            funItem.setfAvailable((short)1);
            funItem.setfCommentNum(0);
            funItem.setfNiceNum(0);
            funItem.setfPublisherName("admin");
            funItemMapper.insert(funItem);
        }
    }

    @Override
    @Cacheable(value = "page")
    public JSONObject getFunItemByPage(int pageNum) {
        JSONObject result = new JSONObject();
        List<FunItem> funItemList = funItemMapper.selectListByPage((pageNum-1)*Constant.HOME_PAGE_SHOW_NUM, Constant.HOME_PAGE_SHOW_NUM,Constant.DEFAULT_ORDER);
        JSONArray content = getFunItem(funItemList);
        result.put("result", content);
        int itemNum = funItemMapper.selectFunItemNum();
        result.put("totalNum",itemNum);
        result.put("currentPage",pageNum);
        return result;
    }

    /**
     * 封装主页显示的dz列表
     *
     * @param funItemList
     * @return
     */
    private JSONArray getFunItem(List<FunItem> funItemList) {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        JSONArray result = new JSONArray();
        for (FunItem funItem : funItemList) {
            JSONObject object = new JSONObject();
            String uId = funItem.getfPublisherId();
            User user = userMapper.selectByPrimaryKey(uId);
            object.put("avatar", user.getAvatar());
            object.put("userName", user.getUserName());
            object.put("userId", user.getId());
            object.put("level", "lv1.初出茅庐");
            object.put("id", funItem.getfId());
            object.put("title", funItem.getfTitle());
            object.put("content", funItem.getfContent());
            object.put("tag", funItem.getfTag());
            object.put("niceNum", funItem.getfNiceNum());
            object.put("collectionNum", funItem.getfCollectNum());
            object.put("commentNum", funItem.getfCommentNum());
            object.put("time", sdf.format(funItem.getfPublishTime()));
            //用户是否已经有点赞的内容
            object.put("hasNiced", userNiceMapper.selectUserNice(uId, funItem.getfId()) == null ? false : true);
//            object.put("hasUnNiced", userUnNiceService.getUserUnNice(uId,dz.getdId()) == null ? false : true);
//            object.put("hasCollected",userUnNiceService.getUserUnNice(uId,dz.getdId()) == null ? false : true);
//            List<Comment> commentList = commentService.getHotComments(dz.getdId(), Constant.HOME_PAGE_HOT_COMMENT_NUM);
//            object.put("hotComments", getCommentArray(commentList));
            result.add(object);
        }
        return result;
    }
}

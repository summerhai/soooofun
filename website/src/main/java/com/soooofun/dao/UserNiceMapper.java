package com.soooofun.dao;

import com.soooofun.pojo.UserNice;
import org.apache.ibatis.annotations.Param;

public interface UserNiceMapper {
    int deleteByPrimaryKey(String id);

    int insert(UserNice record);

    int insertSelective(UserNice record);

    UserNice selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(UserNice record);

    int updateByPrimaryKey(UserNice record);

    /**
     * 查看用户是否对某个内容已经点赞过
     * @param userId
     * @param itemId
     * @return
     */
    UserNice selectUserNice(@Param("userId") String userId, @Param("itemId") String itemId);
}
package com.soooofun.dao;

import com.soooofun.pojo.Comment;

public interface CommentMapper {
    int deleteByPrimaryKey(String cId);

    int insert(Comment record);

    int insertSelective(Comment record);

    Comment selectByPrimaryKey(String cId);

    int updateByPrimaryKeySelective(Comment record);

    int updateByPrimaryKey(Comment record);
}
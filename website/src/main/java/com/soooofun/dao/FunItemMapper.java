package com.soooofun.dao;

import com.soooofun.pojo.FunItem;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface FunItemMapper {
    int deleteByPrimaryKey(String fId);

    int insert(FunItem record);

    int insertSelective(FunItem record);

    FunItem selectByPrimaryKey(String fId);

    int updateByPrimaryKeySelective(FunItem record);

    int updateByPrimaryKey(FunItem record);


    List<FunItem> selectListByPage(@Param("pageNum")int start, @Param("itemNum")int homePageShowNum, @Param("orderType") String orderType);

    int selectFunItemNum();
}
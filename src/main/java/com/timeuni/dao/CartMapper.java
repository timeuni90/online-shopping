package com.timeuni.dao;

import com.timeuni.bean.Cart;
import com.timeuni.bean.CartExample;
import com.timeuni.mybean.CartItem;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CartMapper {
    long countByExample(CartExample example);

    int deleteByExample(CartExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Cart record);

    int insertSelective(Cart record);

    List<Cart> selectByExample(CartExample example);

    Cart selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByExample(@Param("record") Cart record, @Param("example") CartExample example);

    int updateByPrimaryKeySelective(Cart record);

    int updateByPrimaryKey(Cart record);
    
    /* 获取购物车 */
    public List<CartItem> selectCartItemsByUserId(@Param("userId")Integer userId, @Param("coverLocation")String coverLocation, @Param("rows")List<String> rows);
}
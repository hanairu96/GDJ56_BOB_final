package com.today.bab.market1.model.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.today.bab.market2.model.vo.ItemPic;
import com.today.bab.market2.model.vo.SellItem;

@Repository
public class Market1DaoImpl implements Market1Dao {
	@Override
	public List<SellItem> selectItemCtg(SqlSessionTemplate session){
		return session.selectList("ma.selectItemCtg");
	}
	
	@Override
	public SellItem marketdetail(SqlSessionTemplate session, String itemName){
		return session.selectOne("ma.marketdetail",itemName);
	}
	
	@Override
	public int insertItem(SqlSessionTemplate session,SellItem s) {
		return session.insert("ma.insertItem",s);
	}
	
	@Override
	public int insertItemPic(SqlSessionTemplate session,ItemPic pic) {
		return session.insert("ma.insertItemPic",pic);
	}
}

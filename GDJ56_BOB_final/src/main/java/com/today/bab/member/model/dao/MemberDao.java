package com.today.bab.member.model.dao;

import org.mybatis.spring.SqlSessionTemplate;

import com.today.bab.member.model.vo.Member;

public interface MemberDao {
	Member selectMemberById(SqlSessionTemplate session, Member m);
}
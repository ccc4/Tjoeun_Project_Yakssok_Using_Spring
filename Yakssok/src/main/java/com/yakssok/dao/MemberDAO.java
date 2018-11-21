package com.yakssok.dao;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.metadata.SqlServerCallMetaDataProvider;
import org.springframework.stereotype.Repository;

import com.yakssok.model.DeleteMember;
import com.yakssok.model.Member;



@Repository
public class MemberDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	String strName = "MemberMapper";
	
	public Member select(Member member) {
		return sqlSession.selectOne(strName +".oneRecord", member);
	}

	public Member findId(Member member) {
		return sqlSession.selectOne(strName+".FindId",member);
	}
	
	public int editPw(Member member) {
		return sqlSession.update(strName+".EditPw", member);
	}
	
	public int deleteMember(Member member) {
		return sqlSession.delete(strName+".DeleteMember", member);
	}
	
	public int insertDeleteMember(DeleteMember deleteMember) {
		return sqlSession.insert(strName+".InsertDeleteMember", deleteMember);
	}
	
	public int update(Member member) {
		return sqlSession.update(strName+".UpdateMember", member); 
	}
	
	public int join(Member member) {
		return sqlSession.insert(strName + ".join", member);
	}
	
	public Member getModel(Member member) {
		
		return sqlSession.selectOne(strName + ".getModel", member);
	}

	public int checkId(String id) {
		
		return sqlSession.selectOne(strName + ".checkId", id);

	}
	public int checkNick(String nickname) {
		
		return sqlSession.selectOne(strName + ".checkNick", nickname);

	}

}

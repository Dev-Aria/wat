package com.ppp.wat.sproject;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class SprojectDAO {

	/*
	   MyBatis�� Spring�� ����ϴ� ���
	   	1. notice.xml : SQL�� �ۼ�
	 	2. interface noticeMapper{}�� ���
	 	3. class NoticeDAO()���� NoticeMapperȣ��

	 */

	@Autowired
	private SqlSession sqlSession;


	public SprojectDAO() {
		System.out.println("SprojectDAO() ��ü ������");
	}


	// SP�������� ����Ʈ
	ArrayList<SprojectDTO> list() {
		SprojectMapper mapper = sqlSession.getMapper(SprojectMapper.class);
		ArrayList<SprojectDTO> list = mapper.list();
		return list;

	}// list() end


	// SP�������� ���
	int create(SprojectDTO dto){
		SprojectMapper mapper = sqlSession.getMapper(SprojectMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// SP�������� ��ȸ
	public SprojectDTO read(int sp_no){
		SprojectMapper mapper = sqlSession.getMapper(SprojectMapper.class);
		SprojectDTO dto = mapper.read(sp_no);
		return dto;
	}// create() end


	// SP�������� ����
	int delete(int sp_no){
		SprojectMapper mapper = sqlSession.getMapper(SprojectMapper.class);
		int count = mapper.delete(sp_no);
		return count;
	}

	// SP�������� ����
	int update(SprojectDTO dto){
		SprojectMapper mapper = sqlSession.getMapper(SprojectMapper.class);
		int count = mapper.update(dto);
		return count;
	}

}// class end

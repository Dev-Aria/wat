package com.ppp.wat.chiefapplicant;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class ChiefApplicantDAO {

	@Autowired
	private SqlSession sqlSession;

	public ChiefApplicantDAO() {
		System.out.println("ChiefApplicantDAO() ��ü ������");
	}


	// �����û ����Ʈ
	ArrayList<ChiefApplicantDTO> list() {
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		ArrayList<ChiefApplicantDTO> list = mapper.list();
		return list;

	}// list() end


	// �����û  ���
	int create(ChiefApplicantDTO dto){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// �����û �󼼺���
	ChiefApplicantDTO read(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		ChiefApplicantDTO dto = mapper.read(ca_no);
		return dto;
	}// create() end


	// �����û  ����
	int delete(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.delete(ca_no);
		return count;
	}

	// �����û  ����
	int update(ChiefApplicantDTO dto){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.update(dto);
		return count;
	}
	

	// �����û�� ��������
	public int count_all(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.count_all(ca_no);
		return count;
	}// count_all() end



}// class end

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
		System.out.println("ChiefApplicantDAO() 객체 생성됨");
	}


	// 팀장신청 리스트
	ArrayList<ChiefApplicantDTO> list() {
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		ArrayList<ChiefApplicantDTO> list = mapper.list();
		return list;

	}// list() end


	// 팀장신청  등록
	int create(ChiefApplicantDTO dto){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// 팀장신청 상세보기
	ChiefApplicantDTO read(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		ChiefApplicantDTO dto = mapper.read(ca_no);
		return dto;
	}// create() end


	// 팀장신청  삭제
	int delete(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.delete(ca_no);
		return count;
	}

	// 팀장신청  수정
	int update(ChiefApplicantDTO dto){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.update(dto);
		return count;
	}
	

	// 팀장신청수 가져오기
	public int count_all(int ca_no){
		ChiefApplicantMapper mapper = sqlSession.getMapper(ChiefApplicantMapper.class);
		int count = mapper.count_all(ca_no);
		return count;
	}// count_all() end



}// class end

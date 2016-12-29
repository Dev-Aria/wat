package com.ppp.wat.spapply;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.ppp.wat.chiefapplicant.ChiefApplicantMapper;

@Component
public class SpApplyDAO {

	@Autowired
	private SqlSession sqlSession;

	public SpApplyDAO() {
		System.out.println("ChiefApplicantDAO() 객체 생성됨");
	}


	// 팀장신청 리스트
	ArrayList<SpApplyDTO> list() {
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		ArrayList<SpApplyDTO> list = mapper.list();
		return list;

	}// list() end


	// 팀장신청  등록
	int create(SpApplyDTO dto){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// 팀장신청 상세보기
	SpApplyDTO read(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		SpApplyDTO dto = mapper.read(spa_no);
		return dto;
	}// create() end


	// 팀장신청  삭제
	int delete(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.delete(spa_no);
		return count;
	}

	// 팀장신청  수정
	int update(SpApplyDTO dto){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.update(dto);
		return count;
	}


	// 팀원신청수 가져오기
	public int count_all(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_all(spa_no);
		return count;
	}// count_all() end


	// DB신청수 가져오기
	public int count_db(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_db(spa_no);
		return count;
	}// count_db() end


	// UI신청수 가져오기
	public int count_ui(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_ui(spa_no);
		return count;
	}// count_ui() end


	// BackEnd신청수 가져오기
	public int count_back(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_back(spa_no);
		return count;
	}// count_BackEnd() end


	// Server신청수 가져오기
	public int count_server(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_all(spa_no);
		return count;
	}// count_server() end

	// Etc신청수 가져오기
	public int count_etc(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_etc(spa_no);
		return count;
	}// count_etc() end
	
}// class end

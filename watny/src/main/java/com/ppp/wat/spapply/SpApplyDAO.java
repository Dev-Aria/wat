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
		System.out.println("ChiefApplicantDAO() ��ü ������");
	}


	// �����û ����Ʈ
	ArrayList<SpApplyDTO> list() {
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		ArrayList<SpApplyDTO> list = mapper.list();
		return list;

	}// list() end


	// �����û  ���
	int create(SpApplyDTO dto){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// �����û �󼼺���
	SpApplyDTO read(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		SpApplyDTO dto = mapper.read(spa_no);
		return dto;
	}// create() end


	// �����û  ����
	int delete(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.delete(spa_no);
		return count;
	}

	// �����û  ����
	int update(SpApplyDTO dto){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.update(dto);
		return count;
	}


	// ������û�� ��������
	public int count_all(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_all(spa_no);
		return count;
	}// count_all() end


	// DB��û�� ��������
	public int count_db(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_db(spa_no);
		return count;
	}// count_db() end


	// UI��û�� ��������
	public int count_ui(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_ui(spa_no);
		return count;
	}// count_ui() end


	// BackEnd��û�� ��������
	public int count_back(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_back(spa_no);
		return count;
	}// count_BackEnd() end


	// Server��û�� ��������
	public int count_server(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_all(spa_no);
		return count;
	}// count_server() end

	// Etc��û�� ��������
	public int count_etc(int spa_no){
		SpApplyMapper mapper = sqlSession.getMapper(SpApplyMapper.class);
		int count = mapper.count_etc(spa_no);
		return count;
	}// count_etc() end
	
}// class end

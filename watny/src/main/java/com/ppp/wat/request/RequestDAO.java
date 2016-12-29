package com.ppp.wat.request;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class RequestDAO {

	@Autowired
	private SqlSession sqlSession;

	public RequestDAO() {
		System.out.println("RequestDAO() ��ü ������");
	}


	// ������Ʈ �Ƿ�  ����Ʈ
	ArrayList<RequestDTO> list() {
		RequestMapper mapper = sqlSession.getMapper(RequestMapper.class);
		ArrayList<RequestDTO> list = mapper.list();
		return list;

	}// list() end


	// ������Ʈ �Ƿ�  ���
	int create(RequestDTO dto){
		RequestMapper mapper = sqlSession.getMapper(RequestMapper.class);
		int count = mapper.create(dto);
		return count;
	}// create() end


	// ������Ʈ �Ƿ� �󼼺���
	public RequestDTO read(int rq_no){
		RequestMapper mapper = sqlSession.getMapper(RequestMapper.class);
		RequestDTO dto = mapper.read(rq_no);
		return dto;
	}// create() end


	// ������Ʈ �Ƿ�  ����
	int delete(int rq_no){
		RequestMapper mapper = sqlSession.getMapper(RequestMapper.class);
		int count = mapper.delete(rq_no);
		return count;
	}

	// ������Ʈ �Ƿ�  ����
	int update(RequestDTO dto){
		RequestMapper mapper = sqlSession.getMapper(RequestMapper.class);
		int count = mapper.update(dto);
		return count;
	}
	


}// class end

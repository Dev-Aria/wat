package com.ppp.wat.sproject;

import java.util.ArrayList;

public interface SprojectMapper {
	
	// sproject.xml�� 
	// <select id="list" resultType="SprojectDTO"> 
	// ���̵�� �޼������ �����ؾ� �Ѵ�.
	public ArrayList<SprojectDTO> list();
	
	//<insert id="create">
	public int create(SprojectDTO dto);
	
	//<select id="read" resultType="SprojectDTO">
	public SprojectDTO read(int sp_no);


	//<delete id="delete" >
	public int delete(int sp_no);
	
	//<update id="update">
	public int update(SprojectDTO dto);
	
}

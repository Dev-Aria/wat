package com.ppp.wat.request;

import java.util.ArrayList;

public interface RequestMapper {
	
	
	// <select id="list" resultType="RequestDTO"> 
	public ArrayList<RequestDTO> list();
	
	//<insert id="create">
	public int create(RequestDTO dto);
	
	//<select id="read" resultType="RequestDTO">
	public RequestDTO read(int rq_no);


	//<delete id="delete" >
	public int delete(int rq_no);
	
	//<update id="update">
	public int update(RequestDTO dto);

}

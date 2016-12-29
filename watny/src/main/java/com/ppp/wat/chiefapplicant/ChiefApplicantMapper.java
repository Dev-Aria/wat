package com.ppp.wat.chiefapplicant;

import java.util.ArrayList;

public interface ChiefApplicantMapper {
	
	
	// <select id="list" resultType="ChiefApplicantDTO"> 
	public ArrayList<ChiefApplicantDTO> list();
	
	//<insert id="create">
	public int create(ChiefApplicantDTO dto);
	
	//<select id="read" resultType="ChiefApplicantDTO">
	public ChiefApplicantDTO read(int ca_no);

	//<delete id="delete" >
	public int delete(int ca_no);
	
	//<update id="update">
	public int update(ChiefApplicantDTO dto);
	
	//<select id="count_all" resultType="int">
	public int count_all(int ca_rqno);

}

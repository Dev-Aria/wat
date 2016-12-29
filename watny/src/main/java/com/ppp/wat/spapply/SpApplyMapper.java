package com.ppp.wat.spapply;

import java.util.ArrayList;

public interface SpApplyMapper {
	
	
	// <select id="list" resultType="SpApplyDTO"> 
	public ArrayList<SpApplyDTO> list();
	
	//<insert id="create">
	public int create(SpApplyDTO dto);
	
	//<select id="read" resultType="SpApplyDTO">
	public SpApplyDTO read(int spa_no);

	//<delete id="delete" >
	public int delete(int spa_no);
	
	//<update id="update">
	public int update(SpApplyDTO dto);
	

	//<select id="count_all" resultType="int">
	public int count_all(int spa_no);

	//<select id="count_db" resultType="int">
	public int count_db(int spa_no);

	//<select id="count_ui" resultType="int">
	public int count_ui(int spa_no);

	//<select id="count_back" resultType="int">
	public int count_back(int spa_no);

	//<select id="count_server" resultType="int">
	public int count_server(int spa_no);

	//<select id="count_etc" resultType="int">
	public int count_etc(int spa_no);
}

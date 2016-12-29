package com.ppp.wat.spapply;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppp.wat.sproject.SprojectDAO;
import com.ppp.wat.sproject.SprojectDTO;

@Controller
public class SpApplyCont {

	@Autowired
	private SpApplyDAO dao;
	@Autowired
	private SprojectDAO spdao;

	public SpApplyCont() {
		System.out.println("SpApplyCont() °´Ã¼ »ý¼ºµÊ");
	}

	// °á°úÈ®ÀÎ http://localhost:9090/wat/spapply/list.do
	@RequestMapping("/spapply/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("spapply/list");
		ArrayList<SpApplyDTO> list = dao.list();
		mav.addObject("list", list);
		return mav;
	}// list() end

	@RequestMapping(value = "/spapply/create.do", method = RequestMethod.GET)
	public ModelAndView createForm(SpApplyDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/spapply/createForm");
		mav.addObject("spa_code", dto.getSpa_code());
		mav.addObject("spa_no", dto.getSpa_no());
		return mav;
	}// createForm() end

	@RequestMapping(value = "/spapply/create.do", method = RequestMethod.POST)
	public ModelAndView createProc(SpApplyDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int count = dao.create(dto);
		mav.setViewName("redirect:/sproject/read.do?sp_no="+dto.getSpa_no());
		mav.addObject("count", count);
		return mav;
	}// createProc() end

	@RequestMapping(value = "/spapply/read.do", method = RequestMethod.GET)
	public ModelAndView read(int spa_no, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/spapply/read");
		SpApplyDTO dto = dao.read(spa_no);
		mav.addObject("dto", dto);
		return mav;
	}// read() end

	@RequestMapping(value = "/spapply/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteForm(SpApplyDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/spapply/deleteForm");
		dto = dao.read(dto.getSpa_no());
		mav.addObject("dto", dto);
		return mav;
	}// deleteForm() end


	@RequestMapping(value = "/spapply/delete.do", method = RequestMethod.POST)
	public ModelAndView deleteProc(SpApplyDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/spapply/list.do");
		int res = dao.delete(dto.getSpa_no());
		return mav;
	}// deleteProc() end

	@RequestMapping(value = "/spapply/update.do", method = RequestMethod.GET)
	public ModelAndView updateForm(SpApplyDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/spapply/updateForm");
		dto = dao.read(dto.getSpa_no());
		mav.addObject("dto", dto);
		return mav;
	}// updateForm() end

	@RequestMapping(value = "/spapply/update.do", method = RequestMethod.POST)
	public ModelAndView updateProc(SpApplyDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/spapply/read.do?spa_no=" + dto.getSpa_no());
		int res = dao.update(dto);
		return mav;
	}// updateProc() end


}

package com.ppp.wat.chiefapplicant;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppp.wat.request.RequestDAO;
import com.ppp.wat.request.RequestDTO;

@Controller
public class ChiefApplicantCont {

	@Autowired
	private ChiefApplicantDAO dao;
	@Autowired
	private RequestDAO rqdao;

	public ChiefApplicantCont() {
		System.out.println("ChiefApplicantCont() °´Ã¼ »ý¼ºµÊ");
	}

	// °á°úÈ®ÀÎ http://localhost:9090/wat/chiefapplicant/list.do
	@RequestMapping("/chiefapplicant/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("chiefapplicant/list");
		ArrayList<ChiefApplicantDTO> list = dao.list();
		mav.addObject("list", list);
		return mav;
	}// list() end

	@RequestMapping(value = "/chiefapplicant/create.do", method = RequestMethod.GET)
	public ModelAndView createForm(int ca_rqno, ChiefApplicantDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/chiefapplicant/createForm");
		mav.addObject("ca_rqno", ca_rqno);
		mav.addObject("ca_no", dto.getCa_no());
		return mav;
	}// createForm() end

	@RequestMapping(value = "/chiefapplicant/create.do", method = RequestMethod.POST)
	public ModelAndView createProc(ChiefApplicantDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int count = dao.create(dto);
		mav.setViewName("redirect:/request/read.do?rq_no="+dto.getCa_rqno());
		mav.addObject("count", count);
		return mav;
	}// createProc() end

	@RequestMapping(value = "/chiefapplicant/read.do", method = RequestMethod.GET)
	public ModelAndView read(int ca_no, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/chiefapplicant/read");
		ChiefApplicantDTO dto = dao.read(ca_no);
		mav.addObject("dto", dto);
		return mav;
	}// read() end

	@RequestMapping(value = "/chiefapplicant/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteForm(ChiefApplicantDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/chiefapplicant/deleteForm");
		dto = dao.read(dto.getCa_no());
		mav.addObject("dto", dto);
		return mav;
	}// deleteForm() end


	@RequestMapping(value = "/chiefapplicant/delete.do", method = RequestMethod.POST)
	public ModelAndView deleteProc(ChiefApplicantDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/chiefapplicant/list.do");
		int res = dao.delete(dto.getCa_no());
		return mav;
	}// deleteProc() end

	@RequestMapping(value = "/chiefapplicant/update.do", method = RequestMethod.GET)
	public ModelAndView updateForm(ChiefApplicantDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/chiefapplicant/updateForm");
		dto = dao.read(dto.getCa_no());
		mav.addObject("dto", dto);
		return mav;
	}// updateForm() end

	@RequestMapping(value = "/chiefapplicant/update.do", method = RequestMethod.POST)
	public ModelAndView updateProc(ChiefApplicantDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/chiefapplicant/read.do?ca_no=" + dto.getCa_no());
		int res = dao.update(dto);
		return mav;
	}// updateProc() end

	
}

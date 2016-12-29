package com.ppp.wat.request;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.ppp.wat.chiefapplicant.ChiefApplicantDAO;

@Controller
public class RequestCont {

	@Autowired
	private RequestDAO dao;
	@Autowired
	private ChiefApplicantDAO cadao;

	public RequestCont() {
		System.out.println("RequestCont() °´Ã¼ »ý¼ºµÊ");
	}

	// °á°úÈ®ÀÎ http://localhost:9090/wat/request/list.do
	@RequestMapping("/request/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("request/list");
		ArrayList<RequestDTO> list = dao.list();
		mav.addObject("list", list);
		return mav;
	}// list() end

	@RequestMapping(value = "/request/create.do", method = RequestMethod.GET)
	public ModelAndView createForm(RequestDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/request/createForm");
		mav.addObject("rq_no", dto.getRq_no());
		return mav;
	}// createForm() end

	@RequestMapping(value = "/request/create.do", method = RequestMethod.POST)
	public ModelAndView createProc(RequestDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		int count = dao.create(dto);
		mav.setViewName("redirect:/request/list.do");
		mav.addObject("count", count);
		return mav;
	}// createProc() end

	@RequestMapping(value = "/request/read.do", method = RequestMethod.GET)
	public ModelAndView read(int rq_no, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/request/read");
		int count_all = cadao.count_all(rq_no);
		RequestDTO dto = dao.read(rq_no);
		mav.addObject("dto", dto);
		mav.addObject("count_all", count_all);
		return mav;
	}// read() end

	@RequestMapping(value = "/request/delete.do", method = RequestMethod.GET)
	public ModelAndView deleteForm(RequestDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/request/deleteForm");
		dto = dao.read(dto.getRq_no());
		mav.addObject("dto", dto);
		return mav;
	}// deleteForm() end


	@RequestMapping(value = "/request/delete.do", method = RequestMethod.POST)
	public ModelAndView deleteProc(RequestDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/request/list.do");
		int res = dao.delete(dto.getRq_no());
		return mav;
	}// deleteProc() end

	@RequestMapping(value = "/request/update.do", method = RequestMethod.GET)
	public ModelAndView updateForm(RequestDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/request/updateForm");
		dto = dao.read(dto.getRq_no());
		mav.addObject("dto", dto);
		return mav;
	}// updateForm() end

	@RequestMapping(value = "/request/update.do", method = RequestMethod.POST)
	public ModelAndView updateProc(RequestDTO dto, HttpServletRequest req) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/request/read.do?rq_no=" + dto.getRq_no());
		int res = dao.update(dto);
		return mav;
	}// updateProc() end

	
}

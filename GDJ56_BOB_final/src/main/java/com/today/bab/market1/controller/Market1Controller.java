package com.today.bab.market1.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.today.bab.market1.model.service.Market1Service;

@Controller
@RequestMapping("/market1")
public class Market1Controller {
	
	private Market1Service service;

	@Autowired
	public Market1Controller(Market1Service service) {
		super();
		this.service = service;
	}
	
	//헤더에서 마켓 메인 이동 
		@RequestMapping("/matketmain.do")
		public ModelAndView marketmain(ModelAndView mv) {
			mv.setViewName("market1/marketMain");
			return mv;
		}
		
		@RequestMapping("/marketgtg.do")
		public ModelAndView marketCtg(ModelAndView mv) {
			mv.setViewName("market1/marketGtg");
			return mv;
		}
		
		@RequestMapping("/marketdetail.do")
		public ModelAndView marketdetail(ModelAndView mv) {
			mv.setViewName("market1/detailMarketItem");
			return mv;
		}
		
		//마켓 상품 등록 페이지 이동
		@RequestMapping("/insertmarket.do")
		public ModelAndView insertgo(ModelAndView mv) {
			mv.setViewName("market1/insertMarketItem");
			return mv;
		}
	
}

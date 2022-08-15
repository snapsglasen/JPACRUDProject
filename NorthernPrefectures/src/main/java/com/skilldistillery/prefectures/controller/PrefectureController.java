package com.skilldistillery.prefectures.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.skilldistillery.prefectures.data.PrefectureDAO;
import com.skilldistillery.prefectures.entities.Prefecture.Prefecture;

@Controller
public class PrefectureController {

	@Autowired
	private PrefectureDAO dao;

	@RequestMapping(path = { "/", "index.do" })
	public String index(Model model) {
		model.addAttribute("prefectures", dao.findAll());
		return "index";
	}

	@RequestMapping(path = "getPrefecture.do")
	public String getPrefecture(Integer pID, Model model) {
		Prefecture pref = dao.findById(pID);
		model.addAttribute("pref", pref);
		return "prefecture/show";
	}

	@RequestMapping(path = "add.do", method = RequestMethod.POST)
	public ModelAndView addPrefecture(Prefecture pref) {
		pref = dao.create(pref);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("prefectureAdded");
		mv.addObject("prefectureAdded", pref);
		return mv;

	}

	@RequestMapping(path = "add.do", method = RequestMethod.GET)
	public ModelAndView prefectureCreated(Prefecture pref) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("addPrefecture");
		return mv;
	}

	@RequestMapping(path = "updated.do", method = RequestMethod.GET)
	public ModelAndView updatedPrefecture(Prefecture pref, int id) {
		pref = dao.findById(id);
		ModelAndView mv = new ModelAndView();
		mv.addObject("updatePref", pref);
		mv.setViewName("updatePrefecture");
		return mv;

	}

	@RequestMapping(path = "updatePref.do", method = RequestMethod.POST)
	public ModelAndView updatePrefecture(Prefecture pref, int id) {
		pref = dao.update(id, pref);
		ModelAndView mv = new ModelAndView();
		mv.addObject("updatedPref", pref);
		mv.setViewName("prefectureUpdated");
		return mv;
	}

}

package com.jtj.BoardController;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.jtj.bean.BoardBean;
import com.jtj.sevice.BoardService;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	BoardService service;

	// 게시물 목록
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception {

		List<BoardBean> list = null;
		list = service.list();

		model.addAttribute("list", list);

	}

	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception {

	}

	// 게시물 작성
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(BoardBean bean) throws Exception {
		service.write(bean);

		return "redirect:/board/list";
	}

	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView(@RequestParam("bno") int bno, Model model) throws Exception {

		BoardBean bean = service.view(bno);

		model.addAttribute("view", bean);

	}

	// 게시물 수정
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void getModify(@RequestParam("bno") int bno, Model model) throws Exception {
		BoardBean bean = service.view(bno);

		model.addAttribute("view", bean);
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String postModify(BoardBean bean) throws Exception {
		
		service.modify(bean);
		
		return "redirect:/board/view?bno=" + bean.getBno();
	}
	
	@RequestMapping(value = "/delete" , method = RequestMethod.GET)
	public String getDelete(@RequestParam("bno") int bno) throws Exception {
		
		service.delete(bno);
		
		return "redirect:/board/list";
	}

}

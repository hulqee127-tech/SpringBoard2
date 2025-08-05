package com.board.menus.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.board.menus.domain.MenuDTO;
import com.board.menus.mapper.MenuMapper;

@Controller
public class MenuController {

	@Autowired
	private MenuMapper menuMapper;
	
	@RequestMapping("/Menus/List")
	public String list() {
		
		List<MenuDTO> menuList = menuMapper.getMenuList();
		System.out.println(menuList);
		
		return "menus/list";	//WEB-INF/views/menus/list.jsp
	}
	
	@RequestMapping("/Menus/WriteForm")
	public String writeForm() {
		return "menus/write";	//WEB-INF/views/menus/write.jsp
	}
	
	@RequestMapping("/Menus/Write")
	//1. public String write(HttpServletRequest request) {
	//2. public String write(@RequestParam("menu_id") String menu_id, @RequestParam("menu_name") String menu_name, @RequestParam ("menu_seq") int menu_seq) {
	public String write( MenuDTO menuDto ) {
		//1. String menu_id = request.getParameter("menu_id");
		//System.out.println(menu_id);
		//System.out.println(menu_name);
		//System.out.println(menu_seq);
				
		// 맨유 등록 : DB insert
		//menuMapper.insertMenu(menu_id, menu_name, menu_seq);
		//2. MenuDTO menuDto = new MenuDTO(menu_id, menu_name, menu_seq);
		menuMapper.insertMenu(menuDto);
		// 목록보기로 이동
		return "menus/list";	//WEB-INF/views/menus/write.jsp
	}
	
	
}

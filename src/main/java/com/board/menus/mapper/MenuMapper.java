package com.board.menus.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.board.menus.domain.MenuDTO;

@Mapper
public interface MenuMapper {

	//void insertMenu(@Param("menu_id") String menu_id,@Param("menu_name") String menu_name,@Param("menu_seq") int menu_seq);
	void insertMenu(MenuDTO menuDto);

	List<MenuDTO> getMenuList();

}

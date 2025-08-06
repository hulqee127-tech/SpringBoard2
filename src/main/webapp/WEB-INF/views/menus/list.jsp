<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="black" style = "color:white">
	<main>
		<h2>맨유목록</h2>
		<table>
			<tr>
				<td>Menu_ID</td>
				<td>Menu_NAME</td>
				<td>Menu_SEQ</td>
				<td>Delete</td>
				<td>Modify</td>
			</tr>
			<tr>
				<td colspan="5">
					<a href="/Menus/WriteForm">새맨유선수추가</a>
				</td>
			</tr>
			<% //for(int i=0; i<menuList.size();i++){ %>
			<% //for(MenuDTO menu : menuList ){ %>
			<% //MenuDTO menu = new menuList.get(i); %>
			<c:forEach var="menu" items="${menuList}">		<!-- JSTL 문법 -->
			<tr>
				<td>${ menu.menu_id   }</td>	<!-- Expression Langauge => EL el문법 -->
				<td>${ menu.menu_name }</td>
				<td>${ menu.menu_seq  }</td>
				<td><a href="/Menus/Delete?menu_id=${ menu.menu_id   }">Delete</a></td>
				<td><a href="/Menus/UpdateForm?menu_id=${ menu.menu_id   }">Modify</a></td>
			</tr>
			</c:forEach>
			<% //} %>
		</table>
	</main>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<main>
		<h2>새맨유선수추가</h2>
		<form action="/Menus/Write" method="POST">
			<table>
				<tr>
					<td>맨유 아이디</td>
					<td><input type="text" name="menu_id" /></td>
				</tr>
				<tr>
					<td>맨유 이름</td>
					<td><input type="text" name="menu_name" /></td>
				</tr>
				<tr>
					<td>맨유 순서</td>
					<td><input type="number" name="menu_seq" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="등록" /></td>
				</tr>
			</table>
		</form>
	</main>
</body>
</html>
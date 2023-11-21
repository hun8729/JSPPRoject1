<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDao, com.crud.bean.MemberVo"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Edit Form</title>
</head>
<body>

<%
    MemberDao memberDao = new MemberDao();
    String id=request.getParameter("id");
    MemberVo u=memberDao.getMember(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editmember.jsp" method="post">
    <input type="hidden" name="ID" value="<%=u.getId() %>"/>
    <table>
        <tr><td>Name:</td><td><input type="text" name="Name" value="<%= u.getName()%>"/></td></tr>
        <tr><td>Age:</td><td><input type="text" name="Age" value="<%= u.getAge()%>" /></td></tr>
        <tr><td>E-mail:</td><td><input type="text" name="email" value="<%= u.getEmail()%>" /></td></tr>
        <tr><td>Content:</td><td><input type="text" name="content" value="<%= u.getContent()%>" /></td></tr>
        <tr><td colspan="2"><input type="submit" value="Edit Post"/>
            <input type="button" value="Cancel" onclick="history.back()"/></td></tr>
    </table>
</form>

</body>
</html>
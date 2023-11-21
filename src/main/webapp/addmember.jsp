<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<h1>Add New Member</h1>
<form action="add.jsp" method="post">
    <table>
        <tr><td>ID :</td><td><input type="text" name ="userID"></td></tr>
        <tr><td>PW :</td><td><input type="password" name = "userPW"></td></tr>
        <tr><td>Name :</td><td><input type="text" name ="Name"></td></tr>
        <tr><td>Age :</td><td><input type="text" name ="Age"></td></tr>
        <tr><td>Email:</td><td><input type="text" name="email"/></td></tr>
        <tr><td>자기 소개:</td><td><input type="text" name="content"></td></tr>
        <tr><td><a href="member.jsp">View All Records</a></td><td align="right"><input type="submit" value="Add Member"/></td></tr>
    </table>
</form>

</body>
</html>
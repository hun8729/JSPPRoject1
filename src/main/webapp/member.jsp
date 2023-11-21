<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDao, com.crud.bean.MemberVo,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>free board</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deletemember.jsp?id=' + id;
        }
    </script>
</head>
<body>
<h1>Member List</h1>
<%
    MemberDao memberDao = new MemberDao();
    List<MemberVo> list = memberDao.getMemberList();
    request.setAttribute("list",list);
%>
<table id="list" width="90%">
    <tr>
        <th>No</th>
        <th>UserID</th>
        <th>User Name</th>
        <th>Age</th>
        <th>Register Date</th>
        <th colspan="3" style="background-color: #008000; color: white; text-align: center;">
            <a href="addmember.jsp" style="color: white; text-decoration: none;">Add</a>
        </th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.getId()}</td>
            <td>${u.getUserID()}</td>
            <td>${u.getName()}</td>
            <td>${u.getAge()}</td>
            <td>${u.getRegdate()}</td>
            <td><a href="view.jsp?id=${u.getId()}">View</a></td>
            <td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
            <td><a href="javascript:delete_ok('${u.getId()}')">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDao"%>
<%@ page import="com.crud.bean.MemberVo" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.bean.MemberVo" />
<jsp:setProperty property="*" name="u"/>

<%
    u.setName(request.getParameter("Name"));
    u.setAge(request.getParameter("Age"));
    MemberDao memberDao = new MemberDao();
    int i = memberDao.insertMember(u);
    String msg = "데이터 추가 성공 !";
    if(i == 0) msg = "[에러] 데이터 추가 ";
%>

<script>
    alert('<%=msg%>');
    location.href='member.jsp';
</script>
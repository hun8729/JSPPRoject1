<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDao"%>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="u" class="com.crud.bean.MemberVo" />
<jsp:setProperty property="*" name="u"/>

<%
    u.setName(request.getParameter("Name"));
    u.setAge(request.getParameter("Age"));
    String idString = request.getParameter("ID");
    int id = Integer.parseInt(idString);
    u.setId(id);
    MemberDao MemberDao = new MemberDao();
    int i=MemberDao.updateMember(u);
    response.sendRedirect("member.jsp");
%>
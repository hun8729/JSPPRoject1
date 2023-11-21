<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@page import="com.crud.dao.MemberDao, com.crud.bean.MemberVo"%>
<%
    String sid = request.getParameter("id");
    if (sid != ""){
        int id = Integer.parseInt(sid);
        MemberVo u = new MemberVo();
        u.setId(id);
        MemberDao memberDao = new MemberDao();
        memberDao.deleteMember(u);
    }
    response.sendRedirect("member.jsp");
%>
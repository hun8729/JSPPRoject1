package com.crud.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;;

import com.crud.bean.MemberVo;
import com.crud.common.JDBCUtil;
public class MemberDao {
    private Connection  conn = null;
    private PreparedStatement stmt = null;
    private ResultSet rs = null;

    private final String Member_INSERT = "insert into Member (userID, userPW, Name, Age, email,content) values (?,?,?,?,?,?)";
    private final String Member_UPDATE = "update Member set Name=?, Age=?, email=?, content=? where ID=?";
    private final String Member_DELETE = "delete from Member  where ID=?";
    private final String Member_GET = "select * from Member where ID=?";
    private final String Member_LIST = "select * from Member order by ID desc";

    public int insertMember(MemberVo vo) {
        System.out.println("===> JDBC로 insertMember() 기능 처리");


        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_INSERT);
            stmt.setString(1,vo.getUserID());
            stmt.setString(2,vo.getUserPW());
            stmt.setString(3, vo.getName());
            stmt.setString(4, vo.getAge());
            stmt.setString(5,vo.getEmail());
            stmt.setString(6,vo.getContent());
            stmt.executeUpdate();
            return 1;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public void deleteMember(MemberVo vo) {
        System.out.println("===> JDBC로 deleteMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_DELETE);
            stmt.setInt(1, vo.getId());
            stmt.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public int updateMember(MemberVo vo) {
        System.out.println("===> JDBC로 updateMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_UPDATE);
            stmt.setString(1, vo.getName());
            stmt.setString(2, vo.getAge());
            stmt.setString(3,vo.getEmail());
            stmt.setString(4,vo.getContent());
            stmt.setInt(5,vo.getId());

            System.out.println(vo.getName() + "-" + vo.getAge() + "-" + vo.getEmail() +"-" + vo.getContent() + "-" + vo.getId());
            stmt.executeUpdate();
            return 1;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return 0;
    }
    public MemberVo getMember(int id) {
        MemberVo one = new MemberVo();
        System.out.println("===> JDBC로 getMember() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_GET);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if(rs.next()) {
                one.setId(rs.getInt("ID"));
                one.setUserID(rs.getString("userID"));
                one.setUserPW(rs.getString("userPW"));
                one.setName(rs.getString("Name"));
                one.setAge(rs.getString("Age"));
                one.setEmail(rs.getString("email"));
                one.setContent(rs.getString("content"));
                one.setRegdate(rs.getDate("Regdate"));
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return one;
    }
    public List<MemberVo> getMemberList(){
        List<MemberVo> list = new ArrayList<MemberVo>();
        System.out.println("===> JDBC로 getMemberList() 기능 처리");
        try {
            conn = JDBCUtil.getConnection();
            stmt = conn.prepareStatement(Member_LIST);
            rs = stmt.executeQuery();
            while(rs.next()) {
                MemberVo one = new MemberVo();
                one.setId(rs.getInt("ID"));
                one.setUserID(rs.getString("userID"));
                one.setUserPW(rs.getString("userPW"));
                one.setName(rs.getString("Name"));
                one.setAge(rs.getString("Age"));
                one.setRegdate(rs.getDate("regdate"));
                list.add(one);
            }
            rs.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }


}

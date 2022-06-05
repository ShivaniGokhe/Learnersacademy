package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Teacher;

public class TeacherDAO {

	public int insertteacher(Teacher s) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.getConn();
		String sql="insert into teacher values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getFirstname());
		ps.setString(3,s.getLastname());
		ps.setString(4,s.getDob());
		ps.setString(5,s.getAddress());
		ps.setString(6,s.getPhone());
		ps.setString(7,s.getDesignation());
		return ps.executeUpdate();
	}
	
	
	public List<Teacher> getallteachers() throws ClassNotFoundException, SQLException{
		ArrayList<Teacher> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		String sql="select * from teacher";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Teacher s=new Teacher();
			s.setId(rs.getString(1));
			s.setFirstname(rs.getString(2));
			s.setLastname(rs.getString(3));
			s.setDob(rs.getString(4));
			s.setAddress(rs.getString(5));
			s.setPhone(rs.getString(6));
			s.setDesignation(rs.getString(7));
			list.add(s);
			
		}
		return list;
	}
	
	public int update(Teacher s) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.getConn();
		
		
			String  sql = "update teacher set firstname=?, lastname=?, dob=?, address=?, phone=?, designation=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getFirstname());
			ps.setString(2,s.getLastname());
			ps.setString(3,s.getDob());
			ps.setString(4,s.getAddress());
			ps.setString(5,s.getPhone());
			ps.setString(6,s.getDesignation());
			ps.setString(7,s.getId());
			return ps.executeUpdate();
	}
	
	
	//delete
	
	  public int delete(Teacher s) throws ClassNotFoundException, SQLException
	  {
	  		Connection con=DbUtil.getConn();
			String  sql = "delete from teacher where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getId());
			return ps.executeUpdate();
	  }
}

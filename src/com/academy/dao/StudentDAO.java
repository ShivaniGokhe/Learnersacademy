package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Student;

public class StudentDAO {
	public int insertstudent(Student s) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.getConn();
		String sql="insert into student values(?,?,?,?,?,?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getFirstname());
		ps.setString(3,s.getLastname());
		ps.setString(4,s.getDob());
		ps.setString(5,s.getAddress());
		ps.setString(6,s.getPhone());
		ps.setString(7,s.getClasses());
		return ps.executeUpdate();
   }
	
	public List<Student> getallstudents() throws ClassNotFoundException, SQLException{
		ArrayList<Student> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		String sql="select * from student";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student s=new Student();
			s.setId(rs.getString(1));
			s.setFirstname(rs.getString(2));
			s.setLastname(rs.getString(3));
			s.setDob(rs.getString(4));
			s.setAddress(rs.getString(5));
			s.setPhone(rs.getString(6));
			s.setClasses(rs.getString(7));
			list.add(s);
			
		}
		return list;
   }
	public int update(Student s) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.getConn();
		
		
			String  sql = "update student set firstname=?, lastname=?, dob=?, address=?, phone=?, classes=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getFirstname());
			ps.setString(2,s.getLastname());
			ps.setString(3,s.getDob());
			ps.setString(4,s.getAddress());
			ps.setString(5,s.getPhone());
			ps.setString(6,s.getClasses());
			ps.setString(7, s.getId());
			return ps.executeUpdate();
	}
	
	
	//delete
	
	  public int delete(Student s) throws ClassNotFoundException, SQLException
	  {
	  		Connection con=DbUtil.getConn();
			String  sql = "delete from student where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getId());
			return ps.executeUpdate();
	  }	
	
}
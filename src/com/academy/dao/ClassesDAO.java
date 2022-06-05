package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Classes;
import com.academy.pojo.Subject;
import com.academy.pojo.Teacher;

public class ClassesDAO {

	public int insertclass(Classes s) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.getConn();
		String sql="insert into classes values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getName());
		return ps.executeUpdate();
	}
	
	
	public List<Classes> getallclasses() throws ClassNotFoundException, SQLException{
		ArrayList<Classes> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		String sql="select * from classes";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Classes s=new Classes();
			s.setId(rs.getString(1));
			s.setName(rs.getString(2));
			list.add(s);
			
		}
		return list;
	}
	
	public int update(Classes s) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.getConn();
		
		
			String  sql = "update classes set name=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getName());
			ps.setString(2, s.getId());
			return ps.executeUpdate();
	}
	
	
	//delete
	
	  public int delete(Classes s) throws ClassNotFoundException, SQLException
	  {
	  		Connection con=DbUtil.getConn();
			String  sql = "delete from classes where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getId());
			return ps.executeUpdate();
	  }
	  
}

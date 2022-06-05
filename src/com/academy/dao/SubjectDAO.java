package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Subject;

public class SubjectDAO {

	public int insertsubject(Subject s) throws ClassNotFoundException, SQLException {
		Connection con=DbUtil.getConn();
		String sql="insert into subject values(?,?)";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,s.getId());
		ps.setString(2,s.getName());
		return ps.executeUpdate();
	}
	
	
	public List<Subject> getallsubjects() throws ClassNotFoundException, SQLException{
		ArrayList<Subject> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		String sql="select * from subject";
		PreparedStatement ps=con.prepareStatement(sql);
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Subject s=new Subject();
			s.setId(rs.getString(1));
			s.setName(rs.getString(2));
			list.add(s);
			
		}
		return list;
	}
	
	public int update(Subject s) throws ClassNotFoundException, SQLException
	{
		Connection con=DbUtil.getConn();
		
		
			String  sql = "update subject set name=? where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getName());
			ps.setString(2, s.getId());
			return ps.executeUpdate();
	}
	
	
	//delete
	
	  public int delete(Subject s) throws ClassNotFoundException, SQLException
	  {
	  		Connection con=DbUtil.getConn();
			String  sql = "delete from subject where id=?";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getId());
			return ps.executeUpdate();
	  }
	 
}

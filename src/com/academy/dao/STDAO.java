package com.academy.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.pojo.Classes;
import com.academy.pojo.St;
import com.academy.pojo.Subject;
import com.academy.pojo.Teacher;
import com.academy.dbutil.DbUtil;

public class STDAO {

	//add subjects and teachers to classes
	  public int insertST(Classes c, Teacher t, Subject s) throws ClassNotFoundException, SQLException {
			Connection con=DbUtil.getConn();
			
			String sql="insert into st values(?,?,?)";
			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,s.getName());
			ps.setString(2,t.getFirstname());
			ps.setString(3,c.getName());
			
			String sql1="insert into classreport values(?,?,?)";
			PreparedStatement ps1=con.prepareStatement(sql1);
			ps1.setString(1,c.getName());
			ps1.setString(2,t.getFirstname());
			ps1.setString(3,s.getName());
			
			return ps.executeUpdate();
		}
	  
	  // get subject and teachers
/*
			public int insertclass(St s) throws ClassNotFoundException, SQLException {
				Connection con=DbUtil.getConn();
				String sql="insert into st values(?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,s.getSubject());
				ps.setString(2,s.getTeacher());
				ps.setString(3, s.getClasses());
				return ps.executeUpdate();
			}
			*/
			
			public List<St> getallst(St st) throws ClassNotFoundException, SQLException{
				ArrayList<St> list=new ArrayList<>();
				Connection con=DbUtil.getConn();
				//St st = new St();
				String sql="select * from st where classes=?";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1, st.getClasses());
				ResultSet rs=ps.executeQuery();
				while(rs.next()) {
					St s=new St();
					s.setSubject(rs.getString(1));
					s.setTeacher(rs.getString(2));
					s.setClasses(rs.getString(3));
					list.add(s);
					
				}
				//System.out.println(list);
				return list;
			}
			/*
			public int update(St s) throws ClassNotFoundException, SQLException
			{
				Connection con=DbUtil.getConn();
				
				
					String  sql = "update classes set subject=?, teacher=? where classes=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,s.getSubject());
					ps.setString(2, s.getTeacher());
					ps.setString(3, s.getClasses());
					return ps.executeUpdate();
			}*/
			
			
			//delete
			
			  public int delete(St s) throws ClassNotFoundException, SQLException
			  {
			  		Connection con=DbUtil.getConn();
					String  sql = "delete from st where classes=? and subject=? and teacher=?";
					PreparedStatement ps=con.prepareStatement(sql);
					ps.setString(1,s.getClasses());
					ps.setString(2,s.getSubject());
					ps.setString(3,s.getTeacher());
					return ps.executeUpdate();
			  }

}

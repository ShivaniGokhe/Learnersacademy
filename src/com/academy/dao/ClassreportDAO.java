package com.academy.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.academy.dbutil.DbUtil;
import com.academy.pojo.Classreport;
import com.academy.pojo.Student;

public class ClassreportDAO {

	public List<Classreport> getallclassreport(Classreport s) throws ClassNotFoundException, SQLException{
		ArrayList<Classreport> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		//Classreport s=new Classreport();
		//System.out.println("getter : "+s.getClasses());
		String sql="select * from classreport where classes=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, s.getClasses());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			s.setClasses(rs.getString(1));
			s.setSubject(rs.getString(2));
			s.setTeacher(rs.getString(3));
			list.add(s);
			
		}
		return list;
	}
	
	public List<Student> getallstudents(Student s) throws ClassNotFoundException, SQLException{
		ArrayList<Student> list=new ArrayList<>();
		Connection con=DbUtil.getConn();
		String sql="select * from student where classes=?";
		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1, s.getClasses());
		ResultSet rs=ps.executeQuery();
		while(rs.next()) {
			Student st=new Student();
			st.setId(rs.getString(1));
			st.setFirstname(rs.getString(2));
			st.setLastname(rs.getString(3));
			st.setDob(rs.getString(4));
			st.setAddress(rs.getString(5));
			st.setPhone(rs.getString(6));
			st.setClasses(rs.getString(7));
			list.add(st);
			
		}
		return list;
	}
	

}

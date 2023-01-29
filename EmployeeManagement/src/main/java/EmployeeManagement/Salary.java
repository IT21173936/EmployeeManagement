package EmployeeManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Salary {
	
	public static int InsertSalary(String id,String name, String salary, String ot, String excharge, String date,String msalary) {
		int isSuccess = 0;
		// connect DB
		String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "insert into salary values(0,'" + id + "','" + name + "','" + salary + "','" + ot + "','"
					+ excharge + "','" + date + "','" + msalary + "')";

			int at = stmt.executeUpdate(sql);

			if (at > 0) {

				isSuccess = 1;
			} else if (at < 0) {

				isSuccess = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return isSuccess;
	}
	
	public static int UpdateSalary(int sid,String eid,String name, String salary, String ot, String excharge, String date,String msalary) {
		
		   int result = 0;
		
		
		String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";
     
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement stmt = con.createStatement();	
			String sql = "update salary set idemployee = '"+eid+"',name = '"+name+"',salary = '"+salary+"',ot = '"+ot+"',excharge = '"+excharge+"',date = '"+date+"',monthlysalary = '"+msalary+"' where idsalary = '"+sid+"'";
			
			System.out.println("SQL Result: "+sql);
			int rs = stmt.executeUpdate(sql);
			System.out.println("SQL Result: "+rs);
			
			if(rs > 0) {
				result = 1;
			}
			else {
				result = 0;
			}
			
		
	}catch(Exception e){
		
		e.printStackTrace();
	}
		
		return result;
	}
	
	public static int DeleteSalary(int id) {
	    int result=0;
	    
	    String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "delete from salary where idsalary='"+id+"'" ;

			int rn = stmt.executeUpdate(sql);
			if(rn>0)
			{
				result=1;
			}
			else
			{
				result=0;
			}
			
		
	}catch(Exception e)
		
	    {
		e.printStackTrace();
	    }
		
		return result;
	}
}

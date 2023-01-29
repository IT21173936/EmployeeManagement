package EmployeeManagement;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class User {

	public static int InsertUser(String name, String address, String phone, String email,String password) {
		int isSuccess = 0;
		// connect DB
		String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "insert into admin values(0,'" + name + "','" + address + "','" + phone + "','"
					+ email + "','" + password + "')";

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
	
	public static int UpdateUser(int id,String name, String address,String phone,String email,String password) {
		
		   int result = 0;
		
		
		String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";
     
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url,user,pwd);
			
			Statement stmt = con.createStatement();	
			String sql = "update admin set name = '"+name+"',address = '"+address+"',phone = '"+phone+"',email = '"+email+"',password= '"+password+"' where idadmin = '"+id+"'";
			
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
	
	public static int DeleteUser(int id) {
	    int result=0;
	    
	    String url = "jdbc:mysql://localhost:3307/emp_db";
		String user = "root";
		String pwd = "5959865";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, user, pwd);

			Statement stmt = con.createStatement();
			String sql = "delete from admin where idadmin ='"+id+"'" ;

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

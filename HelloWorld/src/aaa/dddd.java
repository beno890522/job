package aaa;

import java.sql.*;

public class dddd {
    private Connection con=null;
    private String url="jdbc:mysql://localhost:3306/wlm?user=root&password=123123";//wlm是数据库的名称，密码设置自己的数据库密码
	public Connection getcon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");//a加载MySql的驱动类    
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("找不到MYSQL驱动类");
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection(url);//b连接数据库
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("连接失败！");
			e.printStackTrace();
		}
		System.out.println("连接成功！");
		return con;
	}
	//连接成功了，就来试一下查询数据
	public void chaxun()
	{
		String query = "select * from 09xinji where id=2";//c编写查找字符串
		 String bu;
		 Statement stmt=null;
		 ResultSet rs=null;
		try {
			stmt = con.createStatement();//d创建一个statement对象数据库操作对象
			rs=stmt.executeQuery(query);//e执行数据库查找操作
			while(rs.next())
	        {
				//f返回结果
				bu="学号:"+rs.getObject(2)+' '+"姓名:"+rs.getObject(3)+' '+"性别:"+rs.getObject(4)+"  年龄:"+rs.getObject(5);
				System.out.println(bu);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	    try {
			 
	    	//g一系列收尾工作
	    	rs.close();
			stmt.close();
			 con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	    }	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		  dddd sjk=new  dddd();
		  sjk.getcon();
		  sjk.chaxun();
		}
}

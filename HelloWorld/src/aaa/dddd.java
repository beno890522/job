package aaa;

import java.sql.*;

public class dddd {
    private Connection con=null;
    private String url="jdbc:mysql://localhost:3306/wlm?user=root&password=123123";//wlm�����ݿ�����ƣ����������Լ������ݿ�����
	public Connection getcon()
	{
		try {
			Class.forName("com.mysql.jdbc.Driver");//a����MySql��������    
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			System.out.println("�Ҳ���MYSQL������");
			e.printStackTrace();
		}
		try {
			con=DriverManager.getConnection(url);//b�������ݿ�
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.out.println("����ʧ�ܣ�");
			e.printStackTrace();
		}
		System.out.println("���ӳɹ���");
		return con;
	}
	//���ӳɹ��ˣ�������һ�²�ѯ����
	public void chaxun()
	{
		String query = "select * from 09xinji where id=2";//c��д�����ַ���
		 String bu;
		 Statement stmt=null;
		 ResultSet rs=null;
		try {
			stmt = con.createStatement();//d����һ��statement�������ݿ��������
			rs=stmt.executeQuery(query);//eִ�����ݿ���Ҳ���
			while(rs.next())
	        {
				//f���ؽ��
				bu="ѧ��:"+rs.getObject(2)+' '+"����:"+rs.getObject(3)+' '+"�Ա�:"+rs.getObject(4)+"  ����:"+rs.getObject(5);
				System.out.println(bu);
	        }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
	    try {
			 
	    	//gһϵ����β����
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

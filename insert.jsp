<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name=request.getParameter("name");
int age=request.getParameter("age");
String phone=request.getParameter("phone");

try
{
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sample", "root", "MYsqldb@123");
Statement st=conn.createStatement();

int i=st.executeUpdate("insert into sample_table(name,age,phonenumber)values('"+name+"',"+age+",'"+phone+"')");
out.println("Data is successfully inserted!");
}
catch(Exception e)
{
System.out.print(e);
System.out.println("CATCH EXECUTION!!");
e.printStackTrace();
}
%>
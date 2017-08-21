<!-- 用户登录出错处理等 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
	String url = "jdbc:mysql://localhost/wmybookshop";
	String user = "root";
	String password = "2233";
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;

	boolean flag = false;
	String id = request.getParameter("username");
	String mima = request.getParameter("password");

	String sql = "select * from wmybookshop_user where username=? and password=?";
	try {
		Class.forName("com.mysql.jdbc.Driver").newInstance();
		conn = DriverManager.getConnection(url, user, password);
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, mima);
		rs = pstmt.executeQuery();
		if (rs.next()) {
			//用户合法 
			flag = true;
			//将用户名保存到session中 
			request.getSession().setAttribute("username",
					rs.getString("username"));
		} else {
			//保存错误信息
			request.setAttribute("err", "错误的用户名及密码！");
		}
		rs.close();
		pstmt.close();
		conn.close();
	} catch (SQLException SE) {
		System.out.println("打开数据库失败!");
		SE.printStackTrace();
	} catch (InstantiationException e) {
		e.printStackTrace();
	} catch (IllegalAccessException e) {
		e.printStackTrace();
	} catch (ClassNotFoundException e) {
		e.printStackTrace();
	}
	if (flag == true) {
		response.sendRedirect("08_userloginsuccess.jsp");
	} else {
	%>
		<script type="text/javascript">
		alert("用户名不存在或密码错误！请重新登录！");
		window.location.href="08_userlogin.jsp";
		</script>
	<%
	}
%>
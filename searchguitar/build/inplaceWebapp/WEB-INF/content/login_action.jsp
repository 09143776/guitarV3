%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.demo.javabean.UserBean"   %>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<html>
  <head>
  <base href="<%=basePath%>">
  
    <title>My JSP 'login_action.jsp' starting page</title>
    

  </head>
  
  <body>
   
    <%
 

String username=request.getParameter("username");
String password=request.getParameter("password");


if(username==null||password==null)
{
	response.sendRedirect("loginform.jsp");
}

%>

<% 

//验证登录 
boolean isValid =false ;

UserBean userBean=new UserBean();

isValid =userBean.valid(username,password);



if(isValid)
{
	session.setAttribute("username",username);
	response.sendRedirect("welcome.jsp");

}
else

{
	response.sendRedirect("loginform.jsp");
}
%>
    
  </body>
</html>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="cn.edu.cumt.ec.entity.Items"%>
<%@ page import="cn.edu.cumt.ec.dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style type="text/css">
	   hr{
	    border-color:FF7F00; 
	   }
	   div{
	      float:left;
	      margin: 10px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
  </head>
  
  <body>
    <h1>鍟嗗搧灞曠ず</h1>
    <hr>
  
    <center>
    <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td>
          
          <!-- 鍟嗗搧寰幆寮€濮� -->
           <% 
               ItemsDAO itemsDao = new ItemsDAO(); 
               ArrayList<Items> list = itemsDao.getAllItems();
               if(list!=null&&list.size()>0)
               {
	               for(int i=0;i<list.size();i++)
	               {
	                  Items item = list.get(i);
           %>   
          <div>
             <dl>
               <dt>
                 <a href="details.jsp?id=<%=item.getId()%>"><img src="images/<%=item.getPicture()%>" width="120" height="90" border="1"/></a>
               </dt>
               <dd class="dd_name"><%=item.getName() %></dd> 
               <dd class="dd_city">浜у湴:<%=item.getCity() %>&nbsp;&nbsp;浠锋牸:锟� <%=item.getPrice() %></dd> 
             </dl>
          </div>
          <!-- 鍟嗗搧寰幆缁撴潫 -->
        
          <%
                   }
              } 
          %>
        </td>
      </tr>
    </table>
    </center>
  </body>
</html>

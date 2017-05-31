<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ page import="java.sql.*"%>  
  
<html>  
  <head>  
    <title>我的收藏夹</title>  
  </head>  
  <%  
            //加载数据库驱动
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    //建立数据库连接  
    String url ="jdbc:mysql://localhost:3306/leoshop?user=root&password=130223&useUnicode=true&characterEncoding=utf-8";  
    Connection conn= DriverManager.getConnection(url);  
    //建立一个Statement对象，用于执行SQL语句  
    Statement stat = conn.createStatement();  
    //执行查询并得到查询结果  
    String sql = "select * from leoshop_collect";  
    ResultSet rs = stat.executeQuery(sql);    
  %>     
  <body>  
    <h2>我的收藏</h2>  
    <hr>  
    <table border="1" width="600">  
        <tr bgcolor="#dddddd">  
            <td align="center" width="80">商品名称</td>   
            <td align="center">商品单价</td>  
            <td align="center" width="100">商品数量</td>  
            <td align="center" width="100">金额</td>  
            <td align="center" width="100">删除商品</td>  
       </tr>  
        <%  
            String id,name,count; 
        		int price,num;
        		int cp=0;
            //将查询结果集中的记录输出到页面上  
            while (rs.next()){  
                //从当前记录中读取各字段的值  
                id = rs.getString("id");  
                name = rs.getString("name");  
                price = rs.getInt("price");  
                num = rs.getInt("num");  
                count = rs.getString("count");  
                 cp=cp+num*price; 
                out.println("<tr>");  
                out.println("<td>"+ name +"</td>");  
                out.println("<td>"+ price +"</td>");  
                out.println("<td><input type=text value="+ num +" onChange=\"updatenum('"+id+"',this.value,'"+price+"')\"></td>");  
                out.println("<td>"+ count +"</td>");  
                out.println("<td><a href='shoucang?sp=del&id="+id+"'>退回商品架</a></td>");  
                out.println("</tr>");  
            }  
            out.println("<tr>");  
            out.println("<td>"+ "总计"+ "</td>");  
            out.println("<td>"+ cp+"元" +"</td>");
            out.println("</tr>"); 
        %>       
    </table>  
    <br>  
    <a href="index2">继续购物</a>    
    <a href="shoucang?sp=clear">清空我的收藏</a>              
  </body>  
  <script language="javascript">  
    function updatenum(id,num,price){  
        var url = "shoucang?sp=update&id="+id+"&num="+num+"&price="+price;  
        window.location = url;  
    }  
  </script>    
</html> 
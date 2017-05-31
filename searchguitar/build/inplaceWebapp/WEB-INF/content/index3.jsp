<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ page import="java.sql.*"%>  
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>手机专卖店</title>

    <meta name="description" content="Source code generated using layoutit.com">
    <meta name="author" content="LayoutIt!">

    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style3.css" rel="stylesheet">

  </head>
   <%  
    //装载MySQLJDBC驱动  
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    //建立数据库连接  
    String url ="jdbc:mysql://localhost:3306/leoshop?user=root&password=130223&useUnicode=true&characterEncoding=utf-8";  
    Connection conn= DriverManager.getConnection(url);  
    //建立一个Statement对象，用于执行SQL语句  
    Statement stat = conn.createStatement();  
    //执行查询并得到查询结果  
      String id,name,price,desc,img;
  %>     
  <body>

    <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<h3 class="text-center text-success">
				欢迎来到诚信手机专卖店
			</h3>
		</div>
	</div>
	<div class="row">
		<div class="col-md-8">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					 
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						
					</button> <a class="navbar-brand" href="index3">主页</a>
				</div>
				
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li class="active">
							<a href="#">三星</a>
						</li>
						<li>
							<a href="#">华为</a>
						</li>
					<li>
							<a href="#">小米</a>
						</li>
					</ul>
					<form class="navbar-form navbar-left" role="search">
						<div class="form-group">
							<input type="text" class="form-control">
						</div> 
						<button type="submit" class="btn btn-default">
							搜索商品
						</button>
					</form>
					<ul class="nav navbar-nav navbar-right">
				
						<li class="dropdown">
							<li>
							<a href="#">联系我们</a>
						</li> 
					</ul>
				</div>
				
			</nav>
            <span>
			<ul>
				<li>
					华为手机专场
				</li>
				<li>
					三星手机专场
				</li>
				<li>
					小米手机专场
				</li>
				
			</ul>
             </span>          
		</div>
        <hr/>
		<div class="col-md-4">
			 
			<button type="button" class="btn btn-default">
				用户登陆
			</button> 
			<button type="button" class="btn btn-default">
				用户注册
			</button> 
			<button type="button" class="btn btn-default">
				个人中心
			</button> 
			<button type="button" class="btn btn-default">
				管理员登陆
			</button> 
			<button type="button" class="btn btn-default">
				购物车管理
			</button>
		</div>
	</div>
	<div class="row">
        <table  width="600">  
        <tr bgcolor="#dddddd">  
            <td align="center" width="80">商品缩图</td>   
            <td align="center">商品摘要</td>  
            <td align="center" width="100">在线购买</td>  
        </tr>  
       
		<div class="col-md-4">
                <%  
          String sql3 = "select * from leoshop_product2";  
    ResultSet rs3 = stat.executeQuery(sql3);
              
            //将查询结果集中的记录输出到页面上  
            while (rs3.next()){  
                //从当前记录中读取各字段的值  
                img = rs3.getString("PIMG");  
                id = rs3.getString("ID");  
                name = rs3.getString("PNAME");  
                price = rs3.getString("PRICE");  
                desc= rs3.getString("PDESC");  
                  
                out.println("<tr>");  
                out.println("<td><img src='"+ img +"' border=0 height=220 width=220></td>");  
                out.println("<td>");  
                out.println("商品编号："+ id +"<br>");  
                out.println("商品名称："+ name +"<br>");  
                out.println("商品价格："+ price +"元<br>");  
                out.println("商品简介："+ desc +"<br>");  
                out.println("</td>");  
                out.println("<td><a href='buy?sp=add&r1="+name+"&r2="+price+"&bm="+id+"'>放入购物车</a></td>");  
                out.println("</tr>");  
            }  
        %>         
		</div>
		<div class="col-md-4">
		</div>
	</div>
</div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
  </body>
</html>
<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ page import="java.sql.*"%>  
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>找回密码</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script src="js/jquery.easydropdown.js"></script>
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
	<div class="header-top">
			<div class="wrap">
			  <div class="cssmenu">
				<ul>
					<li><a href="index">主页</a></li> 
					|
					<li><a href="checkout.html">购物车</a></li> 
					|
					<li><a href="checkout.html">支付</a></li> 
					|
					<li><a href="loginform1">登录</a></li> 
					|
					<li><a href="register">注册</a></li>
				</ul>
			</div>
			
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
		<div class="clear"></div>
 		</div>
	</div>
	 <div class="header-bottom">
	    <div class="wrap">
		  <div class="header-bottom-left">
				<div class="logo">
					<a href="index.html"><img src="images/logo.png" alt=""/></a>
				</div>				
				<div class="menu">
	          <ul class="megamenu skyblue">
			<li class="active grid"><a href="index.html">主页</a></li>
			<li><a class="color4" href="#">女士眼镜</a>
				<div class="megapanel">
					<div class="row">
						<div class="col1">
							<div class="h_nav">
								<h4>甜美</h4>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>可爱</h4>	
							</div>							
						</div>
						<div class="col1">
							<div class="h_nav">
								<h4>时尚</h4>	
							</div>												
						</div>
				  </div>
			  </div>
				</li>				
				<li><a class="color5" href="#">男士眼镜</a>
				  <div class="megapanel">
					<div class="col1">
							<div class="h_nav">
								<h4>英伦</h4>
							</div>							
				  </div>
						<div class="col1">
							<div class="h_nav">
								<h4>酷炫</h4>
							</div>							
						</div>
				  </div>
				</li>
				<li><a class="color6" href="other.html">联系我们</a></li>
			</ul>  

			</div>
		</div>
	      <div class="clear"></div>
     </div>
	</div>
          
		          <div class="clear"></div>
		    </form>
    
    
    
		<div class="footer-middle">
			<div class="wrap">
			 <div class="section group example">
			  <div class="col_1_of_f_1 span_1_of_f_1">
				 <div class="section group example">
				   <div class="col_1_of_f_2 span_1_of_f_2">
				      <h3>LEO SHOP</h3>
						<script>(function(d, s, id) {
						  var js, fjs = d.getElementsByTagName(s)[0];
						  if (d.getElementById(id)) return;
						  js = d.createElement(s); js.id = id;
						  js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
						  fjs.parentNode.insertBefore(js, fjs);
						}(document, 'script', 'facebook-jssdk'));</script>
						<div class="like_box">	
							<div class="fb-like-box" data-href="http://www.cssmoban.com/" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
						</div>
 				  </div>
				  <div class="clear"></div>
		      </div>
 			 </div>
			 <div class="col_1_of_f_1 span_1_of_f_1">
			   
		   </div>
		  <div class="clear"></div>
		    </div>
		  </div>
		</div>
		
   
</body>
</html>
		
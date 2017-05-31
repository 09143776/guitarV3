<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Checkout</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<!-- dropdown -->
<script src="js/jquery.easydropdown.js"></script>
</head>
<body>
       <div class="header-top">
			<div class="wrap">
			  <div class="cssmenu">
				<ul>
					<li class="active"><a href="login.html">账户</a></li> 
					|
					<li><a href="checkout.html">购物车</a></li> 
					|
					<li><a href="checkout.html">支付</a></li> 
					|
					<li><a href="login.html">登录</a></li> 
					|
					<li><a href="register.html">退出</a></li>
				</ul>
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
				<li><a class="color6" href="other.html">其它</a></li>
			</ul>
			</div>
		</div>
	        <div class="clear"></div>
     </div>
	</div>
         <div class="register_account">
           <div class="wrap">
    	     <h4 class="title">您的购物车是空的</h4>
    	     <p class="cart">您还没有添加任何商品在购物车中<br>请点击<a href="index.html"> 这里</a>去购物吧|</p>
    	   </div>
    	</div>
    <div class="footer">
		<div class="footer-top">
			<div class="wrap">
			  <div class="section group example">
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/2.png"><span class="f-text">我们致力于为您提供优质的服务</span>
					    <div class="clear"></div></li>
					</ul>
				</div>
				<div class="col_1_of_2 span_1_of_2">
					<ul class="f-list">
					  <li><img src="images/3.png"><span class="f-text">我们向您承诺七天无理由退换 </span>
					    <div class="clear"></div></li>
					</ul>
				</div>
				<div class="clear"></div>
		      </div>
			</div>
		</div>
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
			   <div class="section group example">
				 <div class="col_1_of_f_2 span_1_of_f_2">
				   <h3>联系我们</h3>
						<div class="company_address">
							   		<p>江苏省徐州市</p>
									<p>中国矿业大学</p>
					   		<p>QQ：870513252</p>
					 	 	<p>Email:870513252@qq.com</p>
					   		
					   </div>
					    <div class="social-media"> </div>
				 </div>
				<div class="clear"></div>
		    </div>
		   </div>
		  <div class="clear"></div>
		    </div>
		  </div>
		</div>
		<div class="footer-bottom">
		     <center> <p>&copy; 2016 中国矿业大学 
		     </center>
		        <div class="clear"></div>
		      </div>
			</div>
		</div>
<div style="display:none"></div>
</body>
</html>
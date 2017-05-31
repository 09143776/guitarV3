<%@ page language="java" contentType="text/html; charset=utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>商品详情1</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/form.css" rel="stylesheet" type="text/css" media="all" />
<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>
<script src="js/jquery1.min.js"></script>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
		<script type="text/javascript" id="sourcecode">
			$(function()
			{
				$('.scroll-pane').jScrollPane();
			});
		</script>
<!-- start details -->
<script src="js/slides.min.jquery.js"></script>
   <script>
		$(function(){
			$('#products').slides({
				preload: true,
				preloadImage: 'img/loading.gif',
				effect: 'slide, fade',
				crossfade: true,
				slideSpeed: 350,
				fadeSpeed: 500,
				generateNextPrev: true,
				generatePagination: false
			});
		});
	</script>
	<!-- start zoom -->
	<link rel="stylesheet" href="css/zoome-min.css" />
	<script type="text/javascript" src="js/zoome-e.js"></script>
	<script type="text/javascript">
		$(function(){
		$('#img1,#img2,#img3,#img4').zoome({showZoomState:true,magnifierSize:[250,250]});
	});
	</script>		
</head>
<body>
       <div class="header-top">
			<div class="wrap">
			  <div class="cssmenu">
				<ul>
					<li><a href="index">主页</a></li> 
					|
					<li><a href="#">购物车</a></li>  
					|
					<li><a href="loginform1">登录</a></li> 
					|
					<li><a href="register">注册</a></li>
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
<div class="mens">    
  <div class="main">
     <div class="wrap">
   	   <div class="cont span_2_of_3">
		  	<div class="grid images_3_of_2">
						<div id="container">
							<div id="products_example">
								<div id="products">
									<div><img src="images/pic3.jpg" alt="tupian " width="300" height="273"></div>
									<ul class="pagination">
										<li><a href="#"><img src="images/s1.jpg" width="s-img" alt="1144953 3 2x"></a></li>
										<li><a href="#"><img src="images/s2.jpg" width="s-img1" alt="1144953 3 2x"></a></li>
										<li><a href="#"><img src="images/s3.jpg" width="s-img2" alt="1144953 3 2x"></a></li>
										<li><a href="#"><img src="images/s4.jpg" width="s-img3" alt="1144953 1 2x"></a></li><div class="clear">
									</ul>
								</div>
							</div>
						</div>
          </div>
<div class="desc1 span_3_of_2">
		         	<h3 class="m_3">&nbsp;</h3>
		         	<h3 class="m_3">2016偏光时尚墨镜女方脸圆形大框蝶形太阳镜</h3>
         	  <p class="m_5">&nbsp;</p>
		             <p class="m_5">&nbsp;</p>
		             <p class="m_5">656元<span class="reducedfrom">284</span> </p>
		             <div class="btn_form">
						<form>
							<p>
							  <input type="submit" value="购买" title="">
						  </p>
					   </form>
					 </div>
	        <p class="m_text2">&nbsp;</p>
			     </div>
			   <div class="clear"></div>	
	           <div class="toogle">
     	<h3 class="m_3">商品详情</h3>
     	<p class="m_text">LEO SHOP 2016 最新设计的时尚眼镜，不仅可以为您预防紫外线的伤害，还可以让您在人群中与众不同，感受时尚最前沿的风向</p>
     	<p class="m_text">&nbsp;</p>
	           </div>
               <p>&nbsp;</p>
   	   </div>
			<div class="clear"></div>
			</div>
			 <div class="clear"></div>
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
					  <li><img src="images/3.png"><span class="f-text">我们向您承诺七天无理由退换</span>
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
			<div class="wrap">
	           <center><p>&copy; 2016 中国矿业大学<p> </center>    
		        <div class="clear"></div>
	      </div>
	  </div>
</div>
<div style="display:none"></div>
</body>
</html>
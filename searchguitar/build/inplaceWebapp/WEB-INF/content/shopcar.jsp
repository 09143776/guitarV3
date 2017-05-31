<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" import="java.sql.*,java.util.*,cn.edu.cumt.ec.entity.ShopCarNews,cn.edu.cumt.ec.service.ShopCar"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
	<html>
<head>
    <meta charset="UTF-8">
    <title>购物车</title>
    <link rel="stylesheet" href="css/shopcarstyle.css"/>
    <script type="text/javascript" src="js/shopcarscript.js"></script>
		<link href="css/style.css" rel='stylesheet' type='text/css' />
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
		</script>
		<!----webfonts---->
		
		<!----//webfonts---->
		<!----start-alert-scroller---->
		<script src="js/jquery.min.js"></script>
		<script type="text/javascript" src="js/jquery.easy-ticker.js"></script>
		<script type="text/javascript">
		$(document).ready(function(){
			$('#demo').hide();
			$('.vticker').easyTicker();
		});
		</script>
		<!----start-alert-scroller---->
		<!-- start menu -->
		<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
		<script type="text/javascript" src="js/megamenu.js"></script>
		<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
		<script src="js/menu_jquery.js"></script>
		<!-- //End menu -->
		<!---slider---->
		<link rel="stylesheet" href="css/slippry.css">
		<script src="js/jquery-ui.js" type="text/javascript"></script>
		<script src="js/scripts-f0e4e0c2.js" type="text/javascript"></script>
		<script>
			  jQuery('#jquery-demo').slippry({
			  // general elements & wrapper
			  slippryWrapper: '<div class="sy-box jquery-demo" />', // wrapper to wrap everything, including pager
			  // options
			  adaptiveHeight: false, // height of the sliders adapts to current slide
			  useCSS: false, // true, false -> fallback to js if no browser support
			  autoHover: false,
			  transition: 'fade'
			});
		</script>
		<!----start-pricerage-seletion---->
		<script type="text/javascript" src="js/jquery-ui.min.js"></script>
		<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
		<script type='text/javascript'>//<![CDATA[ 
			$(window).load(function(){
			 $( "#slider-range" ).slider({
			            range: true,
			            min: 0,
			            max: 500,
			            values: [ 100, 400 ],
			            slide: function( event, ui ) {  $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
			            }
			 });
			$( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) + " - $" + $( "#slider-range" ).slider( "values", 1 ) );
			
			});//]]>  
		</script>
		<!----//End-pricerage-seletion---->
		<!---move-top-top---->
		<script type="text/javascript" src="js/move-top.js"></script>
		<script type="text/javascript" src="js/easing.js"></script>
		<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
		<!---//move-top-top---->
	</head>
	<body>
		<!---start-wrap---->
			<!---start-header---->
			<div class="header">
				<div class="top-header">
					<div class="wrap">
						<div class="top-header-left">
							<ul>
								<!---cart-tonggle-script---->
								<script type="text/javascript">
									$(function(){
									    var $cart = $('#cart');
									        $('#clickme').click(function(e) {
									         e.stopPropagation();
									       if ($cart.is(":hidden")) {
									           $cart.slideDown("slow");
									       } else {
									           $cart.slideUp("slow");
									       }
									    });
									    $(document.body).click(function () {
									       if ($cart.not(":hidden")) {
									           $cart.slideUp("slow");
									       } 
									    });
									    });
								</script>
								<!---//cart-tonggle-script---->
								<li><a class="cart" href="Shopcar"><span id="clickme"> </span></a></li>
								<!---start-cart-bag---->
								<div id="cart">空购物车<span>(0)</span></div>
								<!---start-cart-bag---->
								<li><a class="info" href="#"><span> </span></a></li>
							</ul>
						</div>
						<div class="top-header-center">
							<div class="top-header-center-alert-left">
								<h3>特别提醒</h3>
							</div>
							<div class="top-header-center-alert-right">
								<div class="vticker">
								  <ul>
									 
									
								  	<li>欢迎您，<%=application.getAttribute("user_name")%></li>
								  </ul>

								</div>
							</div>
							<div class="clear"> </div>
						</div>
						<div class="top-header-right">
							<ul>
								<li><a  href="send_loginForm">登陆</a><span> </span></li>
								<li><a href="send_register">注册</a></li>
							</ul>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
				<!----start-mid-head---->
				<div class="mid-header">
					<div class="wrap">
						<div class="mid-grid-left">
							<form>
								<input type="text" placeholder="搜索" />
							</form>
						</div>
						<div class="mid-grid-right">
							<a class="logo" href="index.html"><span> </span></a>
						</div>
						<div class="clear"> </div>
					</div>
				</div>
<div align="center">
<table id="cartTable">
	    <thead>
        <tr>
            <th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
            <th>商品</th>
            <th>单价</th>
            <th>数量</th>
            <th>小计</th>
            <th>操作</th>
        </tr>
    </thead>	
     <tbody>	
			<%
				ShopCar ShopCarData=new ShopCar();
				List<ShopCarNews> list=ShopCar.QueryShopCar();	
				for(int i=0;i<list.size();i++) {
				ShopCarNews info=(ShopCarNews)list.get(i);
				int p=info.getProduct_price();int n=info.getProduct_number();
			
				int abc=p*n;
			%>
					
			<tr>
            <td class="checkbox"><input class="check-one check" type="checkbox"/></td><%--全选 --%>
            <td class="goods"><img src="<%=info.getProduct_img() %>" alt=""/><span> <%=info.getProduct_id()%></span><%--商品--%>
            <td class="price"><%=info.getProduct_price() %></td><%--商品价格--%>
            <td class="count">
                <span class="reduce"></span>
                <input class="count-input" name="product_number" type="text" value="<%=info.getProduct_number()%>"/>
                <span class="add">+</span>
             </td><%--商品数量 --%>
                
            <td class="subtotal"><%=abc%></td>
            <td class="operation"><form action="delete" method="post">
            <input type="hidden" name="delete_product_id" value="<%=info.getProduct_id()%>" />
            <input type="hidden" name="delete_user_name"  value="<%=info.getUser_name()%>"/>
            <input type="submit" value="删除"  /></form></td>
        </tr>
  					 <%} %>
    </tbody>
</table>

<div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
    <div class="fr closing"><a href="order">结 算</a></div>
    <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
    <div class="fr selected" id="selected">已选商品
        <span id="selectedTotal">0</span>件
        <span class="arrow up">︽</span>
        <span class="arrow down">︾</span>
    </div>
    <div class="selected-view">
        <div id="selectedViewList" class="clearfix">
            <!--<div><img src="images/1.jpg"><span>取消选择</span></div> -->
        </div>
        <span class="arrow">◆<span>◆</span></span>
    </div>
</div>
</div>
<!---- start-bottom-grids---->
		<div class="bottom-grids">
			<div class="bottom-top-grids">
				<div class="wrap">
					<div class="bottom-top-grid">
						<h4>帮助</h4>
						<ul>
							<li><a href="contact.html">联系客服</a></li>
							<li><a href="#">购买</a></li>
							<li><a href="#">NIKEiD</a></li>
							<li><a href="#">Nike+</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid">
						<h4>订单</h4>
						<ul>
							<li><a href="#">支付方式</a></li>
							<li><a href="#">快递</a></li>
							<li><a href="#">退货</a></li>
						</ul>
					</div>
					<div class="bottom-top-grid last-bottom-top-grid">
						<h4>注册</h4>
						<p>创建一个帐户来管理你所做的一切与耐克，从你的购物喜好您的Nike +活动。</p>
						<a class="learn-more" href="#">了解详情</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
			<div class="bottom-bottom-grids">
				<div class="wrap">
					<div class="bottom-bottom-grid">
						<h6>E邮箱注册</h6>
						<p>新产品和特别优惠。</p>
						<a class="learn-more" href="#">立即注册</a>
					</div>
					<div class="bottom-bottom-grid">
						<h6>优惠券</h6>
						<p>支持天猫点券</p>
						<a class="learn-more" href="#">查看优惠券</a>
					</div>
					<div class="bottom-bottom-grid last-bottom-bottom-grid">
						<h6>我们和你在一起</h6>
						<p>寻找耐克零售店或授权零售商。</p>
						<a class="learn-more" href="#">搜索</a>
					</div>
					<div class="clear"> </div>
				</div>
			</div>
		</div>
		<!---- //End-bottom-grids---->
		<!--- //End-content---->
		<!---start-footer---->
		<div class="footer">
			<p style=" text-align:center; color:#999">版权所有&copy;翻版必究&nbsp;所有者：闫士佳</p>
		</div>
		<!---//End-footer---->
		<!---//End-wrap---->

	
</body>
</html>
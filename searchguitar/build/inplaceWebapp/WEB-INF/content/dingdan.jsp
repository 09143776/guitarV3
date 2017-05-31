<%@ page contentType="text/html; charset=utf-8" language="java"
	errorPage=""%>
<%@ page import="cn.edu.cumt.ec.entity.Items,java.util.*"%>
<%@ page import="cn.edu.cumt.ec.entity.Cart"%>
<%@ page import="cn.edu.cumt.ec.dao.productlist"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<jsp:useBean id="productlist" class="cn.edu.cumt.ec.dao.productlist" />
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>我的订单</title>
<link type="text/css" rel="stylesheet" href="style/reset.css" />
<link type="text/css" rel="stylesheet" href="style/main.css" />
<script type="text/javascript" src="js/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript" src="js/ie6Fixpng.js"></script>
<script type="text/javascript" src="js/demo.js"></script>
<link rel="stylesheet" href="css/style2.css" />
</head>
<body class="grey">
	<div class="headerBar">
		<div class="topBar">
		</div>
		<div class="logoBar">
			<div class="comWidth">
				<div class="search_box fl">
					<input type="text" class="search_text fl" /> <input type="button"
						value="搜 索" class="search_btn fr" />
				</div>
			</div>
		</div>
	</div>
	<div align="center" class="catbox">

		<center>
			<h1>您的订单详情</h1>
		</center>


		<table id="cartTable">
			<thead>
				<tr>
					<th><label><input class="check-all check"
							type="checkbox" />&nbsp;全选</label></th>
					<th>商品</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>状态</th>
				</tr>
			</thead>
			<tbody>
				<%
					productlist Cartlist = new productlist();
					String name = (String) session.getAttribute("user");
					List<Cart> list = productlist.getCart(name);
					for (int i = 0; i < list.size(); i++) {
						Cart cart = (Cart) list.get(i);
				%>
				<tr>
					<td class="checkbox"><input class="check-one check"
						type="checkbox" name="goodsid"
						style="margin-left: 60px; margin-top: 40px;"
						value="<%=cart.getId()%>" /></td>
					<td class="items"><img src="images/<%=cart.getPicture()%>"
						width="200" height="160" alt="" /><span><%=cart.getName()%></span></td>
					<td class="price"><%=cart.getPrice()%></td>
					<td class="count"><span
							class="reduce">-</span></a> <input class="count-input" type="text"
						name="number<%=cart.getNum()%>" value="<%=cart.getNum()%>" />
						<input name="name" type="hidden" value="<%=cart.getName()%>" />
						<spanclass="add">+</span></a></td>
					<td class="subtotal"><%=cart.getPrice()%></td>
					<td class="operation"><span class="delete">删除</span></a></td>
				</tr>
				<%
					}
				%>

			</tbody>
		</table>

		<div class="foot" id="foot">
			<label class="fl select-all"><input type="checkbox"
				class="check-all check" />&nbsp;全选</label>
			<div class="fr closing">
				<a href="order">结 算</a>
			</div>
			<div class="fr total">
				合计：￥<span id="priceTotal">0.00</span>
			</div>
			<div class="fr selected" id="selected">
				已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span
					class="arrow down">︾</span>
			</div>
			<div class="selected-view">
				<div id="selectedViewList" class="clearfix">
					<div>
						<img src="images/1.jpg"><span>取消选择</span>
					</div>
				</div>
				<span class="arrow">◆<span>◆</span></span>
			</div>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<a href="index2"><button class="btn btn-block disabled"
							type="button">返回继续购物</button></a>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

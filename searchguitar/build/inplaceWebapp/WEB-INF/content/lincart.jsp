<%@ page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
<%@ page import="cn.edu.cumt.ec.entity.Product,java.util.*"%>
<%@ page import="cn.edu.cumt.ec.entity.Cart"%>
<%@ page import=" cn.edu.cumt.ec.entity.Oders"%>
<%@ page import="cn.edu.cumt.ec.dao.productList"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<jsp:useBean id="ProductList" class="cn.edu.cumt.ec.dao.productList" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
	"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8">
<title>购物车</title>
<link type="text/css" rel="stylesheet" href="style/reset.css">
<link type="text/css" rel="stylesheet" href="style/main.css">
<script type="text/javascript" src="js/demo.js"></script>
<link rel="stylesheet" href="css/style.css"/>
<!--[if IE 6]>

<![endif]-->
</head>

<body>
<div class="headerBar">
	<div class="topBar">
		<div class="comWidth">
			<div class="rightArea">
				<li>${sessionScope.user} 您好   </li>
			</div>
		</div>
	</div>
	<div class="logoBar">
		<div class="comWidth">
			<div class="logo fl">
				<a href="#"><img src="images/logo.jpg" alt="慕课网"></a>
			</div>
		</div>
	</div>
</div>
<div class="catbox">

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
            				productList productlist=new productList();
            			    String	name=(String)session.getAttribute("user");
            				
				    		List list=productlist.getCart(name);
							for(int i=0;i<list.size();i++){
							Cart cart=(Cart)list.get(i);
					%>
			<tr>
				<td class="checkbox"><input class="check-one check" type="checkbox" name="goodsid" style="margin-left:60px;margin-top:40px;" value="<%=cart.getId() %>"/></td>
				<td class="goods"><img src="images/<%=cart.getImage()%>" alt=""/><span><%=cart.getGoodsname() %></span></td>
				<td class="price"><%=cart.getPrice() %></td>
				<td class="count"><a href="Cutcart?id=<%=cart.getId()%>&number?<%=cart.getNumber() %>"><span class="reduce">-</span></a><input class="count-input" type="text" name="number<%=cart.getId()%>" value="<%=cart.getNumber() %>"/><input name="name" type="hidden"
								value="<%=cart.getName()%>"><a href="Addcart?id=<%=cart.getId()%>&number?<%=cart.getNumber() %>&name?<%=cart.getName()%>&goodsid?<%=cart.getGoodsname() %>"><span class="add">+</span></a></td>
				<td class="subtotal"><%=cart.getTotalPrice() %></td>
				<td class="operation"><a href="Deletecart?id=<%=cart.getId()%>"><span class="delete">删除</span></a></td>
			</tr>
            <%} %>

		</tbody>
	</table>
	
	<div class="foot" id="foot">
		<label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
		<div class="fr closing"><a href="order">结 算</a></div>
		<div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
		<div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
		<div class="selected-view">
			<div id="selectedViewList" class="clearfix">
				<div><img src="images/1.jpg"><span>取消选择</span></div>
			</div>
			<span class="arrow">◆<span>◆</span></span>
		</div>
	</div>
<div class="container-fluid">
	<div class="row-fluid">
		<div class="span12">
			 <a href="index2"><button class="btn btn-block disabled" type="button">返回继续购物</button></a>
		</div>
	</div>
</div>
</div>

</html>

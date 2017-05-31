<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>啊哈哈哈哈哈网购物车</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap.css.map" rel="stylesheet"  type="text/css">
</head>
<body>
<div class="container">
	<div class="row clearfix">
		<div class="col-md-12 column">
         <article id="content">
				<h2>Shopping cart</h2>
				<form action="createorder?consignee=<%=session.getAttribute("user") %>&tprice=56&tquantity=12" method="post" class="cart-a">
					<fieldset>
						<table class="table-a" style="z-index: 23;">
							<tbody><tr>
								<th class="a">Product Name</th>
								<th class="b">Quanlity</th>
								<th class="c"> Unit Price</th>
								<th class="d">Delete</th>
							</tr>
							<s:iterator id="crd" value="#request.crd">
							<tr>
							
								<td style="z-index: 22;">
									<div>
										<h3>The new fashion of D&amp;G</h3>
										<figure><img src="image/<s:property value="#crd.cimage"/>.jpg" alt="Placeholder" width="232" height="167"></figure>
										<p><span class="rating-d a"><s:property value="#crd.cname"/></span> </p>
									</div>
								</td>
								<td style="z-index: 21;">
								<input type="text" class="form-control" name="cquantity" id="quantity"  placeholder=" <s:property value="#crd.cquantity"/>"/>	
								</td>
								<td style="z-index: 20;"><s:property value="#crd.cprice"/></td>
								<td style="z-index: 19;"><a class="icon-a" href="deletecart.action?cid="1">Delete</a></td>
							</tr>
						</s:iterator>
						</tbody>
					</table>

						<ul class="list-b" style="z-index: 2;">
							<li class="a"><span>Total :</span> $1098.00</li>
						</ul>
						
						<div class="container">
	<div class="row clearfix">
		<div class="col-md-8 column">
		</div>
		<div class="col-md-4 column">
			<div style="display: block;">
									<p style="z-index: 9;">Enter your destination to get a shipping estimate...</p>
									</p>
									<p style="z-index: 6;">
										<label for="address">收货地址<span> *</span></label>
										<input type="text" name="address" id="address"/>
									</p>
						</div>
				<p class="link-c" ><a href="S">继续购物</a>
				<button type="submit">购买并生成订单</button></p>
		</div>
	</div>
</div>
							
						
					</fieldset>
				</form>
       		 
		</article>		
		</div>
	</div>
</div>

    <script src="js/jquery-3.0.0.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>


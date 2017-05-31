<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@page import="cn.edu.cumt.sdy.action.loginAction"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>...</title>
    <link href="css/bootstrap.min.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.css" rel="stylesheet"  type="text/css">
    <link href="css/bootstrap-theme.min.css" rel="stylesheet"  type="text/css">
</head>
<body>

<main class="container" id="main" role="main">
<div class="row"><article><div class="row">
<div class="col-xs-12 heading-wrapper">
<h1 class="big-heading">Small, however tasteful</h1>

</div>
</div>
<s:iterator id="pplist" value="#request.pplist">
<form  action="cartadd1?cname=<s:property value="#pplist.pname"/>&cprice=<s:property value="#pplist.price"/>&cimage=<s:property value="#pplist.imagea"/>&cid=<s:property value="#pplist.pid"/>&ccname=<%=session.getAttribute("user") %>" name="cartjsp" method="post">
<div class="col-sm-6">
<p> 
<strong class="sub-heading">产品名称：<s:property value="#pplist.pname"/></strong><br/>product</p>
<p> 
<strong class="sub-heading">价格:￥<s:property value="#pplist.price"/></strong><br> price</p><p> 
<strong class="sub-heading">尺码：<s:property value="#pplist.size"/></strong><br> Size</p><p> 
<strong class="sub-heading">颜色：<s:property value="#pplist.color"/></strong><br>color</p><p> 
<strong class="sub-heading">商品评价</strong><br> Evaluate</p>
<strong class="sub-heading">数量：<input type="text" class="form-control" name="cquantity" id="cquantity" /></strong><br>quantity</p>
<p class="link-a"> <button type="submit"><Strong class="glyphicon glyphicon-blackboard">&nbsp;</strong><strong class="sub-heading">加入购物车</strong><br> Trolley</p></button>
</div>
<div class="col-sm-6 text-block"><p><s:property value="#pplist.style"/></p></div></div>
 <figure> 
 <img src="image/<s:property value="#pplist.imageaa"/>.jpg" alt="Zipfel_Bier_Pale_Ale" width="1520" height="1020" class="alignnone size-full wp-image-2153"> 
 <img src="image/<s:property value="#pplist.imageab"/>.jpg" alt="Zipfel_Bier_Pale_Ale_2" width="1520" height="1020" class="alignnone size-full wp-image-2152"> 
 <img src="image/<s:property value="#pplist.imageac"/>.jpg" alt="Zipfel_Bier_Black_Zipfel" width="1520" height="1020" class="alignnone size-full wp-image-2150"> 
 </figure> 
 </article>
 </div> 
</form>
</s:iterator>
 </main>    
 <script src="js/jquery-3.0.0.js"></script>
    <script src="js/jquery-3.0.0.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>
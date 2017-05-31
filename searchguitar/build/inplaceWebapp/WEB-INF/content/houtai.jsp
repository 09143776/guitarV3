<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!DOCTYPE html>
    <%@ page import="cn.edu.cumt.ec.entity.Items"%>
<%@ page import="cn.edu.cumt.ec.dao.ItemsDAO"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
	<meta charset="UTF-8">
	<title>后台商品添加管理</title>
	<link rel="stylesheet" type="text/css" href="css/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="css/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.easyui.min.js"></script>
	<style type="text/css">
	   div{
	      float:left;
	      margin: 10px;
	   }
	   div dd{
	      margin:0px;
	      font-size:10pt;
	   }
	   div dd.dd_name
	   {
	      color:blue;
	   }
	   div dd.dd_city
	   {
	      color:#000;
	   }
	</style>
	</head>
<body>
	<h2>管理员的商品添加</h2>
	<p>请根据数据库输出的商品添加商品</p>
	<div style="margin:20px 0;"></div>
	<form action ="Houtai1" method="post">
	<div class="easyui-panel" title="添加商品" style="width:400px;padding:30px 60px">
		<div style="margin-bottom:20px">
			<div>商品ID</div>
			<input class="easyui-textbox" name="id" data-options="prompt:'请注意商品ID为主键不可重复！'" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>商品名称</div>
			<input class="easyui-textbox" name="name" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
			<div>产地</div>
			<input class="easyui-textbox"  name="city" style="width:100%;height:32px">
		</div>
		
		<div style="margin-bottom:20px">
			<div>价格</div>
			<input class="easyui-textbox" name="price" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
		<div>库存</div>
			<input class="easyui-textbox" name="number" style="width:100%;height:32px">
		</div>
		<div style="margin-bottom:20px">
		<div>图片</div>
			<input class="easyui-textbox"  name="picture" style="width:100%;height:32px">
		</div>
	<div style="margin-bottom:20px">
		<div>类别ID</div>
			<input class="easyui-textbox" name="cid" style="width:100%;height:32px">
		</div>
		  <input type="submit" value="上架">
		</div>

	</form>
	<table>
<table   width="1250" height="60" cellpadding="0" cellspacing="0" border="0">
      <tr>
        <td>
          
          <!-- 商品循环开始 -->
          <%  
              
               ItemsDAO itemsDao = new ItemsDAO(); 
               ArrayList<Items> list = itemsDao.getAllItems();
               if(list!=null&&list.size()>0)
               {
	               for(int i=0;i<list.size();i++)
	               {
	                  Items item = list.get(i);
           %>   
          <div>
             <dl>
               <dt>
                 <a href="details?id=<%=item.getId()%>"><img src="images/<%=item.getPicture()%>" width="100" height="100" border="1"/></a>
               </dt>
               <dd class="dd_name"><%=item.getName() %>
               <dd class="dd_city">产地:<%=item.getCity() %>&nbsp;&nbsp;价格:￥ <%=item.getPrice() %></dd> 
                <dd class="dd_city">库存:<%=item.getNumber() %>&nbsp;&nbsp;商品ID: <%=item.getId() %></dd> 
                 <dd class="dd_city">类别ID:<%=item.getCid() %></dd>   
             </dl>
          </div>
          <!-- 商品循环结束 -->
        
          <%
                   }
              } 
          %>
        </td>
      </tr>
    </table>
</table>
</body>
</html>
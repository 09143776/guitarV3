<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%><!DOCTYPE html>
    <%@ page import="cn.edu.cumt.ec.entity.Items"%>
<%@ page import="cn.edu.cumt.ec.dao.ItemsDAO"%>
<%@ page import="java.util.ArrayList"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="keywords" content="jquery,ui,easy,easyui,web">
	<meta name="description" content="easyui help you build your web page easily!">
	<title>jQuery EasyUI Demo</title>
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/icon.css">
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.4.4.min.js"></script>
	<script type="text/javascript" src="http://www.w3cschool.cc/try/jeasyui/jquery.easyui.min.js"></script>
	<script>
		function formatPrice(val,row){
			if (val < 20){
				return '<span style="color:red;">('+val+')</span>';
			} else {
				return val;
			}
		}
	</script>
</head>
<body>
	<h1>后台管理：添加商品</h1>
	<form action="Houtai1" method="get">
	<table id="tt" title="请根据以下图片展示添加商品" class="easyui-datagrid" style="width:550px;height:250px"
			singleSelect="true" iconCls="icon-save">
		<thead>
			<tr>
				<th field="id" width="80">商品ID</th>
				<th field="name" width="80">商品名称</th>
				<th field="city" width="80" align="right" formatter="formatPrice">产地</th>
				<th field="price" width="80" align="right">价格</th>
				<th field="number" width="100">库存</th>
				<th field="picture" width="60" align="center">图片</th>
				<th field="cid" width="60" align="center">商品类别</th>
			</tr>
			<tr>
			    <th field="id" width="80"><input class="easyui-textbox" name="id" data-options="prompt:'请注意商品ID为主键不可重复！'" style="width:100%;height:32px">商品ID</th>
				<th field="name" width="80"><input class="easyui-textbox" name="name" style="width:100%;height:32px">商品名称</th>
				<th field="city" width="80" align="right" formatter="formatPrice"><input class="easyui-textbox"  name="city" style="width:100%;height:32px">产地</th>
				<th field="price" width="80" align="right"><input class="easyui-textbox" name="price" style="width:100%;height:32px">价格</th>
				<th field="number" width="100"><input class="easyui-textbox" name="number" style="width:100%;height:32px">库存</th>
				<th field="picture" width="60" align="center"><input class="easyui-textbox"  name="picture" style="width:100%;height:32px">图片</th>
				<th field="cid" width="60" align="center"><input class="easyui-textbox"  name="cid" style="width:100%;height:32px">商品类别</th>
				
			</tr>
		</thead>
	</table>
	<div id="tb">
	     <input type="submit" value="添加"/>
    </div>
    </form>
   
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
          <div align="center">
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
</body>
</html>
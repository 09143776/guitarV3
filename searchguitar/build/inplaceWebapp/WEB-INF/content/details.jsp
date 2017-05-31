<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8" %>
<%@ page import="cn.edu.cumt.ec.entity.Items"%>
<%@ page import="cn.edu.cumt.ec.dao.ItemsDAO"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>LEOSHOP商品详情</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="css/main.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="js/lhgcore.js"></script>
    <script type="text/javascript" src="js/lhgdialog.js"></script>
    <script type="text/javascript">
      function selflog_show(id)
      { 
         var num =  document.getElementById("number").value; 
         J.dialog.get({id: 'haoyue_creat',title: '购物成功',width: 600,height:400, link: '<%=path%>/cn/edu/cumt/ec/servlet/CartServlet?id='+id+'&num='+num+'&action=add', cover:true});
      }
      function add()
      {
         var num = parseInt(document.getElementById("number").value);
         if(num<100)
         {
            document.getElementById("number").value = ++num;
         }
      }
      function sub()
      {
         var num = parseInt(document.getElementById("number").value);
         if(num>1)
         {
            document.getElementById("number").value = --num;
         }
      }
     
    </script>
	
    <style type="text/css">
	   hr{
	     
	     border-color:FF7F00; 
	   }
	   
	   div{
	      float:left;
	      margin-left: 30px;
	      margin-right:30px;
	      margin-top: 5px;
	      margin-bottom: 5px;
	     
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
	   div #cart
	   {
	     margin:0px auto;
	     text-align:right; 
	   }
	   span{
	     padding:0 2px;border:1px #c0c0c0 solid;cursor:pointer;
	   }
	   a{
	      text-decoration: none; 
	   }
	</style>
  </head>
  
  <body>
    <h1>LEOSHOP商品详情</h1>
    <a href="index">首页</a> >> <a href="index2">商品列表</a>
    <hr>
    <center>
      <table width="750" height="60" cellpadding="0" cellspacing="0" border="0">
        <tr>
          <!-- 商品详情 -->
          <% 
             ItemsDAO itemDao = new ItemsDAO();
             Items item = itemDao.getItemsById(Integer.parseInt(request.getParameter("id")));
             if(item!=null)
             {
          %>
          <td width="70%" valign="top">
             <table>
               <tr>
                 <td rowspan="5"><img src="images/<%=item.getPicture()%>" width="200" height="160"/></td>
               </tr>
               <tr>
                 <td><B><%=item.getName() %></B></td> 
               </tr>
               <tr>
                 <td>产地：<%=item.getCity()%></td>
               </tr>
               <tr>
                 <td>价格：<%=item.getPrice() %>￥</td>
               </tr>
               <tr>
                 <td>购买数量：
                 <span id="sub" onclick="sub();">-</span>
                 	<input type="text" id="number" name="number" value="1" size="2"/>
                 <span id="add" onclick="add();">+</span>
                 </td>
               </tr> 
             </table>
			  <div id="cart">
			  <form action="AddCart" method="post">
			  <input type="hidden" value="<%=item.getId()%>" name="id"/>
			  <input type="hidden" value="<%=session.getAttribute("user")%>" name="name"/>
			  <input type="hidden" value="<%=item.getName()%>" name="pname"/>
			  <input type="hidden" value="<%=item.getPrice()%>" name="price"/>
			  <input type="hidden" value="<%=item.getNumber()%>" name="num"/>
			  <input type="hidden" value="<%=item.getPrice()%>" name="totalprice"/>
			  <input type="hidden" value="<%=item.getPicture()%>" name="picture"/>
              <input type="submit" value="加入购物车"/>
              <a href="cart2">查看购物车</a>
              <a href='shoucang?sp=add&r1=<%=item.getName() %>&r2=<%=item.getPrice() %>&bm=<%=item.getId() %>&r3="1"'>加入收藏</a>
              </form>
             </div>
             <div><br/>
                <img src="images/<%=item.getPicture1()%>" width="200" height="160"/>
                <img src="images/<%=item.getPicture2()%>" width="200" height="160"/>
             </div>
          </td>
          <% 
            }
          %>
        <% 
              String list ="";
              //从客户端获得Cookies集合
              Cookie[] cookies = request.getCookies();
              //遍历这个Cookies集合
              if(cookies!=null&&cookies.length>0)
              {
	              for(Cookie c:cookies)
	              {
	                  if(c.getName().equals("ListViewCookie"))
	                  {
	                     list = c.getValue();
	                  }
	              }
	          }
              
              list+=request.getParameter("id")+",";
              //如果浏览记录超过1000条，清零.
              String[] arr = list.split(",");
              if(arr!=null&&arr.length>0)
              {
                  if(arr.length>=1000)
                  {
                      list="";
                  }
              }
              Cookie cookie = new Cookie("ListViewCookie",list);
              response.addCookie(cookie);
          
          %>
          <!-- 浏览过的商品 -->
          <td width="30%" bgcolor="#EEE" align="center">
             <br>
             <b><font color="#FF7F00">您浏览过的商品</font></b><br>
             <!-- 循环开始 -->
             <% 
                ArrayList<Items> itemlist = itemDao.getViewList(list);
                if(itemlist!=null&&itemlist.size()>0 )
                {
                   System.out.println("itemlist.size="+itemlist.size());
                   for(Items i:itemlist)
                   {
                         
             %>
             <div>
             <dl>
               <dt>
                 <a href="details?id=<%=i.getId()%>"><img src="images/<%=i.getPicture() %>" width="120" height="90" border="1"/></a>
               </dt>
               <dd class="dd_name"><%=i.getName() %></dd> 
               <dd class="dd_city">产地:<%=i.getCity() %>&nbsp;&nbsp;价格:<%=i.getPrice() %> ￥ </dd> 
             </dl>
             </div>
             <% 
                   }
                }
             %> 
               
             <!-- 循环结束 -->
          </td>
        </tr>
      </table>
    </center>
  </body>
</html>

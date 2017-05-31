<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>  
<%@ page import="java.sql.*"%>  
<%  
    //装载MySQL5.5的JDBC驱动  
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    //建立数据库连接  
    String url ="jdbc:mysql://localhost:3306/leoshop?user=root&password=130223&useUnicode=true&characterEncoding=utf-8";  
    Connection conn= DriverManager.getConnection(url);  
    PreparedStatement pstat = null;  
    ResultSet rs = null;  
    String sql = null;  
    String sp = request.getParameter("sp");  
       
    
    	
 if (sp.equals("add")){  
        //从商品库中取出所选购商品的数据  
        String bm = request.getParameter("bm");  
        String name=request.getParameter("r1"); 
        String price=request.getParameter("r2");
        
      
       
        //将所选购商品加入到购物车中  
        sql = "insert into leoshop_collect(name,price,num,count) values(?,?,?,?)";  
        pstat = conn.prepareStatement(sql);  
        pstat.setString(1,name);  
        pstat.setString(2,price);  
        pstat.setInt(3,1);  
        pstat.setString(4,price);  
        pstat.executeUpdate();  
        pstat.close();  
          
        //关闭数据库连接  
        conn.close();  
          
        //重定向到购物车页面  
        response.sendRedirect("collect");    
    }
    //更改商品的数量  
    if (sp.equals("update")){  
        int id = Integer.parseInt(request.getParameter("id"));  
        int num = Integer.parseInt(request.getParameter("num"));  
        double price=Double.parseDouble(request.getParameter("price"));  
        sql = "update leoshop_collect set num = ?, count = ? where id=?";  
        pstat = conn.prepareStatement(sql);  
        pstat.setInt(1,num);  
        pstat.setString(2,new Double(price*num).toString());  
        pstat.setInt(3,id);  
        pstat.executeUpdate();  
        pstat.close();  
          
        //关闭数据库连接  
        conn.close();  
          
        //重定向到购物车页面  
        response.sendRedirect("collect");  
    }     
      
    //将商品退回到商品架(将商品从购物车中删除)  
    if (sp.equals("del")){  
        int id = Integer.parseInt(request.getParameter("id"));  
        sql = "delete from leoshop_collect where id=?";  
        pstat = conn.prepareStatement(sql);  
        pstat.setInt(1,id);  
        pstat.executeUpdate();  
        pstat.close();    
          
        //关闭数据库连接  
        conn.close();  
          
        //重定向到购物车页面  
        response.sendRedirect("collect");  
    }  
      
    //清空购物车  
    if (sp.equals("clear")){  
        sql = "delete from leoshop_collect";  
        pstat = conn.prepareStatement(sql);  
        pstat.executeUpdate();  
        pstat.close();  
          
        //关闭数据库连接  
        conn.close();  
          
        //重定向到购物车页面  
        response.sendRedirect("collect");  
    }  
%>   
/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.0.23
 * Generated at: 2016-07-13 01:08:09 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.content;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import java.sql.*;

public final class index4_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("/WEB-INF/lib/struts2-core-2.3.16.3.jar", Long.valueOf(1467008831222L));
    _jspx_dependants.put("jar:file:/D:/电商实践软件/gradle-2.11/caches/modules-2/files-2.1/org.apache.struts/struts2-core/2.3.16.3/3cf0054960a5959e569695bf70c41eab89aeda75/struts2-core-2.3.16.3.jar!/META-INF/struts-tags.tld", Long.valueOf(1399022628000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("java.sql");
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("java.util");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

final java.lang.String _jspx_method = request.getMethod();
if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
return;
}

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("  \r\n");
      out.write("  \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<title>找回密码</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Exo+2' rel='stylesheet' type='text/css'>\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery1.min.js\"></script>\r\n");
      out.write("<!-- start menu -->\r\n");
      out.write("<link href=\"css/megamenu.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\" />\r\n");
      out.write("<script type=\"text/javascript\" src=\"js/megamenu.js\"></script>\r\n");
      out.write("<script>$(document).ready(function(){$(\".megamenu\").megamenu();});</script>\r\n");
      out.write("<script src=\"js/jquery.easydropdown.js\"></script>\r\n");
      out.write("</head>\r\n");
  
    //装载MySQLJDBC驱动  
    Class.forName("com.mysql.jdbc.Driver").newInstance();  
    //建立数据库连接  
    String url ="jdbc:mysql://localhost:3306/leoshop?user=root&password=130223&useUnicode=true&characterEncoding=utf-8";  
    Connection conn= DriverManager.getConnection(url);  
    //建立一个Statement对象，用于执行SQL语句  
    Statement stat = conn.createStatement();  
    //执行查询并得到查询结果  
      String id,name,price,desc,img;
  
      out.write("     \r\n");
      out.write("<body> \r\n");
      out.write("\t<div class=\"header-top\">\r\n");
      out.write("\t\t\t<div class=\"wrap\">\r\n");
      out.write("\t\t\t  <div class=\"cssmenu\">\r\n");
      out.write("\t\t\t\t<ul>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"index\">主页</a></li> \r\n");
      out.write("\t\t\t\t\t|\r\n");
      out.write("\t\t\t\t\t<li><a href=\"checkout.html\">购物车</a></li> \r\n");
      out.write("\t\t\t\t\t|\r\n");
      out.write("\t\t\t\t\t<li><a href=\"checkout.html\">支付</a></li> \r\n");
      out.write("\t\t\t\t\t|\r\n");
      out.write("\t\t\t\t\t<li><a href=\"loginform1\">登录</a></li> \r\n");
      out.write("\t\t\t\t\t|\r\n");
      out.write("\t\t\t\t\t<li><a href=\"register\">注册</a></li>\r\n");
      out.write("\t\t\t\t</ul>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t\r\n");
      out.write("        <table  width=\"600\">  \r\n");
      out.write("        <tr bgcolor=\"#dddddd\">  \r\n");
      out.write("            <td align=\"center\" width=\"80\">商品缩图</td>   \r\n");
      out.write("            <td align=\"center\">商品摘要</td>  \r\n");
      out.write("            <td align=\"center\" width=\"100\">在线购买</td>  \r\n");
      out.write("        </tr>  \r\n");
      out.write("       \r\n");
      out.write("\t\t<div class=\"col-md-4\">\r\n");
      out.write("                ");
  
          String sql3 = "select * from leoshop_product2";  
    ResultSet rs3 = stat.executeQuery(sql3);
              
            //将查询结果集中的记录输出到页面上  
            while (rs3.next()){  
                //从当前记录中读取各字段的值  
                img = rs3.getString("PIMG");  
                id = rs3.getString("ID");  
                name = rs3.getString("PNAME");  
                price = rs3.getString("PRICE");  
                desc= rs3.getString("PDESC");  
                  
                out.println("<tr>");  
                out.println("<td><img src='"+ img +"' border=0 height=220 width=220></td>");  
                out.println("<td>");  
                out.println("商品编号："+ id +"<br>");  
                out.println("商品名称："+ name +"<br>");  
                out.println("商品价格："+ price +"元<br>");  
                out.println("商品简介："+ desc +"<br>");  
                out.println("</td>");  
                out.println("<td><a href='buy?sp=add&r1="+name+"&r2="+price+"&bm="+id+"'>放入购物车</a></td>");  
                out.println("</tr>");  
            }  
        
      out.write("         \r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"clear\"></div>\r\n");
      out.write(" \t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t <div class=\"header-bottom\">\r\n");
      out.write("\t    <div class=\"wrap\">\r\n");
      out.write("\t\t  <div class=\"header-bottom-left\">\r\n");
      out.write("\t\t\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t\t\t<a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\"/></a>\r\n");
      out.write("\t\t\t\t</div>\t\t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"menu\">\r\n");
      out.write("\t          <ul class=\"megamenu skyblue\">\r\n");
      out.write("\t\t\t<li class=\"active grid\"><a href=\"index.html\">主页</a></li>\r\n");
      out.write("\t\t\t<li><a class=\"color4\" href=\"#\">女士眼镜</a>\r\n");
      out.write("\t\t\t\t<div class=\"megapanel\">\r\n");
      out.write("\t\t\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col1\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"h_nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4>甜美</h4>\t\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col1\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"h_nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4>可爱</h4>\t\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col1\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"h_nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4>时尚</h4>\t\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t  </div>\r\n");
      out.write("\t\t\t\t</li>\t\t\t\t\r\n");
      out.write("\t\t\t\t<li><a class=\"color5\" href=\"#\">男士眼镜</a>\r\n");
      out.write("\t\t\t\t  <div class=\"megapanel\">\r\n");
      out.write("\t\t\t\t\t<div class=\"col1\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"h_nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4>英伦</h4>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"col1\">\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"h_nav\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<h4>酷炫</h4>\r\n");
      out.write("\t\t\t\t\t\t\t</div>\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t<li><a class=\"color6\" href=\"other.html\">联系我们</a></li>\r\n");
      out.write("\t\t\t</ul>  \r\n");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t      <div class=\"clear\"></div>\r\n");
      out.write("     </div>\r\n");
      out.write("\t</div>\r\n");
      out.write("          \r\n");
      out.write("\t\t          <div class=\"clear\"></div>\r\n");
      out.write("\t\t    </form>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("\t\t<div class=\"footer-middle\">\r\n");
      out.write("\t\t\t<div class=\"wrap\">\r\n");
      out.write("\t\t\t <div class=\"section group example\">\r\n");
      out.write("\t\t\t  <div class=\"col_1_of_f_1 span_1_of_f_1\">\r\n");
      out.write("\t\t\t\t <div class=\"section group example\">\r\n");
      out.write("\t\t\t\t   <div class=\"col_1_of_f_2 span_1_of_f_2\">\r\n");
      out.write("\t\t\t\t      <h3>LEO SHOP</h3>\r\n");
      out.write("\t\t\t\t\t\t<script>(function(d, s, id) {\r\n");
      out.write("\t\t\t\t\t\t  var js, fjs = d.getElementsByTagName(s)[0];\r\n");
      out.write("\t\t\t\t\t\t  if (d.getElementById(id)) return;\r\n");
      out.write("\t\t\t\t\t\t  js = d.createElement(s); js.id = id;\r\n");
      out.write("\t\t\t\t\t\t  js.src = \"//connect.facebook.net/en_US/all.js#xfbml=1\";\r\n");
      out.write("\t\t\t\t\t\t  fjs.parentNode.insertBefore(js, fjs);\r\n");
      out.write("\t\t\t\t\t\t}(document, 'script', 'facebook-jssdk'));</script>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"like_box\">\t\r\n");
      out.write("\t\t\t\t\t\t\t<div class=\"fb-like-box\" data-href=\"http://www.cssmoban.com/\" data-colorscheme=\"light\" data-show-faces=\"true\" data-header=\"true\" data-stream=\"false\" data-show-border=\"true\"></div>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write(" \t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t  <div class=\"clear\"></div>\r\n");
      out.write("\t\t      </div>\r\n");
      out.write(" \t\t\t </div>\r\n");
      out.write("\t\t\t <div class=\"col_1_of_f_1 span_1_of_f_1\">\r\n");
      out.write("\t\t\t   \r\n");
      out.write("\t\t   </div>\r\n");
      out.write("\t\t  <div class=\"clear\"></div>\r\n");
      out.write("\t\t    </div>\r\n");
      out.write("\t\t  </div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t\r\n");
      out.write("   \r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\t\t");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
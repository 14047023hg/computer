<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>

<!DOCTYPE HTML >
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Cat</title>
	<link rel="stylesheet" type="text/css" href="css/styles.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="shortcut icon" href="images/shorticon.png" />
  </head>
  
  <body>
  <header>
       <h1>猫技术</h1>
       <nav>
            <ul>
		       <li><a href="<%=basePath%>/index.jsp?user.id=${user.id}">窝</a></li>
		       <li><a href="<s:url action="Article_searchArticles?keyword=hql"/>"></a></li>
		       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">web开发</a></li>
		       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">移动开发</a></li>
		       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">硬件开发</a></li>
		       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">数据库</a></li>
		     </ul>
       </nav>
  </header>
  <div class="contain" >
  
     <div class="head">
         <div class="head_right"><a  target="_self" href="<%=basePath%>/login.jsp">登录</a>|<a  target="_self" href="<%=basePath%>/regUser.jsp">注册</a></div>
	     <hr/>
     </div>
     
     <div class="banner">
	     <ul>
	       <li><a href="<%=basePath%>/index.jsp?user.id=${user.id}">首页</a></li>
	       <li><a href="<s:url action="Article_searchArticles?keyword=hql"/>">编程语言</a></li>
	       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">web开发</a></li>
	       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">移动开发</a></li>
	       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">硬件开发</a></li>
	       <li><a href="<%=basePath%>/resultList.jsp?user.id=${user.id}">数据库</a></li>
	     </ul>
     </div>
     
     <div>
		     <img src="<%=basePath%>/upload/${user.img}" />
		     <span >Hi&nbsp;, &nbsp;${session.user.username}</span>
		     <span >等级：${session.user.integtal}</span>
    </div>		  
		 	
		  
    <div  class="add_article_button"><a target="_self" href="<%=basePath%>/writeArticle.jsp">写文章</a></div>
    <div class="search_box">
        <s:form action="Article_searchArticles" method="post">
			<s:textfield name="keyword" cssClass="search_input"/><s:submit value="查询" cssClass="search_button"></s:submit>
	    </s:form>
    </div>
    <div>
       <iframe id="mainframe" src="Article_browseValidArticles" name="mainframe"  scrolling="auto" width="1014px" class="mainframe"></iframe>  
    </div>
 </div>
 
  </body>
</html>

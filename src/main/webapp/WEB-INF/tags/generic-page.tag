<!doctype html>
<%@tag description="Main Page Layout" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@attribute name="header" fragment="true" %>
<%@attribute name="footer" fragment="true" %>
<html lang="en">
  <head>
    <c:set var="url">${pageContext.request.requestURL}</c:set>
    <base href="${fn:substring(url, 0, fn:length(url) - fn:length(pageContext.request.requestURI))}${pageContext.request.contextPath}/" />
    
    <jsp:invoke fragment="header"/>

    <!-- Styles -->
    <link href="<c:url value="resources/css/bootstrap.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/bootstrap-responsive.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/bootstrap-extensions.css"/>" rel="stylesheet">
    <link href="<c:url value="resources/css/site.css"/>" rel="stylesheet">	
    
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
    <!--[if lt IE 9]> 
    	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="<c:url value="resources/img/apple-touch-icon-144-precomposed.png"/>">
    <link rel="shortcut icon" href="<c:url value="resources/img/favicon.png"/>">    
    
  </head>
  
  <body>
    <div class="navbar navbar-inverse navbar-fixed-top">
      <div class="navbar-inner">
        <div class="container">
          <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </a>
          <a class="brand" href="#">Time Trackr</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Actions <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Clients</a></li>
                  <li><a href="#">Projects</a></li>
                  <li><a href="#">Time Tracking</a></li>
                </ul>
              </li>
            </ul>
            <form class="navbar-form pull-right">
              <input class="span2" type="text" placeholder="Email">
              <input class="span2" type="password" placeholder="Password">
              <button type="submit" class="btn">Sign in</button>
            </form>
          </div><!--/.nav-collapse -->
        </div>
      </div>
    </div>  
  

    <div id="body">
      <jsp:doBody/>
    </div>
    <footer>
      <jsp:invoke fragment="footer"/>
    </footer>
    
    <!-- Javascript -->
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<script>    window.jQuery || document.write('<script src="resources/js/jquery.1.9.1.min.js"><\/script>')</script>
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>
	<script>    window.jQuery.ui || document.write('<script src="resources/js/jquery-ui-1.10.1.min.js"><\/script>')</script>    
    <script src="<c:url value="resources/js/bootstrap.js"/>"></script>
    <script src="<c:url value="resources/js/person.js"/>"></script>

  </body>
</html>
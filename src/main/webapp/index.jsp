<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:generic-page>
    <jsp:attribute name="header">
	  <meta charset="utf-8">
	  <title>Time Trackr</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="description" content="Simple Time Management">
	  <meta name="author" content="RGS Infotech, LLC">
    </jsp:attribute>
    
    <jsp:attribute name="footer">
       <p>&copy; RGS Infotech, LLC 2013</p>
    </jsp:attribute>  
    
    <jsp:body>
	    <div class="container">
	
	      <!-- Main hero unit for a primary marketing message or call to action -->
	      <div class="hero-unit">
	        <h1>Time Trackr <small>Simple Time Management for the Independent Consultant</small></h1>
	      </div>
	
	      <div class="row-fluid">
	        <div class="span4">
	          <p><a class="btn btn-primary btn-large" href="people/">Clients</a></p>
	          <p>Manage Client Information such as adding, editing or marking inactive.</p>
	        </div>
	        <div class="span4">
	          <p><a class="btn btn-primary btn-large" href="people/">Projects</a></p>
	          <p>Manage details regarding internal or client projects.</p>
	       </div>
	        <div class="span4">
	          <p><a class="btn btn-primary btn-large" href="people/">Time Tracking</a></p>
	          <p>Manage task level time tracking within each project or issue for both internal or client-specific work.</p>
	        </div>
	      </div>
	
	      <hr>
	      
	    </div> <!-- end container -->   
    </jsp:body>
  
    
</t:generic-page>
            
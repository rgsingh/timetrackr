<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:generic-page>
    <jsp:attribute name="header">
	  <meta charset="utf-8">
	  <title>Spring MVC Bootstrap Main Page</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="description" content="Spring MVC Bootstrap Main Page">
	  <meta name="author" content="">
    </jsp:attribute>

    <jsp:body>
	    <div class="container">
	
	      <!-- Main hero unit for a primary marketing message or call to action -->
	      <div class="hero-unit">
	        <h1>Welcome to my site! <small>I think you'll like it.</small></h1>
	        <p>This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.</p>
	        <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
	        <div class="btn-group">
	          <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i> User</a>
	          <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
	          <ul class="dropdown-menu">
	            <!-- li><a href="/people/" data-target="#people" data-toggle="modal"><i class="icon-pencil"></i> People</a></li -->
	            <li><a href="/people/"><i class="icon-pencil"></i> People</a></li>
	            <li><a href="#"><i class="icon-pencil"></i> Edit</a></li>
	            <li><a href="#"><i class="icon-trash"></i> Delete</a></li>
	            <li><a href="#"><i class="icon-ban-circle"></i> Ban</a></li>
	            <li class="divider"></li>
	            <li><a href="#"><i class="i"></i> Make admin</a></li>
	          </ul>
	        </div>
	      </div>
	
	      <!-- Example row of columns -->
	      <div class="row">
	        <div class="span4">
	          <h2>Heading</h2>
	          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	          <p><a class="btn" href="#">View details &raquo;</a></p>
	        </div>
	        <div class="span4">
	          <h2>Heading</h2>
	          <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	          <p><a class="btn" href="#">View details &raquo;</a></p>
	       </div>
	        <div class="span4">
	          <h2>Heading</h2>
	          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
	          <p><a class="btn" href="#">View details &raquo;</a></p>
	        </div>
	      </div>
	
	    
		  <div class="modal fade" id="people">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h3 id="myModalHeader">Modal header</h3>
						</div>
					</div>
				</div>	
		  </div>
	
	      <hr>
	      
	    </div> <!-- end container -->   
    </jsp:body>
    
    <jsp:attribute name="header">
       <p>&copy; RGS Infotech, LLC 2013</p>
    </jsp:attribute>    
    
</t:generic-page>
            
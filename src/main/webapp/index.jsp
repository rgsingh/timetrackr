<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap v3.0.0 example page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootstrap v3.0.0 example page">
    <meta name="author" content="">

    <!-- Styles -->
    <link href="webjars/bootstrap/3.0.0/css/bootstrap.css" rel="stylesheet">
	<style type="text/css">
	form {
	margin-top: 50px;
	}
	</style>
	
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
    <!--[if lt IE 9]> 
    	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://github.com/twbs/bootstrap/blob/master/docs-assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="https://github.com/twbs/bootstrap/blob/master/docs-assets/ico/favicon.png">    
  </head>
  <body>
    <div class="container">
      <div class="row">
    <div class="span4">
      <div class="btn-toolbar" style="margin-bottom: 9px">
        <div class="btn-group">
          <a class="btn" href="#"><i class="icon-align-left"></i></a>
          <a class="btn" href="#"><i class="icon-align-center"></i></a>
          <a class="btn" href="#"><i class="icon-align-right"></i></a>
          <a class="btn" href="#"><i class="icon-align-justify"></i></a>
        </div>
        <div class="btn-group">
          <a class="btn btn-primary" href="#"><i class="icon-user icon-white"></i> User</a>
          <a class="btn btn-primary dropdown-toggle" data-toggle="dropdown" href="#"><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="/people/"><i class="icon-pencil"></i> People</a></li>
            <li><a href="#"><i class="icon-pencil"></i> Edit</a></li>
            <li><a href="#"><i class="icon-trash"></i> Delete</a></li>
            <li><a href="#"><i class="icon-ban-circle"></i> Ban</a></li>
            <li class="divider"></li>
            <li><a href="#"><i class="i"></i> Make admin</a></li>
          </ul>
        </div>
      </div>
      <p>
        <a class="btn" href="#"><i class="icon-refresh"></i> Refresh</a>
        <a class="btn btn-success" href="#"><i class="icon-shopping-cart icon-white"></i> Checkout</a>
        <a class="btn btn-danger" href="#"><i class="icon-trash icon-white"></i> Delete</a>
      </p>
      <p>
        <a class="btn btn-large" href="#"><i class="icon-comment"></i> Comment</a>
        <a class="btn btn-small" href="#"><i class="icon-cog"></i> Settings</a>
        <a class="btn btn-small btn-info" href="#"><i class="icon-info-sign icon-white"></i> More Info</a>
      </p>
    </div>
   	</div>
    </div>

    <!-- Javascript -->
    <script src="webjars/jquery/1.9.0/jquery.js"></script>
    <script src="webjars/bootstrap/3.0.0/js/bootstrap.js"></script>
</body>
</html>
            
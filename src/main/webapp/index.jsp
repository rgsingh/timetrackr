<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>Bootstrap v3.0.0 example page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Bootstrap v3.0.0 example page">
    <meta name="author" content="">

    <!-- Styles -->
    <!-- link href="webjars/bootstrap/3.0.0/css/bootstrap.css" rel="stylesheet"-->
    <link href="resources/css/bootstrap.css" rel="stylesheet">
    <style type="text/css">
      body {
        padding-top: 60px;
        padding-bottom: 40px;
      }
    </style>
    <link href="resources/css/bootstrap-responsive.css" rel="stylesheet">
	
    <!-- HTML5 shim, for IE6-8 support of HTML5 elements --> 
    <!--[if lt IE 9]> 
    	<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script> 
    <![endif]-->

    <!-- Fav and touch icons -->
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="https://github.com/twbs/bootstrap/blob/master/docs-assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="shortcut icon" href="https://github.com/twbs/bootstrap/blob/master/docs-assets/ico/favicon.png">    
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
          <a class="brand" href="#">Project name</a>
          <div class="nav-collapse collapse">
            <ul class="nav">
              <li class="active"><a href="#">Home</a></li>
              <li><a href="#about">About</a></li>
              <li><a href="#contact">Contact</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li class="divider"></li>
                  <li class="nav-header">Nav header</li>
                  <li><a href="#">Separated link</a></li>
                  <li><a href="#">One more separated link</a></li>
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
            <li><a href="/people/" data-target="#people" data-toggle="modal"><i class="icon-pencil"></i> People</a></li>
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

      <hr>

      <footer>
        <p>&copy; Company 2012</p>
      </footer>

    </div> <!-- /container -->    
    
	<div class="modal fade" id="people">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h3 id="myModalHeader">Modal header</h3>
				</div>
			</div>
		</div>	
	</div>

    <!-- Javascript -->
    <script src="webjars/jquery/1.9.0/jquery.js"></script>
    <!-- script src="webjars/bootstrap/3.0.0/js/bootstrap.js"></script-->
    <script src="resources/js/bootstrap.js"></script>
</body>
</html>
            
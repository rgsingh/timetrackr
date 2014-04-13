(function($) {

	
	$("#personForm").submit(function(event) {
		event.preventDefault();

	    //get the button
        var personForm = $(this), 
        	btn = $( ":input[type=submit]:focus" ),
        	id = $(btn).data("id"),
        	protocolSlashes = null, protocolHostname = null,
        	hostnamePort = null, baseUrl = null, uri = null,
        	redirectTo = "people/";

        protocolSlashes = $(location).attr("protocol").concat("//");
        protocolHostname = protocolSlashes.concat($(location).attr("hostname"));
        hostnamePort = (protocolHostname.concat(":")).concat($(location).attr("port"));
//        baseUrl = hostnamePort.concat($(location).attr("pathname"));
        baseUrl = hostnamePort.concat("/timetrackr/people/");
        
    	firstName = personForm.find( "input[name='firstName']" ).val();
    	lastName = personForm.find( "input[name='lastName']" ).val();        
        
        if (id === "preview") {
        	uri = "preview";
        	
        	var form = $('<form style= "display:none" action="' + baseUrl.concat(uri) + 
        			'" method="post">' +
        	  '<input type="text" name="firstName" value="' + firstName + '" />' +
        	  '<input type="text" name="lastName" value="' + lastName + '" />' +
        	  '</form>');
        	$('body').append(form);
        	$(form).submit();        	
        	
//        	$.post(
//        			baseUrl.concat(uri),
//        		    personForm.serialize(),
//        		    function(result){
//        		    	//$(location).attr("href",redirectTo);
//        		    }        		    
//        	);	
        	
        } else {
        	uri = "add";    

        	$.post(
        			baseUrl.concat(uri),
        			personForm.serialize(),
        		    function(result){
        		    	$(location).attr("href",redirectTo);
        		    }
        	);        	
        }
//        personForm.attr("action", "people/".concat(uri));
//    	personForm.submit();

	});
	
	

	
})(jQuery);



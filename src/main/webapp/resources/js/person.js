(function($) {
	
	var peopleApplication = function(){
		
	    var context = "/timetrackr/",
	        redirectTo = context,
	        protocolSlashes = $(location).attr("protocol").concat("//"),
	        protocolHostname = protocolSlashes.concat($(location).attr("hostname")),
	        hostnamePort = (protocolHostname.concat(":")).concat($(location).attr("port")),
	        baseUrl  = hostnamePort.concat(context);
	
	    return {
	        getRedirectTo: function(){
	            return redirectTo;
	        },
	        getBaseUrl: function(){
	            return baseUrl;
	        },
	        setBaseUrl: function(newBaseUrl){
	            baseUrl = newBaseUrl;
	        }
	    };
	};

	var peopleApp = peopleApplication();
	
    $('#viewPeople').click(function(){
            $('#asyncLoadImage').show();
            
            showPeople(peopleApp.getBaseUrl());
    });
   
	$("#personForm").submit(function(event) {
		event.preventDefault();
		
	    //get the clicked button and form field values...
        var personForm = $(this), 
        	actionBtn = $( ":input[type=submit]:focus" ),
        	actionId = $(actionBtn).data("person") || $(actionBtn).data("preview"),
        	uri = null, formFields = null, 
        	addedData = '', previewForm = null;

    	firstName = personForm.find( "input[name='firstName']" ).val();
    	lastName = personForm.find( "input[name='lastName']" ).val();        
        
        if (actionId === "preview") {
        	uri = "preview";
        	
        	previewForm = $('<form style= "display:none" action="' + peopleApp.getBaseUrl().concat(uri) + 
        			'" method="post">' +
        	  '<input type="text" name="firstName" value="' + firstName + '" />' +
        	  '<input type="text" name="lastName" value="' + lastName + '" />' +
        	  '</form>');
        	
        	$('body').append(previewForm);
        	$(previewForm).submit();        	
        	
        } else {

        	// store the data about to be posted...
            formFields = $('#personForm').serializeArray();
            $('#result').empty();
            $.each( formFields, function( i, field ) {
                addedData += field.value + " ";  
            });
        	
            /* 
             * TODO wrap post and get with a generic sender function which contains always and fail handlers. 
             * Bind a done callback from the wrapper
             */
        	uri = "add";    
            $.post(
                   peopleApp.getBaseUrl().concat(uri),
                   personForm.serialize(),
                   function(result){
                       //$(location).attr("href",peopleApp.getRedirectTo());
                       $('#result').hide().html(addedData + " added.").fadeIn();

                       showPeople(peopleApp.getBaseUrl());
                   }
            );  
         
        };
        

	});
	
	var showPeople = function(baseUrl) {
		//$(location).attr("href",peopleApp.getRedirectTo());
		setTimeout("$('body').load('" + baseUrl + "', function(){ $('#asyncLoadImage').hide(); });", 1000);
		//$('body').load(baseUrl, function(){ $('#asyncLoadImage').hide(); });
	};
	
	$('#asyncLoadImage').hide();	 
	//showPeople(peopleApp.getBaseUrl());
	
})(jQuery);



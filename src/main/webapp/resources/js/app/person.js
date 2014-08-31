(function($) {

    // a convenience function for parsing string namespaces and
    // automatically generating nested namespaces
    function extend(ns, ns_string) {
        var parts = ns_string.split('.'),
            parent = ns,
            pl, i;

        if (parts[0] == "myApp") {
            parts = parts.slice(1);
        }

        pl = parts.length;
        for (i = 0; i < pl; i++) {
            // create a property if it doesnt exist
            if (typeof parent[parts[i]] == 'undefined') {
                parent[parts[i]] = {};
            }

            parent = parent[parts[i]];
        }

        return parent;
    }

    var peopleApplication = function() {

        var context = "/timetrackr/";
        var redirectTo = context;
        var protocolSlashes = $(location).attr("protocol").concat("//");
        var protocolHostname = protocolSlashes.concat($(location).attr(
            "hostname"));
        var hostnamePort = (protocolHostname.concat(":")).concat($(location)
            .attr("port"));
        var baseUrl = hostnamePort.concat(context);

        return {
            getRedirectTo: function() {
                return redirectTo;
            },
            getBaseUrl: function() {
                return baseUrl;
            },
            setBaseUrl: function(newBaseUrl) {
                baseUrl = newBaseUrl;
            }
        };
    };

    var peopleApp = peopleApplication();

    $('#viewPeople').click(function() {
        $('#loadingProgress').show();

        showPeople(peopleApp.getBaseUrl().concat("/clients"));
    });

    $("#peopleTable tr input[name=Delete]").click(function() {
        $(this).css("background-color", "#FF3700");

        $(this).fadeOut(400, function() {
            $(this).remove();
        });
    });

    $("#clientForm")
        .submit(

    function(event) {
        event.preventDefault();

        // get the clicked button and form field values...
        var clientForm = $(this),
            actionBtn = $(":input[type=submit]:focus"),
            actionId = $(actionBtn).data("client") || $(actionBtn).data("preview"),
            uri = null,
            formFields = null,
            addedData = '',
            previewForm = null,
            previewFormString = null,
            firstName = clientForm.find("input[name='firstName']").val(),
            lastName = clientForm.find("input[name='lastName']").val();

        if (actionId === "preview") {

            uri = "clients/preview";
            $.post(peopleApp.getBaseUrl().concat(uri), clientForm.serialize(), function(
            result) {
                $('#result').hide().html(
                    "Does the following look correct? Click 'Add Client' to confirm and save.")
                    .fadeIn();

            });

        } else {

            // store the data about to be posted...
            formFields = $('#clientForm').serializeArray();
            $('#result').empty();
            $.each(formFields, function(i, field) {
                addedData += field.value + " ";
            });


            /*
             * TODO wrap post and get with a generic sender
             * function which contains always and fail handlers.
             * Bind a done callback from the wrapper
             */
            uri = "clients/add";
            $.post(peopleApp.getBaseUrl().concat(uri), clientForm.serialize(), function(
            result) {
                // $(location).attr("href",peopleApp.getRedirectTo());
                $('#result').hide().html(
                addedData + " added.")
                    .fadeIn();

                showPeople(String(peopleApp.getBaseUrl()).concat('/clients'))
            });

        };

    });
    // end clientForm


    $("#clientUpdateForm")
        .submit(

    function(event) {
        event.preventDefault();

        // get the clicked button and form field values...
        var clientUpdateForm = $(this),
            clientId = $(this).find("input[id=id]").val(),
            uri = null,
            formFields = null,
            updatedData = '',
            previewForm = null,
            previewFormString = null;


        // store the data about to be posted...
        formFields = $('#clientUpdateForm').serializeArray();
        $('#result').empty();
        updatedData = $(this).find("input[id=firstName]").val() +
            " " + $(this).find("input[id=lastName]").val();

        /*
         * TODO wrap post and get with a generic sender
         * function which contains always and fail handlers.
         * Bind a done callback from the wrapper
         */
        uri = "clients/update/";
        $.post(peopleApp.getBaseUrl().concat(uri), clientUpdateForm.serialize(), function(
        result) {
            $('#result').hide().html(
            updatedData + " updated.")
                .fadeIn();

            showPeople(peopleApp.getBaseUrl() + '/clients');
        });


    });
    // end clientUpdateForm

    var showPeople = function(url) {
        setTimeout("$('body').load('" + url + "', function(){ $('#loadingProgress').hide(); });", 1000);
    };

    $('#loadedImage').hide();

})(jQuery);

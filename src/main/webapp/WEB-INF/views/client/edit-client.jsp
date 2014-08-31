<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags"%>


<t:generic-page>
	<jsp:attribute name="header">
          <meta charset="utf-8">
          <title>Clients</title>
          <meta name="viewport"
			content="width=device-width, initial-scale=1.0">
          <meta name="description" content="Clients">
          <meta name="author" content="RGS Infotech, LLC">
    </jsp:attribute>

	<jsp:body>
    
        <div id="main" class="container">
            <div class="row">
                <div class="span8 offset2">
            <div id="result"></div>
                    <h3>Update Client</h3>

                    <form:form method="post" action=""
						modelAttribute="client" class="form-vertical"
						id="clientUpdateForm">

                        <form:label path="firstName">First Name</form:label>
                        <form:input path="firstName" name="firstName" />
                        <form:label path="lastName">Last Name</form:label>
                        <form:input path="lastName" name="lastName" />
                        <form:hidden path="id" />
                        <input type="submit" value="Update Person"
							class="btn" name="client" data-client="update" />
                    </form:form>

                </div>
            </div>

        </div> <!-- end container --> 
    </jsp:body>

</t:generic-page>


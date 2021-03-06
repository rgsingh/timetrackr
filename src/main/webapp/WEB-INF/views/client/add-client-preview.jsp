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
        <div class="container">
            <div class="row">
                <div class="span8 offset2">
                    <h3>Clients</h3>
                    <p>If the following is correct, please click "Add Person"</p>
                    <form:form method="post" action=""
						modelAttribute="client" class="form-vertical" id="clientForm">

                        <form:label path="firstName">First Name</form:label>
                        <form:label path="firstName">${firstName}</form:label>
                        <form:label path="lastName">Last Name</form:label>
                        <form:label path="lastName">${lastName}</form:label>
                        <input type="submit" value="Add Client"
							class="btn" name="client" data-client="add" />
                    </form:form>

                </div>
            </div>

        </div> <!-- end container --> 
    </jsp:body>

</t:generic-page>


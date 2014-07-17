<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:generic-page>
    <jsp:attribute name="header">
	  <meta charset="utf-8">
	  <title>Clients</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="description" content="Clients">
	  <meta name="author" content="RGS Infotech, LLC">
    </jsp:attribute>
		    
    <jsp:attribute name="footer">
       <p>&copy; RGS Infotech, LLC 2013</p>
    </jsp:attribute>	    
         
    <jsp:body>
		<div class="container">
		    <div class="row">
		        <div class="span8 offset2">
		            <div class="page-header">
		                <h1>Clients</h1>
		            </div>
					<p>If the following is correct, please click "Add Person"</p>
		            <form:form method="post" action="${pageContext.request.contextPath}/add" commandName="person" class="form-vertical" id="personForm">

		                <form:label path="firstName">First Name</form:label>
		                <form:label path="firstName">${firstName}</form:label>
		                <form:input style="display:none" path="firstName" name="firstName"/>
		                <form:label path="lastName">Last Name</form:label>
		                <form:label path="lastName">${lastName}</form:label>
		                <form:input style="display:none" path="lastName" name="lastName"/>
		                <input type="submit" value="Add Person" class="btn" data-person="person"/>
		            </form:form>

		        </div>
		    </div>

		</div> <!-- end container --> 
    </jsp:body>
		    
</t:generic-page>
            

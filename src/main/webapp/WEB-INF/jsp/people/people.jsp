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
		            <form:form method="post" action="people/add" commandName="person" class="form-vertical">
		
		                <form:label path="firstName">First Name</form:label>
		                <form:input path="firstName" />
		                <form:label path="lastName">Last Name</form:label>
		                <form:input path="lastName" />
		                <input type="submit" value="Add Person" class="btn"/>
		            </form:form>
		
		
		            <c:if  test="${!empty peopleList}">
		                <h3>People</h3>
		                <table class="table table-bordered table-striped">
		                    <thead>
		                    <tr>
		                        <th>Name</th>
		                        <th>&nbsp;</th>
		                    </tr>
		                    </thead>
		                    <tbody>
		                    <c:forEach items="${peopleList}" var="person">
		                        <tr>
		                            <td>${person.lastName}, ${person.firstName}</td>
		                            <td><form action="people/delete/${person.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form></td>
		                        </tr>
		                    </c:forEach>
		                    </tbody>
		                </table>
		            </c:if>
		        </div>
		    </div>

		</div> <!-- end container --> 
    </jsp:body>
		    
</t:generic-page>
            

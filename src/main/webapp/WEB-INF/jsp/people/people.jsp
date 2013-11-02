<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>


<t:generic-page>
    <jsp:attribute name="header">
	  <meta charset="utf-8">
	  <title>Spring MVC Bootstrap People Page</title>
	  <meta name="viewport" content="width=device-width, initial-scale=1.0">
	  <meta name="description" content="Spring MVC Bootstrap People Page">
	  <meta name="author" content="">
    </jsp:attribute>
     
	<div class="container">
	    <div class="row">
	        <div class="span8 offset2">
	            <div class="page-header">
	                <h1>Simple CRUD Page</h1>
	            </div>
	            <form:form method="post" action="add" commandName="person" class="form-vertical">
	
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
	                            <td><form action="delete/${person.id}" method="post"><input type="submit" class="btn btn-danger btn-mini" value="Delete"/></form></td>
	                        </tr>
	                    </c:forEach>
	                    </tbody>
	                </table>
	            </c:if>
	        </div>
	    </div>
	    
      <jsp:attribute name="header">
         <p>&copy; RGS Infotech, LLC 2013</p>
      </jsp:attribute>	    
	    
	</div> <!-- end container --> 


</t:generic-page>
            

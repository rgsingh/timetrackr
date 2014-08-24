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

	<jsp:attribute name="footer">
       <p>&copy; RGS Infotech, LLC 2013</p>
    </jsp:attribute>

	<jsp:body>
    
        <div style='margin: 0 0 .5em 0;'>
                    <div class="row">
                        <div class="span8 offset2">
                   <div id='viewPeople' class='btn btn-primary'>View People</div>

                   <!-- AJAX loading image -->
                   <div id='asyncLoadImage'>
                                                <img
							src='<c:url value="resources/img/async-loader.gif"/>' />
                                        </div>
                
                   <div style='clear: both;'></div>
                </div>
            </div>
        </div>    
    
        <div id="main" class="container">
            <div class="row">
                <div class="span8 offset2">
            <div id="result"></div>
                    <div class="page-header">
                        <h1>
                            <a
								href="${pageContext.request.contextPath}/index">Client Management</a>
                        </h1>
                    </div>

                    <c:if test="${!empty clients}">
                        <h3>Clients</h3>
                        <table data-people="peopleTable"
							class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Name</th>
                                <th>&nbsp;</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="person" items="${clients}">
                                <tr>
                                    <td>${person.lastName}, ${person.firstName}</td>
                                    <td>
                                       <form action=""
												method="post" id="listForm">


                                          <input type="submit"
													class="btn btn-mini"
													formaction="${pageContext.request.contextPath}/clients/edit/${person.id}"
													formmethod="get"
													value="Edit" />
                                          <input type="submit"
													class="btn btn-danger btn-mini"
													formaction="${pageContext.request.contextPath}/clients/delete/${person.id}"
													formmethod="post"
													value="Delete" />
                                       </form>
                                    </td>
                                </tr>
                            </c:forEach>
                                <tr>
                                	<td colspan="2">
									      <input type="submit"
													class="btn btn-primary"
													form="listForm"
													formaction="${pageContext.request.contextPath}/clients/add"
													formmethod="get"
													value="Add" />	
                                	</td>
                                </tr>
                            </tbody>
                        </table>
                    </c:if>
                </div>
            </div>

        </div> <!-- end container --> 
    </jsp:body>

</t:generic-page>


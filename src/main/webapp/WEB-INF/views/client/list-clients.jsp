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
<!--     
        <div id='loadedImage' class="overlay-image">
             <img src='<c:url value="resources/img/async-loader.gif"/>' />
        </div>

-->
        <div class="modal hide" id="loadingProgress"
			data-backdrop="static" data-keyboard="false">
          <div class="modal-content">
            <div class="modal-header">
                <h1>Refreshing list. Please wait...</h1>
            </div>
            <div class="modal-body">
                <div class="progress progress-striped active">
                    <div class="bar" style="width: 100%;"></div>
                </div>
            </div>
          </div>
        </div>
        <div style='margin: 5em 0 .5em 0;'>
             <div class="row">
                <div class="span8 offset2">
                   <div id='viewPeople' class='btn btn-primary'>View People</div>
                </div>
            </div>
        </div>    
    
        <div id="main" class="container">
            <div class="row">
                <div class="span8 offset2">
            <div id="result"></div>
                    <c:if test="${!empty clients}">
                        <h3>Clients</h3>
                        <form action="" method="post" id="listForm">
                                <table id="peopleTable"
								data-people="peopleTable"
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
                                                <div class="btn-group">
                                                    <a
														href="${pageContext.request.contextPath}/clients/edit/${person.id}"
														class="btn btn-warning">Edit</a>       
                                                    <input type="submit"
														class="btn btn-danger"
														formaction="${pageContext.request.contextPath}/clients/delete/${person.id}"
														formmethod="post" value="Delete" />
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                        <tr>
                                            <td colspan="2">
                                                <a href="${pageContext.request.contextPath}/clients/add" class="btn btn-primary">Add</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                        </form>
                    </c:if>
                </div>
            </div>

        </div> <!-- end container --> 
    </jsp:body>

</t:generic-page>

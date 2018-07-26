<%-- 
    Document   : getQuestao
    Created on : 27/10/2017, 00:51:39
    Author     : Jander Faria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/portlets.css"/>" rel="stylesheet"> 
        <link href="<c:url value="/resources/css/star-rating.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/star-rating.min.css"/>" rel="stylesheet">
        <title>Questões</title>
    </head>
    <body>
        <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
        <div class="container">
            <div class="portlet">
                <div class="portlet-title">

                            <a href="javascript:history.back()" class="btn btn-danger"><i class="glyphicon glyphicon-arrow-left"></i> Voltar </a>

                        <strong>#${questao.id} ${questao.titulo}</strong>
                    </p>
                </div>
                <div class="portlet-body">
                    <p>${questao.texto}</p>
                    <p><strong>Resposta: </strong>${questao.resposta.texto}</p>
                </div>
            </div>
        </div>        
    </body>
    <footer>
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jspdf.min.js"/>"></script>
        <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <!--<script src="<c:url value="/resources/js/star-rating.js"/>"></script>
        <script src="<c:url value="/resources/js/star-rating.min.js"/>"></script>
        <script>
                $('#star-rating').starrating();
        </script>-->
    </footer>
</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Parcerias</title>
        <jsp:include page='/WEB-INF/views/navbar.jsp'></jsp:include>
            <!-- Bootstrap core CSS -->
            <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/heroic-features.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/sobre.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/navbar-custom.css"/>" rel="stylesheet">
    </head>

    <body>
        <div class="jumbotron text-center col-sm-8 col-sm-offset-2" style="background-color: #ffffff; font-family: sketch;">
            <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" align="left">  
            <h1>Parcerias</h1>
            <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large;">
                            <img src="<c:url value="/resources/img/parceria1.png"/>" align="left" width="450">
                            <p> O Portal Educacional da Cidadania é um site aberto, construído por todos e para todos. Portanto qualquer tipo de parceria é muito bem vinda.</p>
                            <p>Entre em contato conosco e seja mais um parceiro e amigo da educação cidadã!</p>
                            
                            <br><br><br><br>
                            <div class="col-md-10 col-sm-offset-1"> 
                                <h1 style="text-align: center; font-family: sketch;">Parceiros</h1>
                                <img src="<c:url value="/resources/img/parceria2.png"/>" width="200">
                                <img src="<c:url value="/resources/img/parceria3.png"/>" width="134" hspace="80px">
                                <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" >

                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </div>


</body>
<footer>
    <jsp:include page='/WEB-INF/views/footer.jsp'></jsp:include>
        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
    <script src="<c:url value="/resources/popper/popper.min.js"/>"></script>
    <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
    <script src="<c:url value="/resources/jquery2.js"/>"></script>
    <script src="<c:url value="/resources/js/cadastro.js"/>"></script>
</footer>
</html>

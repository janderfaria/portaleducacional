<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Estat�sticas</title>
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
              <h1>Estat�sticas</h1>
              <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">A��o</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educa��o</font></h3>
       </div>
        <br>
        <div class="container">

            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large; line-height: 28px; padding-bottom: 20px; text-align: justify;">
                            <p align="center"><font color="red"><strong>(T�pico em constru��o)</strong></font> </p>
                            <p> Nas estat�sticas ser�o apresentados �ndices relacionados diretamente �s informa��es do portal como quest�es mais acessadas, quest�es melhores avaliadas tanto pelos usu�rios como pelo moderador, n�mero de quest�es recebidas e utilizadas, n�mero de usu�rios cadastrados, estados participantes, etc.</p>
                            <p>Outras estat�sticas externas ao site tamb�m ser�o divulgadas como �ndices relacionados � educa��o e aqueles relacionados ao impacto para os usu�rios do portal e nas escolas, atrav�s de pesquisas ou informa��es enviadas pelos pr�prios usu�rios.</p>
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

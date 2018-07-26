<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Constituir - Cartilha de Atividades</title>
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
            <h1>Como Avaliar Questões</h1>
            <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
        </div>
        <br>
        <div class="container">

            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large;">
                            <p align="center"><font color="red"><strong>(Tópico em construção)</strong></font></p>
                            <p>- Os usuários poderão qualificar as questões do portal com notas de 0 a 5 estrelas. <br>
                                - O moderador poder avaliar as questões do portal com notas de 0 a 5 estrelas. <br>
                                - Não será permitido qualificar questões de própria autoria. <br>
                                - Será implementado um contador do número de acessos a cada questão. <br>
                                - Poderá ser criado algum tipo de premiação utilizando os rankings de acessos e qualificação, incentivando a disseminação de conteúdo na plataforma, bem como a qualidade. Essa premiação será uma nova página do tópico verde "Educação".</p>
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

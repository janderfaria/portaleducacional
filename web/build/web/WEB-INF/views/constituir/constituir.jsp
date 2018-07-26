<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Constituir</title>
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
        <!-- Page Content -->
        <div class="container">
            <!-- Jumbotron Header -->
            <div class="panel well well-lg" style=" border-color: #e60000;">
                <div class="panel-heading">
                    <h1 id="h1-header" class="h1_card"><strong><font size="10" color="#e60000">Constituir</font></strong> Ação, Construir Educação</h1>
                </div>
                <div id="conteudo-cidadania" class="panel-body scroll-bar" style="border: 1px solid; border-color: #e60000; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">
                    <p style="line-height: 30px!important"><strong>CONSTITUIR</strong>  nos remete à criação, portanto, aqui temos um pouco do histórico de como surgiu o Portal Educacional da Cidadania. <br><br>
                        Através dos menus abaixo, temos uma sequência histórica, iniciando com o embasamento da questão da cidadania em nossa <strong>legislação</strong> e passando pela história da <strong>Escola do Legislativo</strong> e sua luta pelo ensino da cidadania, diminuindo a distância entre representantes e representados. Em seguida tem-se o projeto da <strong>Constituição em Miúdos</strong> e seu desdobramento: a <strong>Cartilha de Atividades</strong>. E por fim, como surgiu a ideia do <strong>Portal Educacional da Cidadania</strong>.
                    </p>
     
                </div>
                <br> 
                <div class="row text-center" id="botoes">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class = "btn-cons btn-block" href="/web/constituir/cidadania" style="text-decoration: none;"><strong>Cidadania e Legislação</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-cons btn-block" href="/web/constituir/escola-do-legislativo" style="text-decoration: none;"><strong>Escola do Legislativo</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-cons btn-block"  href="/web/constituir/constituicao-miudos" style="text-decoration: none;"><strong>Constituição em Miúdos</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-cons btn-block" href="/web/constituir/portal-educacional" style="text-decoration: none;"><strong>Portal Educacional</strong></a>
                    </div>

                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
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

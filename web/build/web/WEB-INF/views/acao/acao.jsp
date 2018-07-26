<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Ação</title>
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
            <div class="panel well well-lg" style = "border-color: #0014f5;" >
                <div class="panel-heading" >
                    <h1 id="h1-header" class="h1_card">Constituir <strong><font size="10" color="#0014f5">Ação</font></strong>, Construir Educação</h1>
                </div>
                <div id="conteudo-acao" class="panel-body scroll-bar" style = "border: 1px solid; border-color: #0014f5; font-size: large; line-height: 28px !important; padding-bottom: 20px; padding-top: 20px; text-align: justify;" >
                    <p style="line-height: 30px!important"><strong>AÇÃO </strong>, nos remete ao engajamento da sociedade em querer mudar o país, em agir em prol de levar para nossas crianças e jovens uma educação mais cidadã. </p>
                    <p style="line-height: 30px!important">   Aqui é o espaço para você agir no sentido de colaborar com o Portal Educacional, por meio do link contato, enviando sugestões, críticas, apontar falhas etc., bem como propor alguma <strong>parceria</strong>.</p>
                    <p style="line-height: 30px!important">   Nas <strong>estatísticas</strong> serão exibidos relatórios e índices diretos e indiretos sobre as informações e impacto do portal educacional. O link <strong>moderador</strong> é um espaço para divulgação de informações relacionadas à gestão técnica e de conteúdo do portal.
                    </p>
                    <br>
                </div>
                <br> 
                <div class="row text-center" id="botoes">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class = "btn-acao btn-block" href="/web/acao/estatisticas" style="text-decoration: none;"><strong>Estatísticas</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-acao btn-block" href="/web/acao/contato" style="text-decoration: none;"><strong>Contato</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-acao btn-block"  href="/web/acao/parcerias" style="text-decoration: none;"><strong>Parcerias</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-acao btn-block" href="/web/acao/moderador" style="text-decoration: none;"><strong>Moderador</strong></a>
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
            <script src="<c:url value="resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="resources/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/cadastro.js"/>"></script>
    </footer>
</html>

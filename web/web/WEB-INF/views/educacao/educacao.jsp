<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Educação</title>
        <jsp:include page='/WEB-INF/views/navbar.jsp'></jsp:include>
            <!-- Bootstrap core CSS -->
            <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/heroic-features.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/navbar-custom.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/sobre.css"/>" rel="stylesheet">
    </head>
    <body>
        <!-- Page Content -->
        <div class="container">
            <!-- Jumbotron Header -->
            <div class="panel well well-lg" style=" border-color: #00e600;" >
                <div class="panel-heading">
                    <h1 id="h1-header" class="h1_card">Constituir Ação, Construir<strong><font size="10" color=="#28d025"> Educação</font></strong></h1>
                </div>
                <div id="conteudo-edu" class="panel-body scroll-bar" style="border: 1px solid; border-color: #00e600; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;" >
                    <p style="line-height: 30px!important" ><strong>EDUCAÇÃO</strong>, nos remete à importância de se contribuir com a disseminação do conhecimento em cidadania, contribuindo com a educação do país, e com a formação de cidadãos mais conscientes que construirão um país melhor.</p>
                    <p style="line-height: 30px!important">    Temos nesse tópico uma explicação de como está <strong>classificado o conteúdo</strong> das questões do portal e um tutorial de como pode-se <strong>procurar por questões</strong> da melhor forma. Em breve, será possível também, que os usuários <strong>avaliem as questões</strong>, ajudando a melhorar a qualidade do conteúdo do portal.</p>
                    <p style="line-height: 30px!important">    O principal objetivo é que educadores possam usar a plataforma para disseminar o conhecimento para seus alunos de acordo com a área do conhecimento que melhor se adeque à sua realidade. </p>
                </div>
                <br> 
                <div class="row text-center" id="botoes">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class = "btn-edu btn-block" href="/web/educacao/classificacao-do-conteudo" ><strong>Classificação do Conteúdo</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block" href="/web/educacao/como-procurar-questoes"><strong>Como procurar questões</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block" href="/web/educacao/como-avaliar-questoes"><strong>Como Avaliar Questões</strong></a>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block"  href="/web/questoes"><strong>Procurar Questões</strong></a>
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

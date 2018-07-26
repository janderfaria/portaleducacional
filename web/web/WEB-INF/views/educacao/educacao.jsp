<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Educa��o</title>
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
                    <h1 id="h1-header" class="h1_card">Constituir A��o, Construir<strong><font size="10" color=="#28d025"> Educa��o</font></strong></h1>
                </div>
                <div id="conteudo-edu" class="panel-body scroll-bar" style="border: 1px solid; border-color: #00e600; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;" >
                    <p style="line-height: 30px!important" ><strong>EDUCA��O</strong>, nos remete � import�ncia de se contribuir com a dissemina��o do conhecimento em cidadania, contribuindo com a educa��o do pa�s, e com a forma��o de cidad�os mais conscientes que construir�o um pa�s melhor.</p>
                    <p style="line-height: 30px!important">    Temos nesse t�pico uma explica��o de como est� <strong>classificado o conte�do</strong> das quest�es do portal e um tutorial de como pode-se <strong>procurar por quest�es</strong> da melhor forma. Em breve, ser� poss�vel tamb�m, que os usu�rios <strong>avaliem as quest�es</strong>, ajudando a melhorar a qualidade do conte�do do portal.</p>
                    <p style="line-height: 30px!important">    O principal objetivo � que educadores possam usar a plataforma para disseminar o conhecimento para seus alunos de acordo com a �rea do conhecimento que melhor se adeque � sua realidade. </p>
                </div>
                <br> 
                <div class="row text-center" id="botoes">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class = "btn-edu btn-block" href="/web/educacao/classificacao-do-conteudo" ><strong>Classifica��o do Conte�do</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block" href="/web/educacao/como-procurar-questoes"><strong>Como procurar quest�es</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block" href="/web/educacao/como-avaliar-questoes"><strong>Como Avaliar Quest�es</strong></a>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn-edu btn-block"  href="/web/questoes"><strong>Procurar Quest�es</strong></a>
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

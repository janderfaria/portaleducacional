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
            <h1>Como Inserir Questões</h1>
            <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-md-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large; border-color: #000000;">
                            <p> <strong>Tutorial</strong> <br> <br>
                                1 - Primeiramente faça o login, ou caso seja seu primeiro acesso, efetue seu cadastro.<br>
                                2 - No link "Inserir Questões", primeiramente selecione os campos de classificação:<em> tipo da questão, nível de ensino e área do conhecimento</em>. <br>
                                3 - Depois insira a questão preenchendo o campo com o texto, podendo utilizar as ferramentas de texto e inclusive inserir imagens. <br>
                                4 - Faça o mesmo no próximo campo para enviar a resposta ou gabarito. <br>
                                5 - Por fim clique no botão ENVIAR, sua questão será analisada pelo moderador. Será verificado se as classificações estão adequadas, se a resposta está correta, se não há algum problema de conteúdo ou censura, etc. Após análise do moderador, será liberada e ficará disponível para qualquer visitante do portal. <br></p>
                            <img src="<c:url value="/resources/img/como_enviar.jpg"/>" align="left" hspace="10px" vspace="10px"> <br>
                            <p><strong>Obs.: Vale lembrar que o objetivo do Portal Educacional é receber questões/exercícios associados a conteúdos da constituição federal e cidadania em geral, com uma linguagem simplificada e interdisciplinar, para que possam ser trabalhados nas escolas, dentro das disciplinas da matriz curricular do ensino fundamental e médio..</strong> <br></p>                            
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

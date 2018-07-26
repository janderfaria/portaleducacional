<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Estatísticas</title>
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
              <h1>Como procurar questões</h1>
              <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
       </div>
        <br>
        <div class="container">

            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">
                            <p><strong>Tutorial</strong></p>
                            <p>- Não é necessário fazer login para ter acesso às questões, bastar entrar no link <strong>&quotProcurar Questões&quot</strong>.</p>
                            <p>- Caso queira listar todas as questões, estas serão exibidas por ordem cronológica, de acordo com a data de liberação do conteúdo pelo moderador do portal.</p>
                            <p>- É aconselhável utilizar os filtros, selecionando dentre as classificações para listar somente as questões que sejam mais adequadas à situação desejada. Por exemplo: sou professor de literatura e quero aplicar uma atividade prática para meus alunos do 5º ano do primeiro grau. </p>
                            <p style="margin-left: 40px"> Portanto, vou escolher os filtros: nível fundamental I, área de linguagens e exercício do tipo dinâmica. Com isso terei ideias já focadas para minha realidade, como por exemplo, um teatro de fantoches com temática sobre o processo de preservação e valorização do patrimônio cultural, tombamento, direito de manifestações populares, etc.</p>
                            <p><strong>Obs.:</strong> Futuramente serão implementados outros filtros tais como: pelo autor, por cidade, por estado, por instituição, questões mais acessadas, melhor qualificadas pelos usuários, melhor avaliadas pelo moderador, etc. Desta forma poderei por exemplo, procurar as melhores questões de matemática do estado de Minas Gerais.</p>
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

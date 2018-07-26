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
              <h1>Como procurar quest�es</h1>
              <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">A��o</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educa��o</font></h3>
       </div>
        <br>
        <div class="container">

            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">
                            <p><strong>Tutorial</strong></p>
                            <p>- N�o � necess�rio fazer login para ter acesso �s quest�es, bastar entrar no link <strong>&quotProcurar Quest�es&quot</strong>.</p>
                            <p>- Caso queira listar todas as quest�es, estas ser�o exibidas por ordem cronol�gica, de acordo com a data de libera��o do conte�do pelo moderador do portal.</p>
                            <p>- � aconselh�vel utilizar os filtros, selecionando dentre as classifica��es para listar somente as quest�es que sejam mais adequadas � situa��o desejada. Por exemplo: sou professor de literatura e quero aplicar uma atividade pr�tica para meus alunos do 5� ano do primeiro grau. </p>
                            <p style="margin-left: 40px"> Portanto, vou escolher os filtros: n�vel fundamental I, �rea de linguagens e exerc�cio do tipo din�mica. Com isso terei ideias j� focadas para minha realidade, como por exemplo, um teatro de fantoches com tem�tica sobre o processo de preserva��o e valoriza��o do patrim�nio cultural, tombamento, direito de manifesta��es populares, etc.</p>
                            <p><strong>Obs.:</strong> Futuramente ser�o implementados outros filtros tais como: pelo autor, por cidade, por estado, por institui��o, quest�es mais acessadas, melhor qualificadas pelos usu�rios, melhor avaliadas pelo moderador, etc. Desta forma poderei por exemplo, procurar as melhores quest�es de matem�tica do estado de Minas Gerais.</p>
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

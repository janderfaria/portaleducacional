<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="pt-br">
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
        <div class="container">  
            <div class="row">
            <div class="jumbotron text-center" style="background-color: #ffffff; font-family: sketch; width: 100%;">
                <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" align="left" style="margin-top: -20px;">  
                <h1>Escola do Legislativo</h1>
                <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
            </div>
                </div>
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; text-align: justify;">
                    <br>
                    <p>  No município de Pouso Alegre &#45 MG, a educação cidadã iniciou-se no ano de 2004, com a criação da <strong>Câmara Mirim</strong>, através da Resolução nº 993, tendo como público-alvo os componentes do Ensino Fundamental II (6º ao 9º ano).</p> 
                    <p>Visando-se a propagação e a continuidade dos projetos de educação cidadã, no ano de 2006 a Resolução nº 1044 deu luz à <strong>Câmara Jovem</strong>, voltada aos alunos integrantes do Ensino Médio.</p>
                    <p>E, em 2008, a Resolução nº 1061 veio para criar a <strong>Escola do Legislativo Professor Rômulo Coelho</strong>. </p>
                    <p>Instituída a Escola do Legislativo Professor Rômulo Coelho, os trabalhos centrados na educação cidadã não cessaram. Dessa forma, surgiu, em 2010, por meio da Resolução nº 1127, a <strong>Academia Juvenil de Letras</strong>.</p>
                    <p>Partindo-se da existência das supracitadas Câmaras Mirim e Jovem, a Escola do Legislativo Professor Rômulo Coelho deu luz a dois novos projetos no ramo da educação cidadã: Câmara do Idoso e Câmara Universitária.</p>
                    <p>Almejando o máximo alcance da educação cidadã, a Escola do Legislativo Professor Rômulo Coelho, através da Resolução nº 1224, criou, em 2015, a <strong>Câmara Pré-Mirim</strong>, atingindo, dessa forma, o único público que se encontrava à margem de nossos projetos os integrantes do 1º ao 5º ano do Ensino Fundamental I.</p>
                    <p>Conta ainda com diversos outros projetos como Autoridade por um dia, Parla Jovem, Parlamento Jovem Minas, Educador do Ano, Arte nas Ruas, etc.</p>
                    <br>
                    <img src="<c:url value="/resources/img/foto.jpg"/>" width="100%" >
                </div>
            </div>
        </div>
        <br>
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

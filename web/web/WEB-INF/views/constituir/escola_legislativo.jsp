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
                <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">A��o</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educa��o</font></h3>
            </div>
                </div>
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; text-align: justify;">
                    <br>
                    <p>  No munic�pio de Pouso Alegre &#45 MG, a educa��o cidad� iniciou-se no ano de 2004, com a cria��o da <strong>C�mara Mirim</strong>, atrav�s da Resolu��o n� 993, tendo como p�blico-alvo os componentes do Ensino Fundamental II (6� ao 9� ano).</p> 
                    <p>Visando-se a propaga��o e a continuidade dos projetos de educa��o cidad�, no ano de 2006 a Resolu��o n� 1044 deu luz � <strong>C�mara Jovem</strong>, voltada aos alunos integrantes do Ensino M�dio.</p>
                    <p>E, em 2008, a Resolu��o n� 1061 veio para criar a <strong>Escola do Legislativo Professor R�mulo Coelho</strong>. </p>
                    <p>Institu�da a Escola do Legislativo Professor R�mulo Coelho, os trabalhos centrados na educa��o cidad� n�o cessaram. Dessa forma, surgiu, em 2010, por meio da Resolu��o n� 1127, a <strong>Academia Juvenil de Letras</strong>.</p>
                    <p>Partindo-se da exist�ncia das supracitadas C�maras Mirim e Jovem, a Escola do Legislativo Professor R�mulo Coelho deu luz a dois novos projetos no ramo da educa��o cidad�: C�mara do Idoso e C�mara Universit�ria.</p>
                    <p>Almejando o m�ximo alcance da educa��o cidad�, a Escola do Legislativo Professor R�mulo Coelho, atrav�s da Resolu��o n� 1224, criou, em 2015, a <strong>C�mara Pr�-Mirim</strong>, atingindo, dessa forma, o �nico p�blico que se encontrava � margem de nossos projetos os integrantes do 1� ao 5� ano do Ensino Fundamental I.</p>
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

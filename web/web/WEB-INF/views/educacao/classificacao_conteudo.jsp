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
           <img src="<c:url value="img/logo-escola.png"/>" width="200" align="left">  
              <h1>Classificação do Conteúdo</h1>
              <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
       </div>
        <br>
        <div class="container">

            <div class="row">
                <div class="col-md-10 col-sm-offset-1">    
                    <div class="panel panel-default">
                        <div class="panel-body" style="font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">
                            <p> Muitos legisladores criam a obrigatoriedade de se inserir conteúdos na matriz curricular das escolas de seus municípios. Pela inviabilidade de se criar novas disciplinas, normalmente são criadas as semanas de educação no trânsito, da saúde bucal, do folclore local, das doenças sexualmente transmissíveis, do combate a drogas, etc. </p>
                            <p>O intuito do Portal Educacional é que o estudo da cidadania e dos conhecimentos da Constituição Federal não seja mais um peso para a matriz curricular das escolas ou só uma semana comemorativa. A ideia é transmitir os conhecimentos de maneira interdisciplinar juntamente com os conteúdos já ministrados no ensino fundamental e médio. Portanto, as questões recebidas e analisadas pelo moderador, estarão à disposição no portal já adequadas ao nível de ensino, à área do conhecimento e classificadas pelo tipo, para que sejam aplicadas da melhor maneira nas escolas de todo Brasil. </p> <br>
                            <img src="<c:url value="/resources/img/enem.png"/>" align="right" hspace="10px" width="280">
                            <p><strong>NÍVEL DE ENSINO</strong></p>
                            <p style="margin-left: 4em">
                                <strong>Fundamental I</strong> = 1º ao 5º anos.<br>
                                <strong>Fundamental II</strong> = 6º ao 9º anos.<br>
                                <strong>Médio</strong> = anos I, II e III <br>
                            </p>

                            <p><strong>TIPO DE QUESTÃO</strong></p>
                            <p style="margin-left: 4em">
                                <strong>Aberta</strong> = textuais, dissertativas ou para completar campos.<br>
                                <strong>Fechada</strong> = com alternativas ou do tipo associativa.<br>
                                <strong>Visual</strong> = associação de desenhos, caça-palavras, cruzadinhas, etc.<br>
                                <strong>Dinâmica</strong> = exercícios práticos, brincadeiras, jogos, atividades em grupo, etc.<br>
                            </p>

                            <p><strong>ÁREA DO CONHECIMENTO</strong></p>
                            <p style="margin-left: 4em">
                                <strong>Linguagens</strong> = Língua Portuguesa e Inglesa, artes, literatura e educação física.<br>
                                <strong>Matemática</strong> = matemática e raciocínio lógico numérico.<br>
                                <strong>Ciências da Natureza</strong> = Química, Física e Biologia.<br>
                                <strong>Ciências Humanas</strong> = Geografia, História, Sociologia e Filosofia.<br>
                            </p>

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

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Construir</title>
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
            <h1>Constituição em Miúdos</h1>
            <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">  

                    <p> Visando simplificar o conteúdo de nossa Carta Magna, de modo a torná-lo mais didático e facilmente compreensível, despido de vocábulos técnico-jurídicos que muitas vezes impossibilitam sua correta compreensão, A Escola do Legislativo Professor Rômulo Coelho lançou a renomada obra Constituição em Miúdos, uma releitura da Constituição Federal, de autoria da Diretora Madu Macedo, que já percorrera inúmeros municípios de nosso país, levando a educação cidadã aos jovens de 12 a 15 anos.</p>
                    <img src="<c:url value="/resources/img/cont3.jpg"/>" align="left" width="300" hspace="10px">     
                    <p> Visando a efetividade da <strong>Constituição em Miúdos </strong>, de modo a utilizá-la como verdadeiro objeto propulsor da cidadania, a <strong>Lei nº 5667/16</strong> autorizou o Poder Executivo a implantar o <strong>estudo da obra nas escolas da rede municipal</strong>, no âmbito do município de Pouso Alegre - MG. </p>
                    <p>A Constituição em Miúdos já tem um alcance nacional e tem sido fonte para outros projetos como a Gincana do Saber, outro projeto da Escola do Legislativo de Pouso Alegre. Nessa gincana, os alunos estudam o conteúdo da Constituição em Miúdos para uma dinâmica de perguntas e respostas.</p>
                    <p>No projeto Parlamento Jovem Minas 2017, foi aprovada uma proposta dos jovens participantes pedindo à Comissão de Participação Popular da Assembleia Legislativa, a alteração da Lei Estadual 15.476/2005 incluindo o estudo da Constituição em Miúdos no ensino fundamental e médio nas escolas públicas e privadas de forma interdisciplinar, promovendo o debate político.
                        Conheça a <a href="http://www.cmpa.mg.gov.br/Servico/Download/b0337d41-6b72-4cf1-a5fa-285093d3c1e4.pdf" target="_blank"><strong>Constituição em Miúdos</strong></a>.</p>
                    <img src="<c:url value="/resources/img/const2.jpg"/>" width="100%">
                </div>
            </div>
        </div>
        <br>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify;">  
                    <h1 style="font-family: sketch;">Cartilha de Atividades</h1> <br>
                    <p>Ainda não satisfeita e visando o aprimoramento contínuo da educação cidadã, a Escola do Legislativo Professor Rômulo Coelho dispendeu seus esforços na criação da <strong>Cartilha de Atividades da Constituição em Miúdos</strong>, destinada aos alunos do 4º ano do Ensino Fundamental, que, dessa forma, passaram a ter um acesso ainda mais simplificado ao conteúdo da obra, por meio de exercícios multidisciplinares e didáticos. </p>
                    <img src="<c:url value="/resources/img/cartilha.jpg"/>" align="left" width="400" hspace="10px">     
                    <p>Em 2016 foi inserida no plano decenal e foi aprovada a Lei Municipal  </p>        
                    <p>Almejando a efetiva aplicação tanto da obra <strong>Constituição em Miúdos</strong>, como de sua <strong>Cartilha de Atividades</strong>, também foi criada a <strong>Gincana do Miúdos</strong>. Participam todas as escolas municipais, inclusive a APAE, que trabalharam o conteúdo da Cartilha de Atividades ao longo do ano, numa divertida gincana de conhecimento em que todos ganham prêmios e muito conhecimento. </p>
                    <p>Além disso, é premiada a escola que desenvolver o projeto mais inovador de aplicação dos conhecimentos trabalhados. São exemplos: visita a bairros, hospitais, postos de saúde, pontos de ônibus, pontos de lixo, prefeitura, câmara, etc. Conheça a <a href="http://www.cmpa.mg.gov.br/Servico/Download/77ed7412-4404-4060-824b-cbd41a2c51a8.pdf" target="_blank"><strong>Cartilha de Atividades</strong></a>.</p>
                    
                    <img src="<c:url value="/resources/img/cartilha2.jpg"/>" width="470" height="350" align="right">
                    <img src="<c:url value="/resources/img/cartilha3.jpg"/>" width="470" height="350" align="left">
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

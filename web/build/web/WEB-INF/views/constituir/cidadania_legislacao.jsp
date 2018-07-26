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
        <div class="container">
            <div class="jumbotron text-center" style="background-color: #ffffff; font-family: sketch; width: 100%;">
                <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" align="left" style="margin-top: -20px;">  
                <h1>Cidadania e Legislação</h1>
                <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
            </div>

            <div class="row">
                <div class="col-sm-4" style="background-color: #ffffff;">
                    <h3><strong>A educação cidadã na Constituição da República Federativa do Brasil</strong></h3>
                    <p align="justify"><strong>Art. 205 -</strong> A educação, direito de todos e dever do Estado e da família, será promovida e incentivada com a colaboração da sociedade, visando ao pleno desenvolvimento da pessoa, seu preparo para o exercício da cidadania e sua qualificação para o trabalho.</p>
                    <p align="justify"><strong>Art. 39</strong>, §2º - A União, os Estados e o Distrito Federal manterão escolas de governo para a formação e o aperfeiçoamento dos servidores públicos, constituindo-se a participação nos cursos um dos requisitos para a promoção na carreira, facultada, para isso, a celebração de convênios ou contratos entre os entes federados.</p>
                </div>
                <div class="col-sm-3 col-sm-offset-1" style="background-color: #ffffff;" >
                    <h3> <strong>A educação cidadã na Lei de Diretrizes e Bases da Educação Nacional Lei nº 9.394, de 20 de dezembro de 1996</strong></h3>
                    <p align="justify"><strong>Art. 22 -</strong> A educação básica tem por finalidades desenvolver o educando, assegurar-lhe a formação comum indispensável para o exercício da cidadania e fornecer-lhe meios para progredir no trabalho e em estudos posteriores.</p>
                </div>
                <div class="col-sm-3 col-sm-offset-1" style="background-color: #ffffff;">
                    <h3><strong>LEI ESTADUAL (MG) 15.476/2005 - Determina a inclusão de conteúdos referentes à cidadania nos currículos das escolas de ensino fundamental e médio.</strong></h3>        
                    <p align="justify"><strong>Art. 1°</strong> - As escolas de ensino fundamental e médio integrantes do Sistema Estadual de Educação incluirão em seu plano curricular conteúdos e atividades relativos à cidadania, a serem desenvolvidos de forma interdisciplinar.</p>
                </div>

            </div>
        </div>
        <br>
        <div class = "container">
            <div class = "row">
                <div class = "col-sm-6">
                    <img src="<c:url value="/resources/img/imagem5.jpg"/>" width="90%" >
                </div>
                <div class="col-sm-6" style="background-color: #ffffff;">
                    <h3><strong>A importância da democratização do capital jurídico e o papel das Escolas do Legislativo </strong> </h3>
                    <p align="justify">Consoante a <strong>Teoria da Violência Simbólica</strong>, de <strong>Pierre Bourdieu</strong>, exercida pelos detentores do capital jurídico em face dos ?profanos? (leigos), temos que, atualmente, o direito ao conhecimento é fundamental para o verdadeiro exercício da cidadania.</p>
                    <p align="justify">Qualquer cidadão, independente de sua posição social, de sua raça, de sua cor, de sua etnia ou de qualquer outra classificação, é afetado pelo ordenamento jurídico, indistinta e inevitavelmente, por isso, <strong>TODO CIDADÃO TEM DIREITO AO CONHECIMENTO.</strong></p>   
                    <p align="justify"><em>Artigo científico ?A democratização do capital jurídico por meio da Escola do Legislativo de Pouso Alegre: uma análise a partir de Pierre Bourdieu?, de autoria de Dr. Geraldo Cunha Neto.</em></p>
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

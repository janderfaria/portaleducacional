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
                <h1>Cidadania e Legisla��o</h1>
                <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">A��o</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educa��o</font></h3>
            </div>

            <div class="row">
                <div class="col-sm-4" style="background-color: #ffffff;">
                    <h3><strong>A educa��o cidad� na Constitui��o da Rep�blica Federativa do Brasil</strong></h3>
                    <p align="justify"><strong>Art. 205 -</strong> A educa��o, direito de todos e dever do Estado e da fam�lia, ser� promovida e incentivada com a colabora��o da sociedade, visando ao pleno desenvolvimento da pessoa, seu preparo para o exerc�cio da cidadania e sua qualifica��o para o trabalho.</p>
                    <p align="justify"><strong>Art. 39</strong>, �2� - A Uni�o, os Estados e o Distrito Federal manter�o escolas de governo para a forma��o e o aperfei�oamento dos servidores p�blicos, constituindo-se a participa��o nos cursos um dos requisitos para a promo��o na carreira, facultada, para isso, a celebra��o de conv�nios ou contratos entre os entes federados.</p>
                </div>
                <div class="col-sm-3 col-sm-offset-1" style="background-color: #ffffff;" >
                    <h3> <strong>A educa��o cidad� na Lei de Diretrizes e Bases da Educa��o Nacional Lei n� 9.394, de 20 de dezembro de 1996</strong></h3>
                    <p align="justify"><strong>Art. 22 -</strong> A educa��o b�sica tem por finalidades desenvolver o educando, assegurar-lhe a forma��o comum indispens�vel para o exerc�cio da cidadania e fornecer-lhe meios para progredir no trabalho e em estudos posteriores.</p>
                </div>
                <div class="col-sm-3 col-sm-offset-1" style="background-color: #ffffff;">
                    <h3><strong>LEI ESTADUAL (MG) 15.476/2005 - Determina a inclus�o de conte�dos referentes � cidadania nos curr�culos das escolas de ensino fundamental e m�dio.</strong></h3>        
                    <p align="justify"><strong>Art. 1�</strong> - As escolas de ensino fundamental e m�dio integrantes do Sistema Estadual de Educa��o incluir�o em seu plano curricular conte�dos e atividades relativos � cidadania, a serem desenvolvidos de forma interdisciplinar.</p>
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
                    <h3><strong>A import�ncia da democratiza��o do capital jur�dico e o papel das Escolas do Legislativo </strong> </h3>
                    <p align="justify">Consoante a <strong>Teoria da Viol�ncia Simb�lica</strong>, de <strong>Pierre Bourdieu</strong>, exercida pelos detentores do capital jur�dico em face dos ?profanos? (leigos), temos que, atualmente, o direito ao conhecimento � fundamental para o verdadeiro exerc�cio da cidadania.</p>
                    <p align="justify">Qualquer cidad�o, independente de sua posi��o social, de sua ra�a, de sua cor, de sua etnia ou de qualquer outra classifica��o, � afetado pelo ordenamento jur�dico, indistinta e inevitavelmente, por isso, <strong>TODO CIDAD�O TEM DIREITO AO CONHECIMENTO.</strong></p>   
                    <p align="justify"><em>Artigo cient�fico ?A democratiza��o do capital jur�dico por meio da Escola do Legislativo de Pouso Alegre: uma an�lise a partir de Pierre Bourdieu?, de autoria de Dr. Geraldo Cunha Neto.</em></p>
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

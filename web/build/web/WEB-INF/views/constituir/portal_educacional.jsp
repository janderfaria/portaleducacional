<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
        <div class="jumbotron text-center col-sm-8 col-sm-offset-2" style="background-color: #ffffff; font-family: sketch;">
            <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" align="left">  
            <h1>Portal Educacional</h1>
            <h3 style="text-shadow: 1px 1px 1px #000000"><font color="#009900">Constituir</font> <font color="#ffff00">A��o</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educa��o</font></h3>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify; margin-bottom: 20px;">
                    <img src="<c:url value="/resources/img/foto_portal.png"/>" align="right" width="300" hspace ="10px" >
                    <p align="justify"> Com o sucesso da Constitui��o em Mi�dos e Cartilha de Atividades, surgiu a indaga��o: Por que n�o elaborar cartilhas de atividades para todos os anos do ensino fundamental e m�dio?</p>
                    <p align="justify">Por outro lado, veio a seguinte quest�o: n�o seria uma pretens�o e restri��o somente a Escola do Legislativo de Pouso Alegre definir todo o conte�do a ser trabalhado nas escolas?</p>
                    <p align="justify">Da� surgiu a ideia da pr�pria comunidade escolar participar do processo, dando ideias de como se trabalhar a cidadania de maneira interdisciplinar nas escolas. Com isso nasceu o projeto de um portal educacional: uma ferramenta que permitiria esse compartilhamento de ideias de todos para todos. Logo nasceu tamb�m o slogan:</p><br>
                    <img src="<c:url value="/resources/img/foto_portal2.jpg"/>" align="left" width="300" vspace="50px" hspace = "10px"> 
                    <p> <strong>&quotConstituir a��o, construir educa��o!&quot</strong></p>
                    <p align="justify">Com o portal educacional s�o muitas as vantagens: <br>
                        - Est�mulo ao exerc�cio da gest�o democr�tica e participativa; <br>
                        - Gera��o de conte�dos espec�ficos por aqueles que t�m experi�ncia na �rea, adequando exerc�cios � matriz curricular; <br>
                        - Reconhecimento e motiva��o: as quest�es e ideias ter�o assinatura do autor e pode-se criar uma premia��o pelo ranking de quest�es mais acessadas ou melhor avaliadas; <br>
                        - Grande capilaridade: o projeto pode ter um alcance nacional com r�pida implanta��o e custos muito reduzidos; <br>
                        - Credibilidade: com a modera��o por parte de uma institui��o  <br>
                    </p>
                </div>

            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-md-10 col-sm-offset-1" style="border-radius: 6px; background-color: #ffffff; font-size: large; line-height: 28px; padding-bottom: 20px; padding-top: 20px; text-align: justify; margin-bottom: 20px; height: auto;">
                    <h1 style="font-family: sketch;">Equipe de Desenvolvimento</h1><br>
                    <div class="col-md-4" style="border-right: 1px solid #8e9bae;">
                        <div style="margin-bottom: 20px;"><strong>Desenvolvedor Front-end e Back-end</strong></div>
                        <p><i class="glyphicon glyphicon-user"></i>Jander Faria</p>
                        <p><img src="<c:url value="/resources/img/glyphicons-github.png"/>" width="18"> github.com/janderfaria</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> jander_faria@hotmail.com</p>
                        <p><img src="<c:url value="/resources/img/glyphicons-linkedin.png"/>" width="18"> jander_faria@hotmail.com</p>
                    </div>
                    <div class="col-md-4" style="border-right: 1px solid #8e9bae;">
                        <div style="margin-bottom: 20px;"><strong>Desenvolvedor Front-end</strong></div>
                        <p><i class="glyphicon glyphicon-user"></i>Gabriel Garcia</p>
                        <p><img src="<c:url value="/resources/img/glyphicons-github.png"/>" width="18"> glggarcia_fai@hotmail.com</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> glggarcia_fai@hotmail.com</p>
                        <p><img src="<c:url value="/resources/img/glyphicons-linkedin.png"/>" width="18"> glggarcia_fai@hotmail.com</p>
                    </div>
                    <div class="col-md-4">
                        <div style="margin-bottom: 20px;"><strong>Estrutura��o da interface do Portal</strong></div>
                        <p><i class="glyphicon glyphicon-user"></i>Geovan Ferraz</p>
                        <p><i class="glyphicon glyphicon-envelope"></i> geovan@cmpa.mg.gov.br</p>
                    </div>
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

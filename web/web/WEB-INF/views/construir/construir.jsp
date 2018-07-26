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
        <!-- Page Content -->
        <div class="container">
            <!-- Jumbotron Header -->
            <div class="panel well well-lg" style=" border-color: #ffcc00;">
                <div class="panel-heading">
                    <h1 id="h1-header" class="h1_card">Constituir Ação, <strong><font size="10" color="#ffcc00">Construir</font></strong> Educação</h1>
                </div>
                <div id="conteudo" class="panel-body scroll-bar" style="border: 1px solid; border-color: #ffcc00; font-size: large; " >
                    <p style="line-height: 30px!important"><strong>CONSTRUIR</strong>, nos remete à construção do conhecimento, da educação, a importância de se contribuir para o crescimento da educação cidadã. Além disso, essa construção se dá pela colaboração de muitos e não por uma única fonte. O objetivo é que o portal receba questões/exercícios associados a conteúdos da constituição federal e cidadania em geral, com uma linguagem simplificada e interdisciplinar, para que possam ser trabalhados nas escolas, dentro das disciplinas da matriz curricular do ensino fundamental e médio.</p>
                    <p style="line-height: 30px!important">Através dos menus abaixo, temos um <strong>cadastro</strong>, caso seja seu primeiro acesso, e um <em><strong>entrar</strong></em> caso já tenha se cadastrado. Desta forma as questões serão creditadas ao autor e possibilitando mais uma forma de busca das questões pelos usuários: pelo nome do autor, estado, cidade, instituição. (em implementação)</p>
                    <p style="line-height: 30px!important">   Em <strong>Perfil do Usuário</strong>, pode-se listar todas as questões já enviadas, inclusive as ainda não liberadas pelo moderador. Em seguida temos um tutorial simples de <strong>como inserir as questões</strong> e por fim, o link mais importante do portal: <strong>INSERIR QUESTÕES!</strong> Esperamos receber muitas ideias para construirmos um país muito melhor!</p>

                </div>
                <br> 
                <div class="row text-center" id="botoes">

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn btn-block" href="/web/cadastro"><strong>Cadastro</strong></a>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 mb-4" id="botao_login">
                        <a class = "btn btn-block" href="/web/entrar" ><strong>Entrar</strong></a>
                    </div>
                    
                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn btn-block"  id="ajuda-inserir" href="/web/construir/inserir-questoes"><strong>Como inserir questões</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn btn-block" href="/web/questao/inserir"><strong>Inserir Questões</strong></a>
                    </div>

                </div>
            </div>
            <!-- /.row -->

        </div>
        <!-- /.container -->
    </body>
    <footer>
        <jsp:include page='/WEB-INF/views/footer.jsp'></jsp:include>
            <!-- Bootstrap core JavaScript -->
            <script src="<c:url value="resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="resources/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/cadastro.js"/>"></script>
    </footer>
</html>

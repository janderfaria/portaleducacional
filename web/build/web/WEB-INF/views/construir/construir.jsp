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
                    <h1 id="h1-header" class="h1_card">Constituir A��o, <strong><font size="10" color="#ffcc00">Construir</font></strong> Educa��o</h1>
                </div>
                <div id="conteudo" class="panel-body scroll-bar" style="border: 1px solid; border-color: #ffcc00; font-size: large; " >
                    <p style="line-height: 30px!important"><strong>CONSTRUIR</strong>, nos remete � constru��o do conhecimento, da educa��o, a import�ncia de se contribuir para o crescimento da educa��o cidad�. Al�m disso, essa constru��o se d� pela colabora��o de muitos e n�o por uma �nica fonte. O objetivo � que o portal receba quest�es/exerc�cios associados a conte�dos da constitui��o federal e cidadania em geral, com uma linguagem simplificada e interdisciplinar, para que possam ser trabalhados nas escolas, dentro das disciplinas da matriz curricular do ensino fundamental e m�dio.</p>
                    <p style="line-height: 30px!important">Atrav�s dos menus abaixo, temos um <strong>cadastro</strong>, caso seja seu primeiro acesso, e um <em><strong>entrar</strong></em> caso j� tenha se cadastrado. Desta forma as quest�es ser�o creditadas ao autor e possibilitando mais uma forma de busca das quest�es pelos usu�rios: pelo nome do autor, estado, cidade, institui��o. (em implementa��o)</p>
                    <p style="line-height: 30px!important">   Em <strong>Perfil do Usu�rio</strong>, pode-se listar todas as quest�es j� enviadas, inclusive as ainda n�o liberadas pelo moderador. Em seguida temos um tutorial simples de <strong>como inserir as quest�es</strong> e por fim, o link mais importante do portal: <strong>INSERIR QUEST�ES!</strong> Esperamos receber muitas ideias para construirmos um pa�s muito melhor!</p>

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
                        <a class="btn btn-block"  id="ajuda-inserir" href="/web/construir/inserir-questoes"><strong>Como inserir quest�es</strong></a>
                    </div>

                    <div class="col-lg-3 col-md-6 mb-4">
                        <a class="btn btn-block" href="/web/questao/inserir"><strong>Inserir Quest�es</strong></a>
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

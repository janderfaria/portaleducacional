<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Portal Educacional da Cidadania</title>

<!-- Bootstrap core CSS -->
<link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="<c:url value="/resources/css/heroic-features.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
<link href="<c:url value="resources/css/estilo-login.css"/>" rel="stylesheet">
<link href="<c:url value="/resources/css/navbar-custom.css"/>" rel="stylesheet">
</head>
<!-- Static navbar -->
<div id="navbar-menu" class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/web">
                <span><img class="img-brand" style="width: 60px; height: 60px; margin-top: -15px; align: left; margin-right: 5px;" src="<c:url value="/resources/img/logo_portal.png"/>"></span>
                <p style="float: right; font-size: 16px; line-height: 1;" class="hidden-text">PORTAL EDUCACIONAL</p>
                <p style="margin-top: -10%; margin-left: 30%; font-size: 16px; line-height: 1; letter-spacing: 6px;" class="hidden-text">da Cidadania</p>
            </a>
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-menubuilder"><span class="sr-only">Toggle navigation</span><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span>
            </button>
        </div>
        <div class="collapse navbar-collapse navbar-menubuilder">
            <ul class="nav navbar-nav navbar-right">  
                <li class="vermelho">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Constituir <span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-vermelho">
                        <li><a href="/web/constituir"><strong>CONSTITUIR &raquo</strong></a></li>
                        <li><a href="/web/constituir/cidadania">Cidadania e Legislação</a></li>
                        <li><a href="/web/constituir/escola-do-legislativo">Escola do Legislativo</a></li>
                        <li><a href="/web/constituir/constituicao-miudos">Constituição em Miúdos</a></li>
                        <li><a href="/web/constituir/portal-educacional">Portal Educacional</a></li>
                    </ul>
                </li>   
                <li class="azul">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Ação <span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-azul">
                        <li><a href="/web/acao"><strong>AÇÃO &raquo</strong></a></li>
                        <li><a href="/web/acao/estatisticas">Estatísticas</a></li>
                        <li><a href="/web/acao/contato">Contato</a></li>
                        <li><a href="/web/acao/parcerias">Parcerias</a></li>
                        <li><a href="/web/acao/moderador">Moderador</a></li>
                    </ul>
                </li>
                <li class="amarelo">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Construir <span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-amarelo">
                        <li><a href="/web/construir"><strong>CONSTRUIR &raquo</strong></a></li>
                        <li><a href="/web/cadastro">Cadastro</a></li>
                        <li><a href="/web/entrar">Entrar</a></li>
                        <li><a href="/web/construir/inserir-questoes">Como inserir questões</a></li>
                        <li><a href="/web/questao/inserir">Inserir questões</a></li>
                    </ul>
                </li>                
                <li class="verde">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Educação <span class="caret"></span></a>
                    <ul class="dropdown-menu dropdown-verde">
                        <li><a href="/web/educacao"><strong>EDUCAÇÃO &raquo</strong></a></li>
                        <li><a href="/web/educacao/classificacao-do-conteudo">Classificação do conteúdo</a></li>
                        <li><a href="/web/educacao/como-procurar-questoes">Como procurar questões</a></li>
                        <li><a  href="/web/educacao/como-avaliar-questoes">Como avaliar Questões</a></li>
                        <li><a href="/web/questoes">Procurar questões</a></li>
                    </ul>
                </li>
                <c:if test="${not empty usuarioLogado.nome}">
                    <li class="user-navbar">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user" style="color:#777;"></span><span class="caret" style="color:#777;"></span></a>
                        <ul class="dropdown-menu dropdown-user">
                            <c:if test="${usuarioLogado.tipo eq 0}">
                                <li><a href="/web/colaborador/perfil">Meu perfil</a></li>
                            </c:if>
                            <c:if test="${usuarioLogado.tipo eq 1}">
                                <li><a href="/web/moderador/perfil">Meu perfil</a></li>
                            </c:if>
                            <li><a href="/web/logout">Sair</a></li>
                        </ul>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</div> 
</html>
<%-- 
    Document   : profile
    Created on : 23/09/2017, 21:22:22
    Author     : Jander Faria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <!-- Bootstrap core CSS -->
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/dashboard.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/navbar-custom.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/ie10-viewport-bug-workaround.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/jquery.dataTables.min.css"/>" rel="stylesheet">
        <title>Perfil ${usuarioLogado.nome}</title>
    </head>
    <body style="background-image: none!important;">
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
            <div class="container">
                <div class="jumbotron text-center" style="padding-bottom: 0px; margin-bottom: 0;background-color: rgba(255,255,255,0.7); font-family: sketch; width: 100%;">
                    <img src="<c:url value="/resources/img/logo-escola.png"/>" width="200" align="left" style="margin-top: -20px">  
                    <p style="font-size: 50px;">Bem vindo, </p><h2>${usuarioLogado.nome}!</p>
                </div>
            </div>                
        <div class="container">
            <div class="row">
                <div class="col-sm-12 perfil-dashboard main">
                    <div class="row placeholders">
                        <div class="col-xs-6 col-sm-3 placeholder">
                            <a href="/web/colaborador/questoes" type="button" class="btn btn-danger btn-lg lg">Minhas questões <i class="glyphicon glyphicon-list-alt"></i></a>
                        </div>
                        <div class="col-xs-6 col-sm-3 placeholder">
                            <a href="/web/questao/inserir" type="button" id="inserir-questao" class="btn btn-primary btn-lg lg">Inserir questão <i class="glyphicon glyphicon-pencil"></i></a>
                        </div>
                        <div class="col-xs-6 col-sm-3 placeholder">
                            <a href="/web/questoes" type="button" class="btn btn-warning btn-lg lg">Procurar questões <i class="glyphicon glyphicon-search"></i></a>
                        </div>
                        <div class="col-xs-6 col-sm-3 placeholder">
                            <a href="/web/construir/inserir-questoes" type="button" class="btn btn-success btn-lg lg">Ajuda <i class="glyphicon glyphicon-question-sign"></i></a>
                        </div>
                    </div>
                    <main>
                    <h2 class="sub-header">Minhas questões</h2>
                    <div class="table-responsive">
                        <table class="table table-hover" id="tabelaColaborador">
                            <thead>
                                <tr>
                                    <th>#Cód.</th>
                                    <th>Título</th>
                                    <th>Tipo</th>
                                    <th>Nível</th>
                                    <th>Disciplina</th>
                                    <th>Status</th>
                                    <th class="pull-right">Ações do colaborador</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${listaQuestao}" var="questao">
                                    <tr>
                                        <td>${questao.id}</td>
                                        <td>${questao.titulo}</td>
                                        <td>
                                            <c:if test="${questao.tipo == 1}">Fechada</c:if>
                                            <c:if test="${questao.tipo == 2}">Aberta</c:if>
                                            <c:if test="${questao.tipo == 3}">Visual</c:if>
                                            <c:if test="${questao.tipo == 4}">Dinâmica</c:if>
                                        </td>
                                        <td>${questao.nivel.nome}</td>
                                        <td>${questao.disciplina.nome}</td>
                                        <c:if test="${questao.status eq 0}"><td style="color: #ff8713">Pendente</td></c:if>
                                        <c:if test="${questao.status eq 1}"><td style="color: #19b109">Aprovada</td></c:if>
                                        <td><a href="/web/questao/${questao.id}/abrir" class="btn btn-default glyphicon glyphicon-fullscreen pull-right" title="Abrir questão" id="botao"></a>
                                            <c:if test="${questao.status eq 0}"><button id="confirmar-exclusao" title="Excluir questão" data-toggle="modal" data-target="#modalExcluir" data-id="${questao.id}" style="text-decoration: none;" class="btn btn-danger glyphicon glyphicon-trash btnModal pull-right"></button></c:if>
                                            <c:if test="${questao.status eq 0}"><a href="../questoes/${questao.id}/editar" class="btn btn-success glyphicon glyphicon-edit pull-right" title="Editar questão"></a></c:if> 
                                            
                                            
                                        </td>
                                    </tr>
                                      <!-- Modal -->
                                        <div class="modal fade" id="contato" role="dialog">
                                          <div class="modal-dialog">

                                            <!-- Modal content-->
                                            <div class="modal-content">
                                              <div class="modal-header">
                                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                <h4 class="modal-title">Atenção:</h4>
                                              </div>
                                              <div class="modal-body">
                                                  <p></p>
                                              </div>
                                              <div class="modal-footer">
                                                <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                                              </div>
                                            </div>

                                          </div>
                                        </div>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    </main>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <jsp:include page="/WEB-INF/views/modais.jsp"></jsp:include>
        <!-- Bootstrap core JavaScript -->
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <!-- Just to make our placeholder images work. Don't actually copy the next line! -->
        <script src="<c:url value="/resources/js/holder.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.dataTables.min.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
        <script src="<c:url value="/resources/js/ie10-viewport-bug-workaround.js"/>"></script>
        <script type="text/javascript" charset="utf8">     
    </footer>

</html>

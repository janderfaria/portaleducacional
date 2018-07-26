 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <!-- Bootstrap core CSS -->
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="<c:url value="/resources/css/heroic-features.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/navbar-custom.css"/>" rel="stylesheet">
        <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
        <jsp:include page="/WEB-INF/views/modais.jsp"></jsp:include>
        </head>

        <body>
            <div class="container">
                <div class="jumbotron text-center" style="background-color: rgba(255,255,255,0.7); font-family: sketch; width: 100%;">
                    <img src="<c:url value="/resources/img/logo-escola.png"/>" width="150" align="left">  
                    <h1>Inserir Questões</h1>
                    <h3><font color="#009900">Constituir</font> <font color="#ffff00">Ação</font>, <font color="#3333ff">Construir</font> <font color="#ff3300">Educação</font></h3>
                </div>
            </div>
            <!-- Page Content -->
            <div class="container">
            <c:if test="${empty usuarioLogado.nome}">
                <div class="panel-body">
                    <div class="alert alert-warning alert-dismissable fade in">
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                        <strong>Atenção!</strong> Para inserir questões você estar logado. Clique aqui para <small><strong><a href="/web/entrar">Entrar</a></strong></small> 
                        <small>ou <strong><a href="/web/cadastro">Cadastre-se</a></strong></small>
                    </div>
                </div>
            </c:if>
            <c:if test="${not empty usuarioLogado.nome}">
                <div class="panel panel-form" style="margin-bottom: 40px">
                    <div id="header-cidadania" class="panel-header" style="padding-top: 20px; padding-bottom: 15px; padding-left: 10px; border-bottom: 1px solid #BBB;">
                        <h1 id="h1-header" class="h1_card">
                            <c:if test="${empty questao.id}">Adicionar questão</c:if>
                            <c:if test="${not empty questao.id}">Editar questão</c:if>
                        </h1>
                    </div>
                    <div id="conteudo-cidadania" class="panel-body">    
                        <form method="post">
                            <div class="row">
                                    <label>Título</label>
                                    <input value="${questao.titulo}" name="titulo" type="text" class="form-control" placeholder="Insira o título da questão" required>
                            </div>
                            <div class="row">
                                <label for="selectNivel">Tipo <a href="#" style="text-decoration: none;" class="glyphicon glyphicon-question-sign" data-toggle="modal" data-target="#modalTipo"></a></label>
                                <select class="form-control" id="tipo" name="tipo" value="" required>
                                    <option value="${questao.tipo}" selected disabled>
                                        <c:if test="${empty questao.tipo}">Escolha o tipo da questão</c:if>
                                        <c:if test="${questao.tipo == 1}">Fechada</c:if>
                                        <c:if test="${questao.tipo == 2}">Aberta</c:if>
                                        <c:if test="${questao.tipo == 3}">Visual</c:if>
                                        <c:if test="${questao.tipo == 4}">Dinâmica</c:if>
                                    </option>
                                        <option value="1">Fechada</option>
                                        <option value="2">Aberta</option>
                                        <option value="3">Visual</option>
                                        <option value="4">Dinâmica</option>
                                </select>
                                </div>
                                <div class="row">
                                    <label for="nivel">Nível <a href="#" style="text-decoration: none;" class="glyphicon glyphicon-question-sign" data-toggle="modal" data-target="#modalNivel"></a></label>
                                    <select class="form-control" id="nivel" name="nivel" value="" required>
                                        <c:if test="${not empty questao.nivel.nome}">
                                            <option value="${questao.nivel.id}" selected disabled>${questao.nivel.nome}</option>
                                            <c:forEach items="${listaNivel}" var="nivel">
                                                <option value="${nivel.id}">${nivel.nome}</option>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${empty questao.nivel.nome}">
                                            <c:forEach items="${listaNivel}" var="nivel">
                                                <option value="${nivel.id}">${nivel.nome}</option>
                                            </c:forEach>
                                        </c:if>        
                                    </select>
                                    <label for="disciplina">Área de Conhecimento  <a href="#" style="text-decoration: none;" class="glyphicon glyphicon-question-sign" data-toggle="modal" data-target="#modalDisciplina"></a></label>
                                    <select class="form-control" id="disciplina" name="disciplina" value="" required>
                                        <c:if test="${not empty questao.disciplina.id}">
                                            <option value="${questao.disciplina.id}" selected disabled>${questao.disciplina.nome}</option>
                                            <c:forEach items="${listaDisciplina}" var="disciplina">
                                                <option value="${disciplina.id}">${disciplina.nome}</option>
                                            </c:forEach>
                                        </c:if>
                                        <c:if test="${empty questao.disciplina.nome}">
                                            <c:forEach items="${listaDisciplina}" var="disciplina">
                                                <option value="${disciplina.id}">${disciplina.nome}</option>
                                            </c:forEach>
                                        </c:if>        
                                    </select>
                                </div>
                            <div class="row">
                                <label for="texto">Insira abaixo sua questão:</label><br>
                            </div>
                            <div class="row">
                                <textarea id="txtArtigo" name="texto" class="form-control" style="height: 200px" value="" required>
                                    <c:if test="${not empty questao.texto}">${questao.texto}</c:if>
                                </textarea>
                            </div>
                            <div class="row">
                                    <label for="texto">Insira a resposta para sua questão:</label><br>
                            </div>
                            <div class="row">
                                <input name="questaoResposta" value="${questao.resposta.id}" hidden="hidden">
                                <textarea id="txtArtigo" name="textoResposta" class="form-control" style="height: 200px;" value="" required>
                                    <c:if test="${not empty questao.resposta.id}">${questao.resposta.texto}</c:if>
                                </textarea>
                            </div>
                            <br>
                            <div class="row">
                                <button type="submit" class="btn btn-success pull-right">Enviar questão</button>
                            </div>
                        </form>   
                    </div>
                </div>
            </c:if>
        </div>
        <!-- /.container -->
    </body>

    <footer>
        <jsp:include page='/WEB-INF/views/footer.jsp'></jsp:include>
            <!-- Bootstrap core JavaScript -->
            <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/cadastro.js"/>"></script>
        <script type="text/javascript" src="http://js.nicedit.com/nicEdit-latest.js"></script> 
        <script type="text/javascript">
            //<![CDATA[
            bkLib.onDomLoaded(function () {
                nicEditors.allTextAreas()
            });
            //]]>
        </script>
    </footer>


</html>

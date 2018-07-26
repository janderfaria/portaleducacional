<%-- 
    Document   : list
    Created on : 23/09/2017, 17:31:24
    Author     : Jander Faria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="<c:url value="/resources/css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/estilo-login.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/portlets.css"/>" rel="stylesheet"> 
        <link href="<c:url value="/resources/css/star-rating.css"/>" rel="stylesheet">
        <link href="<c:url value="/resources/css/star-rating.min.css"/>" rel="stylesheet">
        <title>Questões</title>
    </head>
    <body>
            <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
            <div class="container">
                <div class="jumbotron text-center" style="background-color: #ffffff; font-family: sketch; ">
                    <img src="<c:url value="/resources/img/logo-escola.png"/>" style="width: 15%; margin-top: -10px;" align="left">  
                    <h1>Procurar questões</h1>
                </div> 
            <form method="post" action="<c:url value="/questoes/pesquisar"/>">
                <div class="row">
                    <div class="col-md-2">
                        <label>Área de conhecimento:</label>
                        <select class="form-control" name="criterio" onchange="this.form.submit()">
                            <option selected="default" disabled>Disciplinas...</option>
                            <option value="linguagens">Linguagens</option>
                            <option value="matemática">Matemática</option>
                            <option value="ciências humanas">Ciências Humanas</option>
                            <option value="ciências da natureza">Ciências da Natureza</option>
                        </select>
                    </div>
            </form>
            <form method="post" action="<c:url value="/questoes/pesquisar"/>">
                    <div class="col-md-2">
                        <label>Nível de ensino:</label>
                        <select class="form-control" name="criterio" onchange="this.form.submit()">
                            <option selected="default" disabled>Níveis...</option>
                            <option value="ensino fundamental i">Ensino Fundamental I</option>
                            <option value="ensino fundamental ii">Ensino Fundamental II</option>
                            <option value="ensino médio">Ensino Médio</option>
                        </select>
                    </div>
            </form>
            <form method="post" action="<c:url value="/questoes/tipo"/>">       
                    <div class="col-md-2">
                        <label>Tipo da questão:</label>
                        <select class="form-control" name="criterio" onchange="this.form.submit()">
                            <option selected="default" disabled>Tipos...</option>
                            <option value="1">Fechadas</option>
                            <option value="2">Abertas</option>
                            <option value="3">Visual</option>
                            <option value="4">Dinâmicas</option>
                        </select>
                    </div>
            </form> 
            <form method="post" action="<c:url value="/questoes/estado"/>">         
                    <div class="col-md-2">
                        <label>Estado:</label>
                        <select class="form-control" name="criterio" onchange="this.form.submit()">
                            <option selected="default" disabled>Estados...</option>
                            <c:forEach items="${estados}" var="estado">
                                <option value="${estado.sigla}">${estado.sigla}</option>
                            </c:forEach>
                        </select>
                    </div> 
            </form>
            <form method="post" action="<c:url value="/questoes/usuario"/>">          
                    <div class="col-md-2">
                      <label>Autor:</label>
                      <div class="input-group">
                        <input type="text" class="form-control" name="criterio" placeholder="Autor...">
                        <span class="input-group-btn">
                            <button class="btn btn-primary" type="submit">Ir &raquo</button>
                        </span>
                      </div><!-- /input-group -->
                    </div>   
            </form>  
            <form method="post" action="<c:url value="/questoes/pesquisar"/>">        
                    <div class="col-md-2">
                      <label>Pesquisa:</label>
                      <div class="input-group">
                        <input type="text" class="form-control" name="criterio" placeholder="Sua pesquisa">
                        <span class="input-group-btn">
                            <button class="btn btn-primary" type="submit">Ir &raquo</button>
                        </span>
                      </div><!-- /input-group -->
                    </div>  
            </form>        
                </div> 
            </form>
            <div class="row">
                <div class="alert alert-info">
                    <p>Selecione o filtro que desejar ou digite sua pesquisa nos campos e clique no botão <strong>"Ir"</strong> acima para listar as questões e exercícios que melhor se adequam à sua necessidade.</p>
                </div>
            </div>    
        </div>
        <div class="container">	
            <c:forEach items="${listaQuestao}" var="questao">
                <c:if test="${questao.status eq 1}">
                    <div class="row">
                        <div class="col-md-12 margin-bottom-30">
                            <!-- BEGIN Portlet PORTLET-->
                            <div class="portlet">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="glyphicon glyphicon-list-alt"></i>
                                        <span class="caption-subject text-uppercase"> Questão</span>
                                        <span class="caption-helper">#${questao.id} </span>
                                    </div>
                                    <div class="actions">
                                        <label style="padding-right: 15px;">
                                            <i class="glyphicon glyphicon-user"></i>
                                            ${questao.usuario.nome} (${questao.usuario.cidade.nome}/${questao.usuario.estado.sigla})
                                        </label>
                                        <label style="padding-right: 15px;">
                                            <i class="glyphicon glyphicon-check"></i>
                                            Tipo: <c:if test="${questao.tipo == 0}">${tipos[0]} </c:if>
                                            <c:if test="${questao.tipo == 1}">${tipos[1]} </c:if>
                                            <c:if test="${questao.tipo == 2}">${tipos[2]} </c:if>
                                            <c:if test="${questao.tipo == 3}">${tipos[3]} </c:if>
                                        </label>
                                        <label style="padding-right: 15px;">
                                            <i class="glyphicon glyphicon-education"></i>
                                            ${questao.nivel.nome}
                                        </label>
                                        <label style="padding-right: 15px;">
                                            <i class="glyphicon glyphicon-book"></i>
                                            ${questao.disciplina.nome}
                                        </label>
                                        <label style="padding-right: 15px;">
                                            <i class="glyphicon glyphicon-star-empty"></i>
                                            <small>
                                                <c:if test="${questao.qtdeAvaliacoes eq 0}">Sem avaliações</c:if>
                                                <c:if test="${questao.qtdeAvaliacoes > 0}">
                                                    <fmt:formatNumber type = "number" maxFractionDigits = "2" value = "${questao.nota/questao.qtdeAvaliacoes}"/>
                                                </c:if>
                                            </small> 
                                        </label>                                            
                                    </div>
                                </div>
                                <div class="portlet-body">
                                    <h4>${questao.titulo}</h4>
                                    <p>${questao.texto}</p>
                                </div>
                          <div class="portlet-body" style="border-top: 1px solid #eee; padding-top: 5px!important; padding-bottom: 20px;">
                                <h5 class="pull-right">
                                    <button class="btnRespostas" data-toggle="modal" data-target="#modalResposta" data-id="${questao.id}"><strong>Mostrar resposta</strong></button> 
                                </h5>
                                <c:if test="${not empty usuarioLogado}">
                                    <form action="/web/questoes/${questao.id}/avaliar" method="get">
                                        <select onchange="this.form.submit()" id="star-rating" name="nota">
                                            <option value="1">1</option>
                                            <option value="2">2</option> 
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                    </form> 
                                </c:if>
                            </div>   
                            </div>
                            <!-- END Portlet PORTLET-->
                        </div>
                    </div> 
                </c:if>
            </c:forEach>
        </div>
    </body>

    <footer>
        <jsp:include page="/WEB-INF/views/modais.jsp"></jsp:include>
        <jsp:include page='/WEB-INF/views/footer.jsp'></jsp:include>
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/jspdf.min.js"/>"></script>
        <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <!--<script src="<c:url value="/resources/js/star-rating.js"/>"></script>
        <script src="<c:url value="/resources/js/star-rating.min.js"/>"></script>
        <script>
                $('#star-rating').starrating();
        </script>-->
    </footer>

</html>

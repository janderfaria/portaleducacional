<%-- 
    Document   : questoes
    Created on : 28/10/2017, 19:34:41
    Author     : Jander Faria
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<%-- 
    Document   : entrar
    Created on : 11/09/2017, 14:20:58
    Author     : ti
--%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>Cadastro</title>        
        <jsp:include page="/WEB-INF/views/navbar.jsp"></jsp:include>
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="jumbotron text-center panel3" style="background-color: rgba(255,255,255,1); font-family: sketch; width: 70%;">
                        <img src="<c:url value="/resources/img/logo-escola.png"/>" width="150" align="left" style="margin-top: -20px;">  
                    <h1>Cadastro</h1>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="alert panel3" style="padding: 20px!important; opacity: 0.8; background-color: #ffffff; ">
                    <div style="margin-top: -10px!important; border-bottom: 1px solid #bce8f1;">
                        <strong>Cadastro</strong>
                    </div>
                    <li>Efetue seu cadastro inicial preenchendo as informações básicas ao lado.</li>
                    <li>Serão importantes para se dar crédito a todo material que você compartilhar no portal, além de permitir que visitantes pesquisem questões com estas informações.</li>
                    <li>Após o cadastro basta fazer o login para inserir ou avaliar questões do portal e ter acesso ao seu perfil de usuário.</li>
                </div>   
                <div class="row">
                    <div class="col-md-12">
                        <div class="panel panel3 panel-default">
                            <div class="panel-heading"><i class="glyphicon glyphicon-edit"></i> Cadastro</div>
                            <div class="panel-body">
                                <form method="post" id="formCadastro" name="formCadastro">
                                    <div class="col-md-12">
                                        <label for="nome">Nome</label>
                                        <input type="text" class="form-control" id="nome" name="nome" placeholder="Nome" required>
                                    </div>
                                    <div class="col-md-6">      
                                        <label for="estado">Estado</label>
                                        <select class="form-control required" id="estado" name="estado" onchange="getCidades(this.value);" value="" required>
                                            <option value="default">Selecione seu estado</option>
                                            <c:forEach items="${estados}" var="estado">
                                                <option value="${estado.id}">${estado.nome}</option>
                                            </c:forEach>
                                        </select>
                                    </div>
                                    <div class="col-md-6">      
                                        <label for="cidade">Cidade</label>
                                        <select class="form-control" id="cidade" name="cidade" disabled value="" required>
                                            <option value="default">Selecione sua cidade</option>
                                            <c:forEach items="${cidades}" var="cidade">
                                                <option value="${cidade.id}">${cidade.nome}</option>
                                            </c:forEach>
                                        </select>
                                    </div>

                                    <div class="col-md-12">
                                        <label for="profissao">Profissão</label>
                                        <input type="text" class="form-control" id="profissao" name="profissao" placeholder="Profissao" required>
                                    </div>

                                    <div class="col-md-12">
                                        <label for="escola">Escola</label>
                                        <input type="text" class="form-control" id="escola" name="escola" placeholder="Escola" required>
                                    </div>

                                    <div class="col-md-12">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                    </div>

                                    <div class="col-md-12">
                                        <label for="senha">Senha</label>
                                        <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha" required>
                                    </div>
                                    <div class="alert alert-info" id="erro" hidden="">
                                    </div>
                                    <div class="col-md-12">
                                        <br/><input type="submit" class="btn btn-success pull-right" value="Cadastrar">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <footer>
        <jsp:include page='/WEB-INF/views/footer.jsp'></jsp:include>
            <!-- Bootstrap core JavaScript -->
            <script src="<c:url value="resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="resources/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/jquery.validate.min.js"/>"></script>
        <script src="<c:url value="/resources/js/additional-methods.min.js"/>"></script>
        <script src="<c:url value="/resources/js/validacao.js"/>"></script>
    </footer>
</html>

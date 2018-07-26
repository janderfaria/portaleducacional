<%-- 
    Document   : entrar
    Created on : 11/09/2017, 14:20:58
    Author     : ti
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <title>ENTRAR</title>
        <jsp:include page='/WEB-INF/views/navbar.jsp'></jsp:include>
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="jumbotron text-center panel3" style="background-color: rgba(255,255,255,1); font-family: sketch; width: 70%;">
                        <img src="<c:url value="/resources/img/logo-escola.png"/>" width="150" align="left" style="margin-top: -20px;">  
                        <h1>Entrar</h1>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="alert  panel3" style="padding: 20px!important; opacity: 0.8; background-color: #ffffff;">
                            <div style="margin-top: -10px!important; border-bottom: 1px solid #bce8f1;">
                                <strong>Entrar</strong>
                            </div>
                            <li>Efetue sua entrada inserindo USUÁRIO e SENHA para inserir novas questões no portal.</li>
                            <li>Caso seja seu primeiro acesso, efetue primeiramente um cadastro com informações básicas.</li>
                            <li>Para somente efetuar busca por questões não é necessário fazer o login.</li>
                        </div>
                    </div>
                </div>                  
                <div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12 panel3">
                        <div class="panel panel-default" >
                            <div class="panel-heading"><i class="glyphicon glyphicon-user"></i> Entrar</div>
                            <div class="panel-body">
                                <form method="post">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>
                                    </div>
                                    <div class="form-group">
                                        <label for="nome">Senha</label>
                                        <input type="password" class="form-control" id="senha" name="senha" placeholder="Senha" required>
                                    </div>
                                    <div class="form-group">
                                        <input type="submit" class="btn btn-primary" value="Entrar">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>                           
                </div>
            </div>
        </body>
        <footer class="navbar-inverse footer" style="bottom: -80px;">
            <img src="<c:url value="/resources/img/escola.png"/>" class="img-responsive img-footer">
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
    </footer>
</html>

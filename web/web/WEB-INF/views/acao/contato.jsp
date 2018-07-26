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
        <title>CONTATO</title>
        <jsp:include page='/WEB-INF/views/navbar.jsp'></jsp:include>
        </head>
        <body>
            <div class="container">
                <div class="row">
                    <div class="jumbotron text-center panel3" style="background-color: rgba(255,255,255,1); font-family: sketch; width: 70%;">
                        <img src="<c:url value="/resources/img/logo-escola.png"/>" width="150" align="left" style="margin-top: -20px;">  
                    <h1>Contato</h1>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="alert  panel3" style="padding: 20px!important; opacity: 0.8; background-color: #ffffff;">
                    <div style="margin-top: -10px!important; border-bottom: 1px solid #bce8f1;">
                        <strong>Contato</strong>
                    </div>
                    <p>Aqui é o espaço para você colaborar com o Portal Educacional enviando sugestões, críticas, apontando falhas, erro nas questões, nas respostas, etc. Poderá também contribuir com informações, relatos sobre como as informações do Portal Educacional estão sendo úteis para sua comunidade escolar.</p>
                </div> 
            </div>
        </div>
        <div class="container">
            <div class="row">
                    <div class="panel panel-default panel3">
                        <div class="panel-heading"><i class="glyphicon glyphicon-envelope"></i> Contato</div>

                        <div class="panel-body">
                            <form method="post">
                                <div class="form-group">
                                    <label for="email">Seu Email</label>
                                    <input type="email" class="form-control" id="email" name="email" placeholder="Email">
                                </div>                                    
                                <div class="form-group">
                                    <label for="assunto">Assunto</label>
                                    <input type="text" class="form-control" id="assunto" name="assunto" placeholder="Assunto">
                                </div>
                                <div class="form-group">
                                    <label for="mensagem">Digite abaixo sua mensagem:</label>
                                    <textarea class="form-control" rows="5" id="mensagem" name="mensagem"></textarea>
                                </div>
                                <div class="form-group">
                                    <input type="submit" class="btn btn-primary" value="Enviar">
                                </div>
                            </form>
                        </div>
                    </div>

            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="alert panel3" style="padding: 20px!important; opacity: 0.8; background-color: #ffffff;">
                    <div style="margin-top: -10px!important; border-bottom: 1px solid #bce8f1;">
                        <strong>ESCOLA DO LEGISLATIVO DE POUSO ALEGRE PROFESSOR RÔMULO COELHO</strong>
                    </div>
                    <p><strong>Fones: </strong>(35) 3429-6500 / (35) 3429-6508<br>
                        <strong>E-mail: </strong>portaldacidadania@cmpa.mg.gov.br<br>
                        <strong>Endereço: </strong>Av. São Francisco, 320 – Primavera. Pouso Alegre – MG. CEP: 37550-000 
                    </p>
                </div>
            </div>
        </div>                    
    </body>
    <footer class="navbar-inverse footer" style="bottom: -80px;">
        <img src="<c:url value="/resources/img/escola.png"/>" class="img-responsive img-footer">
        <script src="<c:url value="/resources/js/jquery.min.js"/>"></script>
        <script src="<c:url value="/resources/popper/popper.min.js"/>"></script>
        <script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
        <script src="<c:url value="/resources/js/html2canvas.js"/>"></script>
        <script src="<c:url value="/resources/jquery2.js"/>"></script>
        <script src="<c:url value="/resources/js/cadastro.js"/>"></script>
    </footer>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <jsp:include page='/WEB-INF/views/navbar.jsp'></jsp:include>
    </head>
    
    <body>
        <!-- Page Content -->
        <div class="container">
            <!-- HOME-PAGE PCS -->
            <div class="row row2 hidden-in-mobile">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 nopadding">
                    <a href="/web/constituir" class="a-verde">
                        <h1 class="texto-constituir">CONSTITUIR</h1>
                        <img src="resources/img/1.png" class="img-responsive" id="img-1" style="margin-left: 21%;">
                    </a>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 nopadding">
                    <a href="/web/acao" class="a-amarelo">
                        <h1 class="texto-acao">AÇÃO</h1>
                        <img src="resources/img/2.png" class="img-responsive" id="img-2" style="margin-left: -1%;">
                    </a>
                </div>
            </div>
            <div class="row row2 hidden-in-mobile">
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 nopadding">
                    <a href="/web/construir" class="a-azul">
                        <h1 class="texto-construir">CONSTRUIR</h1>
                        <img src="resources/img/3.png" class="img-responsive" id="img-3" style="margin-left: 0; margin-top: -44%;">
                    </a>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6 nopadding">
                <a href="/web/educacao" class="a-vermelho">
                    <h1 class="texto-educacao">EDUCAÇÃO</h1>
                    <img src="resources/img/4.png" class="img-responsive" id="img-4" style="margin-left: -22%; margin-top: -22%;">
                </a>
                </div>
            </div>
            <!-- FIM HOME-PAGE PCS --> 
            
            <!--HOME-PAGE PARA MOBILE \/-->
            <div class="mobile">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="texto-constituir"><a href="sobre" class="a-verde">Constituir</a></h1>
                        <img src="resources/img/mobile1.png" class="img-fluid">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">              
                        <h1 class="texto-acao"><a href="entrar" class="a-amarelo">Ação</a></h1>
                        <img src="resources/img/mobile2.png" class="img-fluid">
                    </div>                
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <h1 class="texto-construir"><a href="cadastro" class="a-azul">Construir</a></h1>
                        <img src="resources/img/mobile3.png" class="img-fluid">
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <h1 class="texto-educacao"><a href="entrar" class="a-vermelho">Educação</a></h1>
                        <img src="resources/img/mobile4.png" class="img-fluid">
                    </div>
                </div>           
            </div>
            <!--FIM MOBILE-->

        </div>
        <!-- /.container -->
        <br>
        <!-- Footer -->
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

    </body>

</html>

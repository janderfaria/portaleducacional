<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Modal Tipos -->
<div class="modal fade" id="modalTipo" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tipos de quest�es</h4>
      </div>
      <div class="modal-body">
        <strong>TIPO DE QUEST�O</strong>
            <li><strong>Aberta </strong>= textuais, dissertativas ou para completar campos.</li>
            <li><strong>Fechada </strong>= com alternativas ou do tipo associativa.</li>
            <li><strong>Visual </strong>= associa��o de desenhos, ca�a-palavras, cruzadinhas, etc.</li>
            <li><strong>Din�mica </strong>= exerc�cios pr�ticos, brincadeiras, jogos, atividades em grupo, etc.</li>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
      </div>
    </div>

  </div>
</div>   

<!-- Modal Tipos -->
<div class="modal fade" id="modalNivel" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">N�vel de Ensino</h4>
      </div>
      <div class="modal-body">
        <strong>N�vel de Ensino</strong>
            <li><strong>Fundamental I </strong>= 1� ao 5� anos.</li>
            <li><strong>Fundamental II </strong>= 6� ao 9� anos.</li>
            <li><strong>M�dio </strong>= anos I, II e III </li>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
      </div>
    </div>

  </div>
</div>   

<!-- Modal �rea de Conhecimento -->
<div class="modal fade" id="modalDisciplina" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">�reas de Conhecimentos</h4>
      </div>
      <div class="modal-body">
        <strong>�reas de Conhecimentos</strong>
            <li><strong>Linguagens </strong>= L�ngua Portuguesa e Inglesa, artes, literatura e educa��o f�sica.</li>
            <li><strong>Matem�tica </strong>= matem�tica e racioc�nio l�gico num�rico.</li>
            <li><strong>Ci�ncias da Natureza </strong>= Qu�mica, F�sica e Biologia.</li>
            <li><strong>Ci�ncias Humanas </strong>= Geografia, Hist�ria, Sociologia e Filosofia.</li>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
      </div>
    </div>

  </div>
</div>   

<!-- Modal Questao -->
<div class="modal fade" id="modalAbrirQuestao" role="dialog">
    <div class="modal-dialog modal-lg">

      <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"></h3>
            </div>
            <div class="modal-body" style="height: 100%;overflow-y: auto;">

            </div>
            <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
            </div>
        </div>
    </div>
                    
    </div> 

<!-- Modal Excluir -->
<div class="modal fade" id="modalExcluir" role="dialog">
    <div class="modal-dialog">

      <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"><strong>Aten��o!</strong></h3>
            </div>
            <div class="modal-body">
                <h3 id="msgModal"></h3>
                <div class="modal-footer">
                    <a id="botao-excluir" class="btn btn-danger btnExcluir" href="">Sim</a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">N�o</button>
                </div>
            </div>
        </div>
                    
    </div> 
</div>

<!-- Modal Respostas -->
<div class="modal fade" id="modalResposta" role="dialog">
    <div class="modal-dialog modal-lg">

      <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title"><strong>Resposta</strong></h3>
            </div>
            <div class="modal-body">
                <h3 id="msgModalR">${questao.resposta.texto}</h3>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
                    
    </div> 
</div>
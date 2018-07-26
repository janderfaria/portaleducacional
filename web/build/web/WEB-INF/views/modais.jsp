<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- Modal Tipos -->
<div class="modal fade" id="modalTipo" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Tipos de questões</h4>
      </div>
      <div class="modal-body">
        <strong>TIPO DE QUESTÃO</strong>
            <li><strong>Aberta </strong>= textuais, dissertativas ou para completar campos.</li>
            <li><strong>Fechada </strong>= com alternativas ou do tipo associativa.</li>
            <li><strong>Visual </strong>= associação de desenhos, caça-palavras, cruzadinhas, etc.</li>
            <li><strong>Dinâmica </strong>= exercícios práticos, brincadeiras, jogos, atividades em grupo, etc.</li>
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
        <h4 class="modal-title">Nível de Ensino</h4>
      </div>
      <div class="modal-body">
        <strong>Nível de Ensino</strong>
            <li><strong>Fundamental I </strong>= 1º ao 5º anos.</li>
            <li><strong>Fundamental II </strong>= 6º ao 9º anos.</li>
            <li><strong>Médio </strong>= anos I, II e III </li>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Fechar</button>
      </div>
    </div>

  </div>
</div>   

<!-- Modal Área de Conhecimento -->
<div class="modal fade" id="modalDisciplina" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Áreas de Conhecimentos</h4>
      </div>
      <div class="modal-body">
        <strong>Áreas de Conhecimentos</strong>
            <li><strong>Linguagens </strong>= Língua Portuguesa e Inglesa, artes, literatura e educação física.</li>
            <li><strong>Matemática </strong>= matemática e raciocínio lógico numérico.</li>
            <li><strong>Ciências da Natureza </strong>= Química, Física e Biologia.</li>
            <li><strong>Ciências Humanas </strong>= Geografia, História, Sociologia e Filosofia.</li>
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
                <h3 class="modal-title"><strong>Atenção!</strong></h3>
            </div>
            <div class="modal-body">
                <h3 id="msgModal"></h3>
                <div class="modal-footer">
                    <a id="botao-excluir" class="btn btn-danger btnExcluir" href="">Sim</a>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Não</button>
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
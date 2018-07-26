function getCidades(estado){
    $.ajax({
        url : "/web/pesquisa?estado="+estado,
        type : "POST",
        success : function(data){
            $("#cidade").html(data);
        }        
    });
    if($("#estado").value != "default"){
        $("#cidade").removeAttr('disabled');
    }
}

//$(document).ready(function(){ 
//var element = $("#teste"); // global variable
//var getCanvas; // global variable
//    
//    html2canvas(element, {
//    onrendered: function (canvas) {
//            getCanvas = canvas;
//        }
//    });
//    $("#questao_download").on('click', function () {
//    var imgageData = getCanvas.toDataURL("image/png", 1.0);
//    // Now browser starts downloading it instead of just showing it
//    var newData = imgageData.replace(/^data:image\/png/, "data:application/octet-stream");
//    $("#questao_download").attr("download", "questao.png").attr("href", newData);
//    });
//});

//EFEITOS DO QUEBRA CABEÇAS
$('#img-1').mouseover(function(){   
    $('#img-1').attr('src','resources/img/1-hover.png');
});
$('#img-1').mouseout(function(){
    $('#img-1').attr('src','resources/img/1.png');
});

$('#img-2').mouseover(function(){
    $('#img-2').attr('src','resources/img/2-hover.png');
});
$('#img-2').mouseout(function(){
    $('#img-2').attr('src','resources/img/2.png');
});

$('#img-3').mouseover(function(){
    $('#img-3').attr('src','resources/img/3-hover.png');
});
$('#img-3').mouseout(function(){
    $('#img-3').attr('src','resources/img/3.png');
});

$('#img-4').mouseover(function(){
    $('#img-4').attr('src','resources/img/4-hover.png');
});
$('#img-4').mouseout(function(){
    $('#img-4').attr('src','resources/img/4.png');
});


//modal excluir
$(document).on("click",".btnModal",function(){
    var id =$(this).parent().parent().find("td:nth-child(1)").text();
    $("#msgModal").text("Essa ação é irreversível. Você tem certeza que deseja excluir a questão #"+$(this).parent().parent().find("td:nth-child(1)").text()+"?");
    $(".btnExcluir").attr("href","/web/questoes/"+id+"/excluir");
});

//modal resposta
$(document).ready(function(){ 
    $(".btnRespostas").on("click", function(){
        var id = $(this).data("id");
        $.ajax({
            url : "/web/questao/"+id+"/resposta",
            type : "GET",
            success : function(data){
                $("#msgModalR").html(data);
            }        
        });
    });
});

//$(document).ready(function(){
//    $('#tabelaColaborador').DataTable({
//        "sEmptyTable": "Nenhum registro encontrado",
//        "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
//        "sInfoEmpty": "Mostrando 0 até 0 de 0 registros",
//        "sInfoFiltered": "(Filtrados de _MAX_ registros)",
//        "sInfoPostFix": "",
//        "sInfoThousands": ".",
//        "sLengthMenu": "_MENU_ resultados por página",
//        "sLoadingRecords": "Carregando...",
//        "sProcessing": "Processando...",
//        "sZeroRecords": "Nenhum registro encontrado",
//        "sSearch": "Pesquisar",
//        "oPaginate": {
//            "sNext": "Próximo",
//            "sPrevious": "Anterior",
//            "sFirst": "Primeiro",
//            "sLast": "Último"
//        },
//        "oAria": {
//            "sSortAscending": ": Ordenar colunas de forma ascendente",
//            "sSortDescending": ": Ordenar colunas de forma descendente"
//        }
//    });
//});

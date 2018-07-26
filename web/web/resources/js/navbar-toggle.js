$(document).ready(function(){
   $("#toggle-amarelo").mouseover(function(){
      $(".dropdown-amarelo").slideDown('fast').animate({opacity:'1'},400); 
   }); 
   $(".dropdown-toggle").mouseout(function(){
      $(".dropdown-amarelo").hide(); 
   }); 
});

$(document).ready(function(){
   $("#toggle-verde").mouseover(function(){
      $(".dropdown-verde").slideDown('fast').animate({opacity:'1'},400); 
   }); 
   $(".dropdown-toggle").mouseout(function(){
      $(".dropdown-verde").hide(); 
   }); 
});

$(document).ready(function(){
   $("#toggle-vermelho").on("mouseenter",function(){ 
          $(".dropdown-vermelho").slideDown('fast').animate({opacity:'1'},400);
   }); 
   $(".dropdown-toggle").mouseout(function(){
      $(".dropdown-vermelho").hide(); 
   }); 
});

$(document).ready(function(){
   $("#toggle-azul").mouseover(function(){
      $(".dropdown-azul").slideDown('fast').animate({opacity:'1'},400); 
   }); 
   $(".dropdown-toggle").mouseout(function(){
      $(".dropdown-azul").hide(); 
   }); 
});


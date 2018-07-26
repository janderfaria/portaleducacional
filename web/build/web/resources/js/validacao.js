$(document).ready(function () {
    $('#formCadastro').validate({
        rules: {
            nome: {
                required: true,
                minlength: 3
            },
            estado: {
                required: true,
                selectcheck: true
            },
            cidade: {
                required: true,
                selectcheck: true
            },
            profissao: {
                required: true,
            },
            escola: {
                required: true,
            },
            email: {
                required: true,
                email:true
            },
            senha: {
                required: true,
                minlength: 4,
                maxlength: 15
            }
        },
        messages: {
            nome: {
                required: "Por favor, insira seu nome.",
                minlength: "O nome deve ter no mínimo 3 caracteres."
            },
            estado: {
                required: "Por favor, selecione seu estado.",
                selectcheck: "Por favor, selecione seu estado."
            },
            cidade: {
                required: "Por favor, selecione sua cidade.",
                selectcheck: "Por favor, selecione sua cidade."
            },
            profissao: {
                required: "Por favor, insira sua profissão.",
            },
            escola: {
                required: "Por favor, insira sua escola.",
            },
            email: {
                required: "Por favor, insira seu email.",
                email:"Você deve inserir um email válido!"
            },
            senha: {
                required: "Por favor, insira sua senha.",
                minlength: "A senha deve ter no mínimo 4 caracteres.",
                maxlength: "A senha deve ter no máximo 15 caracteres."
            }
        },
        submitHandler: function(event, validator) {
          // 'this' refers to the form
          var errors = validator.numberOfInvalids();
            var message = errors == 1
              ? 'Existe 1 campo inválido. Corrija e tente novamente.'
              : 'Existem ' + errors + ' campos inválidos. Corrija-os e tente novamente.';
            $("#erro").html("<strong>"+message+"<strong>");
            $("#erro").show();
        }
    });
});



package projetoescola.model.entity;

import java.security.MessageDigest;
import projetoescola.model.base.BaseEntity;

public class Usuario extends BaseEntity {

    private static String SALT_SENHA = "FAI";

    public static String getSALT_SENHA() {
        return SALT_SENHA;
    }

    public static void setSALT_SENHA(String aSALT_SENHA) {
        SALT_SENHA = aSALT_SENHA;
    }

    private String nome;
    private Integer tipo;
    private Estado estado;
    private Cidade cidade;
    private String profissao;
    private String escola;
    private String email;
    private String senha;
    

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public void setSenhaAsPlanText(String senhaAsPlainText) throws Exception {

        this.senha = encodeSenha(senhaAsPlainText);
    }

    public static String encodeSenha(String senhaAsPlainText) throws Exception {
        MessageDigest algorithm = MessageDigest.getInstance("SHA-256");
        byte messageDigest[] = algorithm.digest((SALT_SENHA + senhaAsPlainText).getBytes("UTF-8"));
        StringBuilder hexString = new StringBuilder();
        for (byte b : messageDigest) {
            hexString.append(String.format("%02X", 0xFF & b));
        }

        return hexString.toString();
    }

    public Integer getTipo() {
        return tipo;
    }

    public void setTipo(Integer tipo) {
        this.tipo = tipo;
    }

    public String getProfissao() {
        return profissao;
    }

    public void setProfissao(String profissao) {
        this.profissao = profissao;
    }

    public String getEscola() {
        return escola;
    }

    public void setEscola(String escola) {
        this.escola = escola;
    }

    public Cidade getCidade() {
        return cidade;
    }

    public void setCidade(Cidade cidade) {
        this.cidade = cidade;
    }

    public Estado getEstado() {
        return estado;
    }

    public void setEstado(Estado estado) {
        this.estado = estado;
    }

}

package projetoescola.model.entity;

import projetoescola.model.base.BaseEntity;

public class Questao extends BaseEntity{
    
    private Usuario usuario;
    private String titulo;
    private String texto;
    private Long tipo; //0-abertas, 1- fechadas, 2-dinâmicas, 3-visual
    private Nivel nivel;
    private Disciplina disciplina;
    private Resposta resposta;
    private Imagem imagem;
    private Integer status;
    private Integer nota;
    private Integer qtdeAvaliacoes;

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public Resposta getResposta() {
        return resposta;
    }

    public void setResposta(Resposta resposta) {
        this.resposta = resposta;
    }

    public Imagem getImagem() {
        return imagem;
    }

    public void setImagem(Imagem imagem) {
        this.imagem = imagem;
    }

    public Long getTipo() {
        return tipo;
    }

    public void setTipo(Long tipo) {
        this.tipo = tipo;
    }

    public Nivel getNivel() {
        return nivel;
    }

    public void setNivel(Nivel nivel) {
        this.nivel = nivel;
    }

    public Disciplina getDisciplina() {
        return disciplina;
    }

    public void setDisciplina(Disciplina disciplina) {
        this.disciplina = disciplina;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Integer getNota() {
        return nota;
    }

    public void setNota(Integer nota) {
        this.nota = nota;
    }

    public Integer getQtdeAvaliacoes() {
        return qtdeAvaliacoes;
    }

    public void setQtdeAvaliacoes(Integer qtdeAvaliacoes) {
        this.qtdeAvaliacoes = qtdeAvaliacoes;
    }
    
}

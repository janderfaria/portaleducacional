package projetoescola.model.entity;

import projetoescola.model.base.BaseEntity;

public class Resposta extends BaseEntity{
    private String texto;
    private Imagem imagem;

    public String getTexto() {
        return texto;
    }

    public void setTexto(String texto) {
        this.texto = texto;
    }

    public Imagem getImagem() {
        return imagem;
    }

    public void setImagem(Imagem imagem) {
        this.imagem = imagem;
    }
}

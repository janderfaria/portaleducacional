package projetoescola.model.entity;

import projetoescola.model.base.BaseEntity;

public class Imagem extends BaseEntity{
    private String caminho;

    private byte[] img;

    public String getCaminho() {
        return caminho;
    }

    public void setCaminho(String caminho) {
        this.caminho = caminho;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }
}

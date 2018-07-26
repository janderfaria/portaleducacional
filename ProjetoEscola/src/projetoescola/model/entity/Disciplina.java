/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetoescola.model.entity;

import projetoescola.model.base.BaseEntity;

/**
 *
 * @author Jander Faria
 */
public class Disciplina extends BaseEntity{
    private String nome;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
}

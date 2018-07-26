package projetoescola.model.entity;

import java.util.ArrayList;
import java.util.List;
import projetoescola.model.base.BaseEntity;

public class Nivel extends BaseEntity{
    private String nome;
    private List<Disciplina> disciplinaList;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }
    
    public Nivel() {
        disciplinaList = new ArrayList<>();
    }
    
    public List<Disciplina> getDisciplinaList() {
        return disciplinaList;
    }

    public void setDisciplinaList(List<Disciplina> disciplinaList) {
        this.disciplinaList = disciplinaList;
    }

}

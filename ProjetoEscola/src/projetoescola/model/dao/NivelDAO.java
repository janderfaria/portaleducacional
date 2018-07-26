/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.criteria.NivelCriteria;
import projetoescola.model.entity.Disciplina;
import projetoescola.model.entity.Nivel;

/**
 *
 * @author Jander Faria
 */
public class NivelDAO implements BaseDAO<Nivel>{

    @Override //testado - ok
    public void create(Connection conn, Nivel entity) throws Exception {
        String sql = "INSERT INTO nivel(nome) VALUES (?) RETURNING id;";

        PreparedStatement ps = conn.prepareStatement(sql);

        int i = 0;
        ps.setString(++i, entity.getNome());
        ResultSet rs = ps.executeQuery(); 
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
        
        this.disciplinaList(conn, entity);
    }
    
    public void disciplinaList(Connection conn, Nivel entity) throws Exception {
        String sql="INSERT INTO nivel_disciplina(nivel_fk, disciplina_fk) VALUES (?, ?);";
        PreparedStatement ps = conn.prepareStatement(sql);
        for(int i =0 ;i< entity.getDisciplinaList().size();i++){
            ps.setLong(1, entity.getId());
            ps.setLong(2, entity.getDisciplinaList().get(i).getId());
            ps.execute();
        }
        ps.close();
    }
    

    @Override //testado - ok
    public Nivel readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, disciplina.nome nome_disciplina from nivel left join nivel_disciplina on nivel.id = nivel_disciplina.nivel_fk left join disciplina on disciplina.id = nivel_disciplina.disciplina_fk where nivel.id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        Nivel nivel = null;
        while(rs.next()){
            nivel = new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            
            if (rs.getLong("id_disciplina") > 0) {
                Disciplina disciplina = new Disciplina();
                disciplina.setId(rs.getLong("id_disciplina"));
                disciplina.setNome(rs.getString("nome_disciplina"));
                nivel.getDisciplinaList().add(disciplina);
            }
        }
        return nivel;
    }

    @Override
    public List<Nivel> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        List<Nivel> nivelList = new ArrayList<>();
        String sql = "SELECT nivel.* FROM nivel WHERE 1=1;";
        sql += applyCriteria(criteria);
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Nivel nivel = null;
        while (rs.next()) {
            nivel = new Nivel();
            nivel.setId(rs.getLong("id"));
            nivel.setNome(rs.getString("nome"));            
            nivelList.add(nivel);

        }
        rs.close();
        ps.close();
        return nivelList;
    }

    @Override //testado - ok
    public void update(Connection conn, Nivel entity) throws Exception {
        String sql = "UPDATE nivel SET nome=? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        
        ps.setString(++i, entity.getNome());
        ps.setLong(++i, entity.getId());

        ps.execute();
        ps.close();
        
    }

    @Override //testado - ok
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM nivel WHERE id = ?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();
    }

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        String sql = "";
        
        String nomeILike = (String) criteria.get(NivelCriteria.NOME_ILIKE);
        if (nomeILike != null && !nomeILike.isEmpty()) {
            sql += " AND nome ILIKE '%" + nomeILike + "%'";
        }
        
        return sql;
    }

}

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
import projetoescola.model.criteria.DisciplinaCriteria;
import projetoescola.model.entity.Disciplina;

/**
 *
 * @author Jander Faria
 */
public class DisciplinaDAO implements BaseDAO<Disciplina>{

    @Override //Testado OK
    public void create(Connection conn, Disciplina entity) throws Exception {
        String sql = "INSERT INTO disciplina(nome) VALUES (?) RETURNING id;";

        PreparedStatement ps = conn.prepareStatement(sql);

        int i = 0;
        ps.setString(++i, entity.getNome());        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
    }

    @Override //Testado - ok
    public Disciplina readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT * FROM disciplina WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        Disciplina disciplina = null;
        if(rs.next()){
            disciplina = new Disciplina();
            disciplina.setId(id);
            disciplina.setNome(rs.getString("nome"));
        }
        return disciplina;
    }

    @Override
    public List<Disciplina> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        List<Disciplina> disciplinaList = new ArrayList<>();
        String sql = "SELECT * FROM disciplina WHERE 1=1;";
        sql += applyCriteria(criteria);
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Disciplina disciplina = null;
        while (rs.next()) {
            disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id"));
            disciplina.setNome(rs.getString("nome"));            
            disciplinaList.add(disciplina);
        }
        
        rs.close();
        ps.close();
        
        return disciplinaList;
    }

    @Override //Testado - ok
    public void update(Connection conn, Disciplina entity) throws Exception {
        
        String sql = "UPDATE disciplina SET nome=? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        
        ps.setString(++i, entity.getNome());
        ps.setLong(++i, entity.getId());

        ps.execute();
        ps.close();
    }

    @Override //Testado - ok
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM disciplina WHERE id = ?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();
    }
    
    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        
        String sql = "";
        
        String nomeILike = (String) criteria.get(DisciplinaCriteria.NOME_ILIKE);
        if (nomeILike != null && !nomeILike.isEmpty()) {
            sql += " AND nome ILIKE '%" + nomeILike + "%'";
        }                        
        return sql;
    }   
}

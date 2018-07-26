/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.entity.Imagem;

/**
 *
 * @author Jander Faria
 */
public class ImagemDAO implements BaseDAO<Imagem>{

    @Override //testado - ok
    public void create(Connection conn, Imagem entity) throws Exception {
        String sql = "INSERT INTO imagem(caminho) VALUES (?) RETURNING id;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        
        ps.setString(++i, entity.getCaminho());

        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
    }

    @Override
    public Imagem readById(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Imagem> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override //testado -ok
    public void update(Connection conn, Imagem entity) throws Exception {
        String sql = "UPDATE imagem SET  caminho=? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setString(++i, entity.getCaminho());
        ps.setLong(++i, entity.getId());
        ps.execute();
        ps.close();
    }

    @Override //testado - ok
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM imagem WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();
    }

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

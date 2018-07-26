package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.criteria.EstadoCriteria;
import projetoescola.model.entity.Estado;

public class EstadoDAO implements BaseDAO<Estado> {
    
    @Override
    public void create(Connection conn, Estado entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    @Override //testado - ok
    public Estado readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado FROM estados WHERE estados.id=?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();

        Estado estado = new Estado();
        if(rs.next()){
        estado.setId(rs.getLong("id_estado"));
        estado.setNome(rs.getString("nome_estado"));
        estado.setSigla(rs.getString("sigla_estado"));
        }
        rs.close();
        ps.close();
        
        return estado;
    }

    @Override //testado - ok
    public List<Estado> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        String sql = "select * from  estados  where 1=1";
        sql+=applyCriteria(criteria);
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Estado estado;
        List<Estado> estadoList = new ArrayList<>();
        while (rs.next()) {
            estado = new Estado();
            estado.setNome(rs.getString("nome"));
            estado.setSigla(rs.getString("sigla"));
            estado.setId(rs.getLong("id"));
            estadoList.add(estado);
        }
        rs.close();
        ps.close();
        return estadoList;
    }

    @Override
    public void update(Connection conn, Estado entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public String applyCriteria(Map<Long, Object> criteria){
        String sql="";
        String nomeIlike= (String) criteria.get(EstadoCriteria.NOME_ILIKE);
        if(!nomeIlike.isEmpty() && nomeIlike!= null){
            sql+=" AND nome ilike '%"+ nomeIlike + "%'";
        }

        return sql;
    }
    
}

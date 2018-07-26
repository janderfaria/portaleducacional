package projetoescola.model.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseEstadoService;
import projetoescola.model.dao.EstadoDAO;
import projetoescola.model.entity.Estado;

public class EstadoService implements BaseEstadoService{

    @Override
    public void create(Estado entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Estado readById(Long id) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        EstadoDAO dao = new EstadoDAO();
        Estado estado = new Estado();
        try{
            estado = dao.readById(conn, id);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return estado;
    }

    @Override
    public List<Estado> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        EstadoDAO dao = new EstadoDAO();
        List<Estado> estadoList = new ArrayList<>();
        try{
            estadoList = dao.readByCriteria(conn, criteria, limit, offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return estadoList;
    }

    @Override
    public void update(Estado entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

package projetoescola.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseCidadeService;
import projetoescola.model.dao.CidadeDAO;
import projetoescola.model.entity.Cidade;

public class CidadeService implements BaseCidadeService{
    
    @Override
    public void create(Cidade entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        CidadeDAO dao= new CidadeDAO();
        try{
            dao.create(conn, entity);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
    }

    @Override
    public Cidade readById(Long id) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        Cidade cidade = null;
        try {
            CidadeDAO dao = new CidadeDAO();
            cidade = (Cidade) dao.readById(conn, id);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
        return cidade;
    }

    @Override
    public List<Cidade> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        CidadeDAO dao = new CidadeDAO();
        List<Cidade> cidadeList = new ArrayList<>();
        try{
            cidadeList = dao.readByCriteria(conn, criteria, limit, offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return cidadeList;
    }

    @Override
    public void update(Cidade entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public List<Cidade> getCidadeList() throws Exception{
        Connection conn = ConnectionManager.getInstance().getConnection();
        List<Cidade> cidadeSet = new ArrayList<>();;
        try {
            CidadeDAO dao = new CidadeDAO();
            cidadeSet = dao.getCidadeList(conn);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
        return cidadeSet;
    }

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

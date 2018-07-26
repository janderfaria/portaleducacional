package projetoescola.model.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseQuestaoService;
import projetoescola.model.dao.QuestaoDAO;
import projetoescola.model.entity.Questao;

public class QuestaoService implements BaseQuestaoService{

    @Override
    public void create(Questao entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        QuestaoDAO dao= new QuestaoDAO();
        try{
            dao.create(conn, entity);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
        }
    }

    @Override
    public Questao readById(Long id) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        Questao questao = null;
        try {
            QuestaoDAO dao = new QuestaoDAO();
            questao = dao.readById(conn, id);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
        return questao;
    }

    @Override
    public List<Questao> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Questao> questaoList= null;
        QuestaoDAO dao= new QuestaoDAO();
        try{
            questaoList = dao.readByCriteria(conn, criteria, limit, offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return questaoList;
    }

    public Long countByCriteria(Map<Long, Object> criteria) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        Long count=null;
        QuestaoDAO dao = new QuestaoDAO();
        try{
            count = dao.countByCriteria(conn, criteria);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
        }
        return count;
    }    
    
    @Override
    public void update(Questao entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        try {
            QuestaoDAO dao = new QuestaoDAO();
            dao.update(conn, entity);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
    }

    @Override
    public void delete(Long id) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        try {
            QuestaoDAO dao = new QuestaoDAO();
            dao.delete(conn, id);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
    }   

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
    public List<Questao> getByStatus(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Questao> questaoList= null;
        QuestaoDAO dao= new QuestaoDAO();
        try{
            questaoList = dao.getByStatus(conn, criteria, limit, offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return questaoList;
    }
    
    public List<Questao> readByTipo(Long tipo) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Questao> questaoList= null;
        QuestaoDAO dao= new QuestaoDAO();
        try{
            questaoList = dao.readByTipo(conn, tipo);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return questaoList;
    }
    
    public List<Questao> readByEstado(String estado) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Questao> questaoList= null;
        QuestaoDAO dao= new QuestaoDAO();
        try{
            questaoList = dao.readByEstado(conn, estado);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return questaoList;
    }    
    
    public List<Questao> readByUsuario(String usuario) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Questao> questaoList= null;
        QuestaoDAO dao= new QuestaoDAO();
        try{
            questaoList = dao.readByUsuario(conn, usuario);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return questaoList;
    }    
}

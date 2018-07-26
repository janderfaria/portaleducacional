/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetoescola.model.service;

import java.sql.Connection;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseRespostaService;
import projetoescola.model.dao.RespostaDAO;
import projetoescola.model.entity.Resposta;

/**
 *
 * @author Jander Faria
 */
public class RespostaService implements BaseRespostaService{

    @Override
    public void create(Resposta entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        RespostaDAO dao= new RespostaDAO();
        try{
            dao.create(conn, entity);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
        }
    }

    @Override
    public Resposta readById(Long id) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        Resposta resposta = null;
        try {
            RespostaDAO dao = new RespostaDAO();
            resposta = dao.readById(conn, id);
            conn.commit();
        } catch (Exception e) {
            conn.rollback();
        } finally {
            conn.close();
        }
        return resposta;
    }

    @Override
    public List<Resposta> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Resposta entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        try {
            RespostaDAO dao = new RespostaDAO();
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
            RespostaDAO dao = new RespostaDAO();
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
    
}

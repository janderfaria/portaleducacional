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
import projetoescola.model.base.service.BaseImagemService;
import projetoescola.model.dao.ImagemDAO;
import projetoescola.model.entity.Imagem;

/**
 *
 * @author Jander Faria
 */
public class ImagemService implements BaseImagemService{

    @Override
    public void create(Imagem entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        ImagemDAO dao= new ImagemDAO();
        try{
            dao.create(conn, entity);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
        }
    }

    @Override
    public Imagem readById(Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Imagem> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void update(Imagem entity) throws Exception {
        Connection conn = ConnectionManager.getInstance().getConnection();
        try {
            ImagemDAO dao = new ImagemDAO();
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
            ImagemDAO dao = new ImagemDAO();
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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projetoescola.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseNivelService;
import projetoescola.model.dao.NivelDAO;
import projetoescola.model.entity.Nivel;

/**
 *
 * @author Jander Faria
 */
public class NivelService implements BaseNivelService{

    @Override
    public void create(Nivel entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        NivelDAO dao= new NivelDAO();
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
    public Nivel readById(Long id) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        NivelDAO dao = new NivelDAO();
        Nivel nivel = new Nivel();
        try{
            nivel = dao.readById(conn, id);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return nivel;
    }

    @Override
    public List<Nivel> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Nivel> nivelList= new ArrayList<>();
        NivelDAO dao = new NivelDAO();                
        try{
            nivelList=dao.readByCriteria(conn,criteria,limit,offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return nivelList;
    }

    @Override
    public void update(Nivel entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        NivelDAO dao = new NivelDAO();
        try{
            dao.update(conn, entity);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();          
        }
    }

    @Override
    public void delete(Long id) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        NivelDAO dao = new NivelDAO();
        try{
            dao.delete(conn, id);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();    
        }
    }   

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}

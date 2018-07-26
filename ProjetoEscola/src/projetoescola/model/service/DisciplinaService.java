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
import projetoescola.model.base.service.BaseDisciplinaService;
import projetoescola.model.dao.DisciplinaDAO;
import projetoescola.model.entity.Disciplina;

/**
 *
 * @author Jander Faria
 */
public class DisciplinaService implements BaseDisciplinaService{

    @Override
    public void create(Disciplina entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        DisciplinaDAO dao= new DisciplinaDAO();
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
    public Disciplina readById(Long id) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        DisciplinaDAO dao = new DisciplinaDAO();
        Disciplina disciplina = new Disciplina();
        try{
            disciplina =dao.readById(conn, id);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return disciplina;
    }

    @Override
    public List<Disciplina> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Disciplina> disciplinaList= new ArrayList<>();
        DisciplinaDAO dao = new DisciplinaDAO();                
        try{
            disciplinaList=dao.readByCriteria(conn,criteria,limit,offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return disciplinaList;
    }

    @Override
    public void update(Disciplina entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        DisciplinaDAO dao = new DisciplinaDAO();
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
        DisciplinaDAO dao = new DisciplinaDAO();
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

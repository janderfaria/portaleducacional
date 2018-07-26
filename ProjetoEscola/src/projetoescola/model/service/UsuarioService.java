package projetoescola.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import projetoescola.model.ConnectionManager;
import projetoescola.model.base.service.BaseUsuarioService;
import projetoescola.model.criteria.UsuarioCriteria;
import projetoescola.model.dao.UsuarioDAO;
import projetoescola.model.entity.Usuario;

public class UsuarioService implements BaseUsuarioService {

    @Override
    public Usuario login(String email, String senha) throws Exception {
        
        senha = Usuario.encodeSenha(senha);

        Connection conn = ConnectionManager.getInstance().getConnection();
        Usuario usuario = null;

        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(UsuarioCriteria.EMAIL_EQ, email);
        criteria.put(UsuarioCriteria.SENHA_EQ, senha);
        UsuarioDAO dao = new UsuarioDAO();
        List<Usuario> usuarioList = dao.readByCriteria(conn, criteria, 0L, 0L);

        if (usuarioList.size() == 1) {
            Usuario aux = usuarioList.get(0);
            if (aux.getEmail().equals(email) && aux.getSenha().equals(senha)) {
                usuario = aux;
            }
        }
        conn.close();
        return usuario;
    }

    @Override
    public void create(Usuario entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        UsuarioDAO dao= new UsuarioDAO();
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
    public Usuario readById(Long id) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        UsuarioDAO dao = new UsuarioDAO();
        Usuario usuario = null;
        try{
            usuario =dao.readById(conn, id);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return usuario;
    }

    @Override
    public List<Usuario> readByCriteria(Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        List<Usuario> usuarioList= new ArrayList<>();
        UsuarioDAO dao = new UsuarioDAO();                
        try{
            usuarioList=dao.readByCriteria(conn,criteria,limit,offset);
            conn.commit();
            conn.close();
        }catch(Exception e){
            conn.rollback();
            conn.close();
            
        }
        return usuarioList;
    }

    @Override
    public void update(Usuario entity) throws Exception {
        Connection conn= ConnectionManager.getInstance().getConnection();
        UsuarioDAO dao = new UsuarioDAO();
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
        UsuarioDAO dao = new UsuarioDAO();
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

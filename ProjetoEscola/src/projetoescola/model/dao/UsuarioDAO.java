package projetoescola.model.dao;

import projetoescola.model.base.BaseDAO;
import projetoescola.model.entity.Usuario;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.criteria.UsuarioCriteria;
import projetoescola.model.entity.Cidade;
import projetoescola.model.entity.Estado;

public class UsuarioDAO implements BaseDAO<Usuario> {

    @Override //testado - ok
    public void create(Connection conn, Usuario entity) throws Exception {
        String sql = "INSERT INTO usuario(tipo, nome, estado_fk, cidade_fk, profissao, escola, email, senha) VALUES (?, ?, ?, ?, ?, ?, ?, ?) RETURNING id;";

        PreparedStatement ps = conn.prepareStatement(sql);

        int i = 0;
        ps.setLong(++i, entity.getTipo());
        ps.setString(++i, entity.getNome());
        if(entity.getEstado() != null){
            ps.setLong(++i, entity.getEstado().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }
        if(entity.getCidade() != null){
            ps.setLong(++i, entity.getCidade().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }
        if(entity.getProfissao() != null){
            ps.setString(++i, entity.getProfissao());
        }else{
            ps.setNull(++i, Types.VARCHAR);
        }
        if(entity.getEscola() != null){
            ps.setString(++i, entity.getEscola());
        }else{
            ps.setNull(++i, Types.VARCHAR);
        }
        ps.setString(++i, entity.getEmail());
        ps.setString(++i, entity.getSenha());
        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
    }

    @Override //testado - ok
    public Usuario readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT usuario.id, usuario.tipo, usuario.nome, usuario.cidade_fk, cidades.nome nome_cidade, estados.id id_estado,estados.nome nome_estado, estados.sigla sigla_estado, usuario.escola, usuario.email, usuario.senha from usuario left join cidades on cidades.id = usuario.cidade_fk left join  estados on cidades.estados_fk = estados.id where usuario.id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        Usuario usuario = null;
        if(rs.next()){
            usuario = new Usuario();
            usuario.setId(id);
            usuario.setTipo(rs.getInt("tipo"));
            usuario.setNome(rs.getString("nome"));
            if(rs.getLong("cidade_fk") > 0){
                Cidade cidade = new Cidade();
                cidade.setId(rs.getLong("cidade_fk"));
                cidade.setNome(rs.getString("nome_cidade"));
                Estado estado = new Estado();
                estado.setId(rs.getLong("id_estado"));
                estado.setNome(rs.getString("nome_estado"));
                estado.setSigla(rs.getString("sigla_estado"));
                cidade.setEstado(estado);
                usuario.setCidade(cidade);
            }
            usuario.setEscola(rs.getString("escola"));
            usuario.setEmail(rs.getString("email"));
        }
        return usuario;
    }

    @Override //TESTADO - OK
    public List<Usuario> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        List<Usuario> usuarioList = new ArrayList<>();
        String sql = "SELECT usuario.* FROM usuario WHERE 1=1";
        sql += applyCriteria(criteria);
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Usuario usuario = null;
        while (rs.next()) {
            usuario = new Usuario();
            usuario.setId(rs.getLong("id"));
            usuario.setTipo(rs.getInt("tipo"));
            usuario.setNome(rs.getString("nome"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("estado_fk"));
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("cidade_fk"));
            usuario.setEmail(rs.getString("email"));
            usuario.setSenha(rs.getString("senha"));
            usuarioList.add(usuario);
        }
        rs.close();
        ps.close();
        return usuarioList;
    }

    @Override //testado - ok
    public void update(Connection conn, Usuario entity) throws Exception {
        
        String sql = "UPDATE usuario SET tipo=?, nome=?, estado_fk=?, cidade_fk=?, profissao=?, escola=?, email=?, senha=? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        
        ps.setLong(++i, entity.getTipo());
        ps.setString(++i, entity.getNome());
        if(entity.getEstado() != null){
            ps.setLong(++i, entity.getEstado().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }
        if(entity.getCidade() != null){
            ps.setLong(++i, entity.getCidade().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }
        if(entity.getProfissao() != null){
            ps.setString(++i, entity.getProfissao());
        }else{
            ps.setNull(++i, Types.VARCHAR);
        }
        if(entity.getEscola() != null){
            ps.setString(++i, entity.getEscola());
        }else{
            ps.setNull(++i, Types.VARCHAR);
        }
        ps.setString(++i, entity.getEmail());
        ps.setString(++i, entity.getSenha());
        ps.setLong(++i, entity.getId());

        ps.execute();
        ps.close();
    }    
        
    @Override //testado - ok
    public void delete(Connection conn, Long id) throws Exception {

        String sql = "DELETE FROM usuario WHERE id = ?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();

    }
    
    @Override //TESTAD0 - OK
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        
        String sql = "";
        
        String emailEQ = (String) criteria.get(UsuarioCriteria.EMAIL_EQ);
        if (emailEQ != null) {
            sql += " AND usuario.email='" + emailEQ + "'";
        }

        String senhaEQ = (String) criteria.get(UsuarioCriteria.SENHA_EQ);    
        if (senhaEQ != null) {
            Usuario.encodeSenha(senhaEQ);
            sql += " AND usuario.senha='" + senhaEQ + "'";
        }

        return sql;
    }
}

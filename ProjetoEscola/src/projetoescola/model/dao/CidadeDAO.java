package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.criteria.CidadeCriteria;
import projetoescola.model.entity.Cidade;
import projetoescola.model.entity.Estado;

public class CidadeDAO implements BaseDAO<Cidade> {

    @Override
    public void create(Connection conn, Cidade entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override //TESTADO - OK
    public Cidade readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT cidades.id id_cidade, cidades.nome nome_cidade, estados.id id_estado, estados.nome nome_estado FROM cidades LEFT JOIN estados ON cidades.estado_fk = estados.id WHERE cidades.id = ?;";

        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        
        Cidade cidade = new Cidade();
        Estado estado = new Estado();
        if(rs.next()){
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            cidade.setEstado(estado);
        }
        rs.close();
        ps.close();
        
        return cidade;
    }

    @Override //testado - ok
    public List<Cidade> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        String sql = "SELECT cidades.id id_cidade, cidades.nome cidade_nome, estados.id estado_id, estados.nome estado_nome FROM cidades LEFT JOIN estados ON cidades.estado_fk = estados.id WHERE 1=1 ";
        sql += applyCriteria(criteria);
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Cidade cidade;
        Estado estado;
        List<Cidade> cidadeList = new ArrayList<>();
        while (rs.next()) {
            cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("cidade_nome"));
            estado = new Estado();
            estado.setId(rs.getLong("estado_id"));
            estado.setNome(rs.getString("estado_nome"));
            cidade.setEstado(estado);

            cidadeList.add(cidade);
        }
        rs.close();
        ps.close();
        return cidadeList;
    }

    @Override
    public void update(Connection conn, Cidade entity) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(Connection conn, Long id) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String applyCriteria(Map<Long, Object> criteria) {
        String sql = "";
        Long estadoEQ = (Long) criteria.get(CidadeCriteria.ESTADO_EQ);
        if (estadoEQ != null) {
            sql += " AND estados.id ='" + estadoEQ + "' OR estados.sigla = '"+estadoEQ+"'";
        }

        return sql;
    }
    
    public List<Cidade> getCidadeList(Connection conn) throws Exception{
        String sql = "SELECT cidades.nome nome_cidade, estados.nome nome_estado FROM cidades LEFT JOIN estados ON cidades.estados_fk = estados.id ORDER BY nome_cidade ASC;";
    
        PreparedStatement ps = conn.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        List<Cidade> cidadeList = new ArrayList<>();
        Cidade cidade;
        Estado estado;
        while(rs.next()){
            cidade = new Cidade();
            cidade.setNome(rs.getString("nome_cidade"));
            estado = new Estado();
            estado.setNome(rs.getString("nome_estado"));
            cidade.setEstado(estado);
            cidadeList.add(cidade);
        }
        rs.close();
        ps.close();
        return cidadeList;
    }
}

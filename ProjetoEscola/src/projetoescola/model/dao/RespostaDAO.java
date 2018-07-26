package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Types;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.entity.Imagem;
import projetoescola.model.entity.Resposta;

public class RespostaDAO implements BaseDAO<Resposta>{

    @Override //testado - ok
    public void create(Connection conn, Resposta entity) throws Exception {
        String sql = "INSERT INTO resposta(texto, imagem_fk) VALUES (?, ?) RETURNING id;";

        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        
        ps.setString(++i, entity.getTexto());
        
        if(entity.getImagem() != null){
            ps.setLong(++i, entity.getImagem().getId());
        }else {
            ps.setNull(++i, Types.BIGINT);
        }        
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
    }

    @Override
    public Resposta readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT resposta.id id_resposta, resposta.texto texto_resposta, resposta.imagem_fk imagem_fk, imagem.caminho imagem_caminho FROM resposta LEFT JOIN imagem ON resposta.imagem_fk = imagem.id WHERE resposta.id =?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ResultSet rs = ps.executeQuery();
        
        Resposta resposta = null;
        
        while(rs.next()){
            resposta = new Resposta();
            resposta.setId(rs.getLong("id_questao"));
            resposta.setTexto(rs.getString("questao_texto"));
            Imagem imagem;
            if(rs.getLong("imagem_fk") > 0){
                imagem = new Imagem();
                imagem.setId(rs.getLong("imagem_fk"));
                imagem.setCaminho("imagem_caminho");
                resposta.setImagem(imagem);
            } 
        }
        return resposta;
    }

    @Override
    public List<Resposta> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override //testado - ok
    public void update(Connection conn, Resposta entity) throws Exception {
        String sql = "UPDATE resposta SET  texto=? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setString(++i, entity.getTexto());
        ps.setLong(++i, entity.getId());
        ps.execute();
        ps.close();
    }

    @Override //testado - ok
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM resposta WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();
    }

    @Override
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}

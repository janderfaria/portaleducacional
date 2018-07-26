package projetoescola.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import projetoescola.model.base.BaseDAO;
import projetoescola.model.criteria.QuestaoCriteria;
import projetoescola.model.entity.Cidade;
import projetoescola.model.entity.Disciplina;
import projetoescola.model.entity.Estado;
import projetoescola.model.entity.Nivel;
import projetoescola.model.entity.Questao;
import projetoescola.model.entity.Resposta;
import projetoescola.model.entity.Usuario;
import projetoescola.model.service.RespostaService;

public class QuestaoDAO implements BaseDAO<Questao>{

    @Override //testado - ok
    public void create(Connection conn, Questao entity) throws Exception {
        String sql = "INSERT INTO questao(usuario_fk, titulo, texto, resposta_fk, tipo, disciplina_fk, nivel_fk, status, nota, qtde_avaliacoes) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) RETURNING id;";
        String text;
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        if(entity.getUsuario()!= null){
            ps.setLong(++i, entity.getUsuario().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }      
        ps.setString(++i, entity.getTitulo());
        
        if(entity.getTexto()!= null){
            if(entity.getTexto().contains("<script>")){
            text = entity.getTexto();
            String startTag = "<script>";
            String endTag = "</script>";

            //removing the text between script
            String textToRemove = text.substring(text.indexOf(startTag) + startTag.length(), text.indexOf(endTag));
            text = text.replace(textToRemove, "");
            text = text.replace("<script>", "").replace("</script>", "");                
            ps.setString(++i, text);
            }else{
                ps.setString(++i, entity.getTexto());
            }            
        }else{
            ps.setNull(++i, Types.VARCHAR);
        }
        
        if(entity.getResposta()!= null){
            ps.setLong(++i, entity.getResposta().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }
        
        ps.setLong(++i, entity.getTipo());
        
        if(entity.getDisciplina()!= null){
            ps.setLong(++i, entity.getDisciplina().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }    
        if(entity.getNivel()!= null){
            ps.setLong(++i, entity.getNivel().getId());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }        
        if(entity.getStatus()!= null){
            ps.setLong(++i, entity.getStatus());
        }else{
            ps.setNull(++i, Types.BIGINT);
        }            
        ps.setInt(++i, 0);
        ps.setInt(++i, 0);   
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            entity.setId(rs.getLong("id"));
        }
        rs.close();
        ps.close();
    }

    @Override //TESTADO - OK
    public Questao readById(Connection conn, Long id) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo questao_tipo, questao.titulo questao_titulo, questao.texto questao_texto, resposta.id id_resposta, resposta.texto resposta_texto, questao.usuario_fk id_usuario, usuario.nome nome_usuario, disciplina.id id_disciplina, disciplina.nome nome_disciplina, nivel.id id_nivel, nivel.nome nome_nivel FROM questao LEFT JOIN resposta ON resposta.id = questao.resposta_fk LEFT JOIN imagem ON imagem.id = questao.imagem_fk LEFT JOIN usuario ON questao.usuario_fk = usuario.id LEFT JOIN disciplina ON disciplina.id = questao.disciplina_fk LEFT JOIN nivel ON nivel.id = questao.nivel_fk WHERE questao.id =?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        
        ResultSet rs = ps.executeQuery();
        
        Questao questao = null;
        Usuario usuario;
        Resposta resposta;
        Nivel nivel;
        Disciplina disciplina;
        
        if(rs.next()){
            questao = new Questao();
            questao.setId(rs.getLong("id_questao"));
            questao.setTipo(rs.getLong("questao_tipo"));
            questao.setTitulo(rs.getString("questao_titulo"));
            questao.setTexto(rs.getString("questao_texto"));

            if(rs.getLong("id_usuario") > 0){
                usuario = new Usuario();
                usuario.setNome(rs.getString("nome_usuario"));
                questao.setUsuario(usuario);
            }
            if(rs.getLong("id_resposta") > 0){
                resposta = new Resposta();
                resposta.setId(rs.getLong("id_resposta"));
                resposta.setTexto(rs.getString("resposta_texto"));
                questao.setResposta(resposta);
            }
            if(rs.getLong("id_nivel") > 0){
                nivel=new Nivel();
                nivel.setId(rs.getLong("id_nivel"));
                nivel.setNome(rs.getString("nome_nivel"));
                questao.setNivel(nivel);
            } 
            if(rs.getLong("id_disciplina") > 0){
                disciplina=new Disciplina();
                disciplina.setId(rs.getLong("id_disciplina"));
                disciplina.setNome(rs.getString("nome_disciplina"));
                questao.setDisciplina(disciplina);
            }              
        }
        return questao;
    }

    @Override //testado - ok
    public List<Questao> readByCriteria(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo tipo_questao, questao.status status_questao, "
                + "questao.titulo titulo_questao, questao.texto texto_questao, questao.nota nota_questao, questao.qtde_avaliacoes qtde,resposta.id id_resposta, "
                + "resposta.texto texto_resposta, usuario.id id_usuario, usuario.nome nome_usuario, usuario.escola nome_escola, "
                + "estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado, cidades.id id_cidade, cidades.nome nome_cidade,  "
                + "nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, "
                + "disciplina.nome nome_disciplina FROM questao "
                + "LEFT JOIN usuario ON questao.usuario_fk = usuario.id "
                + "LEFT JOIN resposta ON questao.resposta_fk = resposta.id "
                + "LEFT JOIN disciplina ON questao.disciplina_fk = disciplina.id "
                + "LEFT JOIN nivel ON questao.nivel_fk = nivel.id "
                + "LEFT JOIN estados ON estados.id = usuario.estado_fk "
                + "LEFT JOIN cidades ON cidades.id = usuario.cidade_fk where 1=1";
        sql+=applyCriteria(criteria);

        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        List<Questao> questaoList = new ArrayList<>();       
        while (rs.next()) {
            Questao questao = new Questao();
            questao.setId(rs.getLong("id_questao")); 
            questao.setTipo(rs.getLong("tipo_questao"));
            questao.setStatus(rs.getInt("status_questao"));
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));
            questao.setNota(rs.getInt("nota_questao"));
            questao.setQtdeAvaliacoes(rs.getInt("qtde"));
            Resposta resposta = new Resposta();
            resposta.setId(rs.getLong("id_resposta"));
            resposta.setTexto(rs.getString("texto_resposta"));
            questao.setResposta(resposta);
            Usuario usuario = new Usuario();
            usuario.setId(rs.getLong("id_usuario"));
            usuario.setNome(rs.getString("nome_usuario"));  
            usuario.setEscola(rs.getString("nome_escola"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            estado.setSigla(rs.getString("sigla_estado"));
            usuario.setEstado(estado);
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            usuario.setCidade(cidade);
            questao.setUsuario(usuario);
            Nivel nivel =new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            questao.setNivel(nivel);
            Disciplina disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id_disciplina"));
            disciplina.setNome(rs.getString("nome_disciplina"));
            questao.setDisciplina(disciplina);
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));                  
            questaoList.add(questao);
        }
        return questaoList;
    }

    public Long countByCriteria(Connection conn, Map<Long, Object> criteria) throws Exception {
        Long count = null;
        String sql = "SELECT count(*) total  FROM questao WHERE 1=1 AND questao.status ='"+criteria.get(QuestaoCriteria.STATUS_EQ)+"'";
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        if (rs.next()) {
            count = rs.getLong("total");
        }
        return count;
    }
    
    @Override // testado - ok
    public void update(Connection conn, Questao entity) throws Exception {
        String sql = "UPDATE questao SET  titulo= ?, texto=?, status=?, nota = nota+?, qtde_avaliacoes =  qtde_avaliacoes + ? WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        int i = 0;
        ps.setString(++i, entity.getTitulo());
        ps.setString(++i, entity.getTexto());
        if(entity.getStatus()!=null){
            ps.setInt(++i, entity.getStatus());
        }else{
            ps.setNull(++i, Types.INTEGER);
        }
        if(entity.getNota() > 0){
            ps.setInt(++i, entity.getNota());
            ps.setInt(++i, 1);
        }
        else{
            ps.setInt(++i, 0);
            ps.setInt(++i, 0);
        }
        ps.setLong(++i, entity.getId());
        
        ps.execute();
        ps.close();
    }

    @Override // testado - ok
    public void delete(Connection conn, Long id) throws Exception {
        String sql = "DELETE FROM questao WHERE id=?;";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setLong(1, id);
        ps.execute();
        ps.close();
    }
    
    public String applyCriteria(Map<Long, Object> criteria) throws Exception {
        String sql="";
        String questaoIlike= (String) criteria.get(QuestaoCriteria.QUESTAO_ILIKE);
        if(!questaoIlike.isEmpty() && questaoIlike!= null){
            sql+=" AND questao.titulo ILIKE '%"+questaoIlike+"%' OR questao.texto ILIKE '%"+questaoIlike+"%' OR disciplina.nome ILIKE '%"+questaoIlike+"%' OR nivel.nome ILIKE '%"+questaoIlike+"%' OR usuario.nome ILIKE '%"+questaoIlike+"%' OR estados.nome ILIKE '%"+questaoIlike+"%' OR estados.sigla ILIKE '%"+questaoIlike+"%' OR cidades.nome ILIKE '%"+questaoIlike+"%' OR usuario.escola ILIKE '%"+questaoIlike+"%'";
        }
        
        return sql;
    }
    
        public List<Questao> getByStatus(Connection conn, Map<Long, Object> criteria, Long limit, Long offset) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo tipo_questao, questao.status status_questao, questao.titulo titulo_questao, questao.texto texto_questao, questao.nota nota_questao, questao.qtde_avaliacoes qtde,resposta.id id_resposta, resposta.texto texto_resposta, usuario.id id_usuario, usuario.nome nome_usuario, usuario.escola nome_escola, estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado, cidades.id id_cidade, cidades.nome nome_cidade,  nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, disciplina.nome nome_disciplina FROM questao LEFT JOIN usuario ON questao.usuario_fk = usuario.id LEFT JOIN resposta ON questao.resposta_fk = resposta.id LEFT JOIN disciplina ON questao.disciplina_fk = disciplina.id LEFT JOIN nivel ON questao.nivel_fk = nivel.id LEFT JOIN estados ON estados.id = usuario.estado_fk LEFT JOIN cidades ON cidades.id = usuario.cidade_fk where 1=1 AND questao.status = 0;" ;
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        List<Questao> questaoList = new ArrayList<>();       
        while (rs.next()) {
            Questao questao = new Questao();
            questao.setId(rs.getLong("id_questao")); 
            questao.setTipo(rs.getLong("tipo_questao"));
            questao.setStatus(rs.getInt("status_questao"));
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));
            questao.setNota(rs.getInt("nota_questao"));
            questao.setQtdeAvaliacoes(rs.getInt("qtde"));
            Resposta resposta = new Resposta();
            resposta.setId(rs.getLong("id_resposta"));
            resposta.setTexto(rs.getString("texto_resposta"));
            questao.setResposta(resposta);
            Usuario usuario = new Usuario();
            usuario.setId(rs.getLong("id_usuario"));
            usuario.setNome(rs.getString("nome_usuario"));  
            usuario.setEscola(rs.getString("nome_escola"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            estado.setSigla(rs.getString("sigla_estado"));
            usuario.setEstado(estado);
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            usuario.setCidade(cidade);
            questao.setUsuario(usuario);
            Nivel nivel =new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            questao.setNivel(nivel);
            Disciplina disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id_disciplina"));
            disciplina.setNome(rs.getString("nome_disciplina"));
            questao.setDisciplina(disciplina);
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));                  
            questaoList.add(questao);
        }
        return questaoList;
    }
        
    public List<Questao> readByTipo(Connection conn, Long tipo) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo tipo_questao, questao.status status_questao, "
                + "questao.titulo titulo_questao, questao.texto texto_questao, questao.nota nota_questao, questao.qtde_avaliacoes qtde,resposta.id id_resposta, "
                + "resposta.texto texto_resposta, usuario.id id_usuario, usuario.nome nome_usuario, usuario.escola nome_escola, "
                + "estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado, cidades.id id_cidade, cidades.nome nome_cidade,  "
                + "nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, "
                + "disciplina.nome nome_disciplina FROM questao "
                + "LEFT JOIN usuario ON questao.usuario_fk = usuario.id "
                + "LEFT JOIN resposta ON questao.resposta_fk = resposta.id "
                + "LEFT JOIN disciplina ON questao.disciplina_fk = disciplina.id "
                + "LEFT JOIN nivel ON questao.nivel_fk = nivel.id "
                + "LEFT JOIN estados ON estados.id = usuario.estado_fk "
                + "LEFT JOIN cidades ON cidades.id = usuario.cidade_fk where questao.tipo = "+tipo+";";
        
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        List<Questao> questaoList = new ArrayList<>();       
        while (rs.next()) {
            Questao questao = new Questao();
            questao.setId(rs.getLong("id_questao")); 
            questao.setTipo(rs.getLong("tipo_questao"));
            questao.setStatus(rs.getInt("status_questao"));
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));
            questao.setNota(rs.getInt("nota_questao"));
            questao.setQtdeAvaliacoes(rs.getInt("qtde"));
            Resposta resposta = new Resposta();
            resposta.setId(rs.getLong("id_resposta"));
            resposta.setTexto(rs.getString("texto_resposta"));
            questao.setResposta(resposta);
            Usuario usuario = new Usuario();
            usuario.setId(rs.getLong("id_usuario"));
            usuario.setNome(rs.getString("nome_usuario"));  
            usuario.setEscola(rs.getString("nome_escola"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            estado.setSigla(rs.getString("sigla_estado"));
            usuario.setEstado(estado);
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            usuario.setCidade(cidade);
            questao.setUsuario(usuario);
            Nivel nivel =new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            questao.setNivel(nivel);
            Disciplina disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id_disciplina"));
            disciplina.setNome(rs.getString("nome_disciplina"));
            questao.setDisciplina(disciplina);
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));                  
            questaoList.add(questao);
        }
        return questaoList;
    }
    
        public List<Questao> readByEstado(Connection conn, String estadofk) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo tipo_questao, questao.status status_questao, "
                + "questao.titulo titulo_questao, questao.texto texto_questao, questao.nota nota_questao, questao.qtde_avaliacoes qtde,resposta.id id_resposta, "
                + "resposta.texto texto_resposta, usuario.id id_usuario, usuario.nome nome_usuario, usuario.escola nome_escola, "
                + "estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado, cidades.id id_cidade, cidades.nome nome_cidade,  "
                + "nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, "
                + "disciplina.nome nome_disciplina FROM questao "
                + "LEFT JOIN usuario ON questao.usuario_fk = usuario.id "
                + "LEFT JOIN resposta ON questao.resposta_fk = resposta.id "
                + "LEFT JOIN disciplina ON questao.disciplina_fk = disciplina.id "
                + "LEFT JOIN nivel ON questao.nivel_fk = nivel.id "
                + "LEFT JOIN estados ON estados.id = usuario.estado_fk "
                + "LEFT JOIN cidades ON cidades.id = usuario.cidade_fk where estados.sigla ilike '%"+estadofk+"%'";
        
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        List<Questao> questaoList = new ArrayList<>();       
        while (rs.next()) {
            Questao questao = new Questao();
            questao.setId(rs.getLong("id_questao")); 
            questao.setTipo(rs.getLong("tipo_questao"));
            questao.setStatus(rs.getInt("status_questao"));
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));
            questao.setNota(rs.getInt("nota_questao"));
            questao.setQtdeAvaliacoes(rs.getInt("qtde"));
            Resposta resposta = new Resposta();
            resposta.setId(rs.getLong("id_resposta"));
            resposta.setTexto(rs.getString("texto_resposta"));
            questao.setResposta(resposta);
            Usuario usuario = new Usuario();
            usuario.setId(rs.getLong("id_usuario"));
            usuario.setNome(rs.getString("nome_usuario"));  
            usuario.setEscola(rs.getString("nome_escola"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            estado.setSigla(rs.getString("sigla_estado"));
            usuario.setEstado(estado);
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            usuario.setCidade(cidade);
            questao.setUsuario(usuario);
            Nivel nivel =new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            questao.setNivel(nivel);
            Disciplina disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id_disciplina"));
            disciplina.setNome(rs.getString("nome_disciplina"));
            questao.setDisciplina(disciplina);
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));                  
            questaoList.add(questao);
        }
        return questaoList;
    }
        
        public List<Questao> readByUsuario(Connection conn, String usuarioIlike) throws Exception {
        String sql = "SELECT questao.id id_questao, questao.tipo tipo_questao, questao.status status_questao, "
                + "questao.titulo titulo_questao, questao.texto texto_questao, questao.nota nota_questao, questao.qtde_avaliacoes qtde,resposta.id id_resposta, "
                + "resposta.texto texto_resposta, usuario.id id_usuario, usuario.nome nome_usuario, usuario.escola nome_escola, "
                + "estados.id id_estado, estados.nome nome_estado, estados.sigla sigla_estado, cidades.id id_cidade, cidades.nome nome_cidade,  "
                + "nivel.id id_nivel, nivel.nome nome_nivel, disciplina.id id_disciplina, "
                + "disciplina.nome nome_disciplina FROM questao "
                + "LEFT JOIN usuario ON questao.usuario_fk = usuario.id "
                + "LEFT JOIN resposta ON questao.resposta_fk = resposta.id "
                + "LEFT JOIN disciplina ON questao.disciplina_fk = disciplina.id "
                + "LEFT JOIN nivel ON questao.nivel_fk = nivel.id "
                + "LEFT JOIN estados ON estados.id = usuario.estado_fk "
                + "LEFT JOIN cidades ON cidades.id = usuario.cidade_fk where usuario.nome ilike '%"+usuarioIlike+"%'";
        
        PreparedStatement ps = conn.prepareStatement(sql);
        Statement s = conn.createStatement();
        ResultSet rs = s.executeQuery(sql);
        List<Questao> questaoList = new ArrayList<>();       
        while (rs.next()) {
            Questao questao = new Questao();
            questao.setId(rs.getLong("id_questao")); 
            questao.setTipo(rs.getLong("tipo_questao"));
            questao.setStatus(rs.getInt("status_questao"));
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));
            questao.setNota(rs.getInt("nota_questao"));
            questao.setQtdeAvaliacoes(rs.getInt("qtde"));
            Resposta resposta = new Resposta();
            resposta.setId(rs.getLong("id_resposta"));
            resposta.setTexto(rs.getString("texto_resposta"));
            questao.setResposta(resposta);
            Usuario usuario = new Usuario();
            usuario.setId(rs.getLong("id_usuario"));
            usuario.setNome(rs.getString("nome_usuario"));  
            usuario.setEscola(rs.getString("nome_escola"));
            Estado estado = new Estado();
            estado.setId(rs.getLong("id_estado"));
            estado.setNome(rs.getString("nome_estado"));
            estado.setSigla(rs.getString("sigla_estado"));
            usuario.setEstado(estado);
            Cidade cidade = new Cidade();
            cidade.setId(rs.getLong("id_cidade"));
            cidade.setNome(rs.getString("nome_cidade"));
            usuario.setCidade(cidade);
            questao.setUsuario(usuario);
            Nivel nivel =new Nivel();
            nivel.setId(rs.getLong("id_nivel"));
            nivel.setNome(rs.getString("nome_nivel"));
            questao.setNivel(nivel);
            Disciplina disciplina = new Disciplina();
            disciplina.setId(rs.getLong("id_disciplina"));
            disciplina.setNome(rs.getString("nome_disciplina"));
            questao.setDisciplina(disciplina);
            questao.setTitulo(rs.getString("titulo_questao"));
            questao.setTexto(rs.getString("texto_questao"));                  
            questaoList.add(questao);
        }
        return questaoList;
    }        
}


package projetoescola.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import projetoescola.model.criteria.QuestaoCriteria;
import projetoescola.model.entity.Questao;
import projetoescola.model.entity.Usuario;
import projetoescola.model.service.QuestaoService;
import projetoescola.model.service.UsuarioService;

/**
 *
 * @author Jander Faria
 */
@Controller
public class UsuarioController {
    @RequestMapping(value = "/entrar" , method = RequestMethod.POST)
    public ModelAndView login(String email,String senha,HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView("construir/entrar");
        UsuarioService us = new UsuarioService();
        Usuario usuario = us.login(email, senha);
        if(usuario!=null){
            session.setAttribute("usuarioLogado", usuario);
            if(usuario.getTipo()==0 ){
                mv= new ModelAndView("redirect:/colaborador/perfil");               
            }
            if(usuario.getTipo()==1){
                mv= new ModelAndView("redirect:/moderador/perfil");
            }      
        }
        return mv;
    }
    
    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView("redirect:/");
        session.removeAttribute("usuarioLogado");
        return mv;
    }
    
    @RequestMapping(value = "/colaborador/perfil" , method = RequestMethod.GET)
    public ModelAndView getColaboradorPerfil(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView("usuario/colaboradorPerfil");

        Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
        
        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(QuestaoCriteria.QUESTAO_ILIKE, usuario.getNome());
        listQuestao = qs.readByCriteria(criteria, null, null);

        String [] status = {"Não aprovada","Aprovada"};

        mv.addObject("listaQuestao", listQuestao);
        mv.addObject("status", status);
        return mv;        
    }
    
    @RequestMapping(value = "/moderador/perfil" , method = RequestMethod.GET)
    public ModelAndView getModeradorPerfil() throws Exception {
        ModelAndView mv = new ModelAndView("usuario/moderadorPerfil");
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(QuestaoCriteria.QUESTAO_ILIKE, "");
        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>();
        listQuestao = qs.readByCriteria(criteria, 0L, 0L);
        
        Long pendentes;
        Map<Long, Object> criteriaDis = new HashMap<>();
        criteriaDis.put(QuestaoCriteria.STATUS_EQ, 0);
        QuestaoService ds = new QuestaoService();
        pendentes = ds.countByCriteria(criteriaDis);
        
        mv.addObject("pendentes", pendentes);
        mv.addObject("listaQuestao", listQuestao);
        return mv;        
    }

    @RequestMapping(value = "/moderador/perfil/pendentes" , method = RequestMethod.GET)
    public ModelAndView questoesPendentes() throws Exception {
        ModelAndView mv = new ModelAndView("usuario/moderadorPerfil");
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(QuestaoCriteria.STATUS_EQ, 0);
        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>();
        listQuestao = qs.getByStatus(criteria, 0L, 0L);
        mv.addObject("listaQuestao", listQuestao);
        return mv;        
    }
    
    @RequestMapping(value = "/questoes/{id}/aprovar", method = RequestMethod.GET)
    public ModelAndView aprovarQuestao(@PathVariable Long id) throws Exception {
        
        QuestaoService qs = new QuestaoService();
        Questao questao = new Questao();
        Questao q = new Questao();
        q = qs.readById(id);
        questao.setId(id);
        questao.setTexto(q.getTexto());
        questao.setTitulo(q.getTitulo());
        questao.setNivel(q.getNivel());
        questao.setDisciplina(q.getDisciplina());
        questao.setResposta(q.getResposta());
        questao.setTipo(q.getTipo());
        questao.setNota(0);
        questao.setQtdeAvaliacoes(0);
        questao.setStatus(1);
        qs.update(questao);
        ModelAndView mv = new ModelAndView("redirect:/moderador/perfil");
        mv.addObject("questao", questao);
        
        return mv;
    } 
    
    @RequestMapping(value = "/colaborador/questoes", method = RequestMethod.GET)
    public ModelAndView usuarioQuestoes(HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView("usuario/colaboradorPerfil");

        Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
        
        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(QuestaoCriteria.QUESTAO_ILIKE, usuario.getNome());
        listQuestao = qs.readByCriteria(criteria, null, null);
        
        mv.addObject("listaQuestao", listQuestao);
        return mv;
    }
    
    @RequestMapping(value = "/questoes/{id}/avaliar", method = RequestMethod.GET)
    public ModelAndView avaliarQuestao(@PathVariable Long id, Integer nota) throws Exception {
        ModelAndView mv = new ModelAndView("redirect:/questoes");

        QuestaoService qs = new QuestaoService();
        Questao questao = new Questao();
        Questao q = new Questao();
        q = qs.readById(id);
        questao.setId(id);
        questao.setTexto(q.getTexto());
        questao.setTitulo(q.getTitulo());
        questao.setNivel(q.getNivel());
        questao.setDisciplina(q.getDisciplina());
        questao.setResposta(q.getResposta());
        questao.setTipo(q.getTipo());
        questao.setStatus(1);
        questao.setNota(nota);
        questao.setQtdeAvaliacoes(1);
        qs.update(questao);
       
        return mv;
    }
    
    @RequestMapping(value = "/colaborador/questoes/{id}/visualizar", method = RequestMethod.GET)
    public ModelAndView visualizarQuestao(@PathVariable Long id) throws Exception {
        ModelAndView mv = new ModelAndView("teste_criteria");
        
        QuestaoService qs = new QuestaoService();
        Questao q = new Questao();
        q = qs.readById(id);
        
        mv.addObject("q", q);
        return mv;
    }    
    
}

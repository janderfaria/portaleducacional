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
import projetoescola.model.criteria.CidadeCriteria;
import projetoescola.model.criteria.DisciplinaCriteria;
import projetoescola.model.criteria.EstadoCriteria;
import projetoescola.model.criteria.NivelCriteria;
import projetoescola.model.criteria.QuestaoCriteria;
import projetoescola.model.entity.Cidade;
import projetoescola.model.entity.Disciplina;
import projetoescola.model.entity.Estado;
import projetoescola.model.entity.Nivel;
import projetoescola.model.entity.Questao;
import projetoescola.model.entity.Resposta;
import projetoescola.model.entity.Usuario;
import projetoescola.model.service.CidadeService;
import projetoescola.model.service.DisciplinaService;
import projetoescola.model.service.EstadoService;
import projetoescola.model.service.NivelService;
import projetoescola.model.service.QuestaoService;
import projetoescola.model.service.RespostaService;

@Controller
public class QuestaoController {
    
    @RequestMapping(value = "questao/inserir" , method = RequestMethod.GET)
    public ModelAndView getQuestaoForm() throws Exception {
        
        ModelAndView mv = new ModelAndView("questao/form");
        
        List<Nivel> nivelList = new ArrayList<>();
        Map<Long, Object> criteriaNivel = new HashMap<>();
        criteriaNivel.put(NivelCriteria.NOME_ILIKE, "");
        NivelService ns = new NivelService();
        nivelList = ns.readByCriteria(criteriaNivel, 0L, 0L);
        
        List<Disciplina> disciplinaList = new ArrayList<>();
        Map<Long, Object> criteriaDis = new HashMap<>();
        criteriaDis.put(DisciplinaCriteria.NOME_ILIKE, "");
        DisciplinaService ds = new DisciplinaService();
        disciplinaList = ds.readByCriteria(criteriaDis, 0L, 0L);
        
        mv.addObject("listaDisciplina", disciplinaList);
        mv.addObject("listaNivel", nivelList);
        return mv;        
    }
    
    @RequestMapping(value = "questao/inserir" , method = RequestMethod.POST)
    public ModelAndView postQuestaoForm(String titulo, Long tipo, Long nivel, Long disciplina, String texto, String textoResposta,  HttpSession session) throws Exception {
        
        ModelAndView mv = new ModelAndView("redirect:/colaborador/perfil");

            QuestaoService questaoservice= new QuestaoService();
            Questao questao= new Questao(); 
            Usuario u = new Usuario();
            u = (Usuario) session.getAttribute("usuarioLogado");
            questao.setUsuario(u);
            questao.setTitulo(titulo);
            questao.setTipo(tipo);
            questao.setStatus(0);
            questao.setNota(0);
            questao.setQtdeAvaliacoes(0);            
            Nivel n = new Nivel();
            n.setId(nivel);
            questao.setNivel(n);
            Disciplina d = new Disciplina();
            d.setId(disciplina);
            questao.setDisciplina(d);
            questao.setTexto(texto);
            Resposta resposta = new Resposta();
            RespostaService rs = new RespostaService();
            resposta.setTexto(textoResposta);
            rs.create(resposta);
            questao.setResposta(resposta);

            questaoservice.create(questao);            
            
        return mv;
    }     
    

    @RequestMapping(value = "/questoes/{id}/excluir" , method = RequestMethod.GET)
    public ModelAndView delete(@PathVariable Long id) throws Exception {
        ModelAndView mv = new ModelAndView("redirect:/colaborador/perfil");
        QuestaoService qs = new QuestaoService();
        qs.delete(id);
        
        return mv;        
    }
    
    @RequestMapping(value = "/questoes/{id}/editar", method = RequestMethod.GET)
    public ModelAndView getQuestaoForm(@PathVariable Long id) throws Exception {
        QuestaoService qs = new QuestaoService();
        Questao questao = qs.readById(id);
        ModelAndView mv = new ModelAndView("/questao/form");
        mv.addObject("questao", questao);
        
        String nomeNivel = "";
        List<Nivel> nivelList = new ArrayList<>();
        Map<Long, Object> criteriaNivel = new HashMap<>();
        criteriaNivel.put(NivelCriteria.NOME_ILIKE, nomeNivel);
        NivelService ns = new NivelService();
        nivelList = ns.readByCriteria(criteriaNivel, 0L, 0L);
        mv.addObject("listaNivel", nivelList);  
        
        String dis = "";
        List<Disciplina> disciplinaList = new ArrayList<>();
        Map<Long, Object> criteriaDis = new HashMap<>();
        criteriaDis.put(DisciplinaCriteria.NOME_ILIKE, dis);
        DisciplinaService ds = new DisciplinaService();
        disciplinaList = ds.readByCriteria(criteriaDis, 0L, 0L);
        mv.addObject("listaDisciplina", disciplinaList); 
        
        return mv;
    }
        
    @RequestMapping(value = "/questoes/{id}/editar", method = RequestMethod.POST)
    public ModelAndView postQuestaoForm(@PathVariable Long id, String titulo, Long tipo, Long nivel, Long disciplina, String texto, Long questaoResposta, String textoResposta) throws Exception {
         
        ModelAndView mv = new ModelAndView("redirect:/colaborador/perfil");
        QuestaoService questaoservice= new QuestaoService();
        Questao questao= new Questao(); 
        questao.setId(id);
        questao.setTitulo(titulo);
        questao.setTipo(tipo);
        questao.setStatus(0);
        questao.setNota(0);
        questao.setQtdeAvaliacoes(0);
        Nivel n = new Nivel();
        n.setId(nivel);
        questao.setNivel(n);
        Disciplina d = new Disciplina();
        d.setId(disciplina);
        questao.setDisciplina(d);
        questao.setTexto(texto);
        RespostaService rs = new RespostaService();
        Resposta r = new Resposta();
        r.setId(questaoResposta);
        r.setTexto(textoResposta);
        rs.update(r);
        questao.setResposta(r);
        questaoservice.update(questao);

        return mv;
    }   
    
    @RequestMapping(value = "questoes", method = RequestMethod.GET)
    public ModelAndView getQuestaoList(String criterio) throws Exception {
        ModelAndView mv = new ModelAndView("questao/list");
        
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria1 = new HashMap<>();
        criteria1.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria1, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.NOME_ILIKE, "");
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);  
        
        String [] tipo = {"Fechada","Aberta","Visual","Dinâmica"};
        mv.addObject("tipos", tipo);
        
        return mv;
    }
    
    @RequestMapping(value = "questoes/pesquisar", method = RequestMethod.POST)
    public ModelAndView pesquisarQuestoes(String criterio) throws Exception {
        ModelAndView mv = new ModelAndView("questao/list");

        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(QuestaoCriteria.QUESTAO_ILIKE, criterio);
        listQuestao = qs.readByCriteria(criteria, 0L, 0L);
        
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria1 = new HashMap<>();
        criteria1.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria1, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.NOME_ILIKE, "");
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);  
        
        String [] tipo = {"Fechada","Aberta","Ilustrativa","Dinâmica"};
        mv.addObject("tipos", tipo);
        
        mv.addObject("listaQuestao", listQuestao);
        return mv;
    }

    @RequestMapping(value = "questoes/estado", method = RequestMethod.POST)
    public ModelAndView pesquisarQuestoesEstado(String criterio) throws Exception {
        ModelAndView mv = new ModelAndView("questao/list");

        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        listQuestao = qs.readByEstado(criterio);
        
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria1 = new HashMap<>();
        criteria1.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria1, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.NOME_ILIKE, "");
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);  
        
        String [] tipo = {"Fechada","Aberta","Visual","Dinâmica"};
        mv.addObject("tipos", tipo);
        
        mv.addObject("listaQuestao", listQuestao);
        return mv;
    }

    @RequestMapping(value = "questoes/tipo", method = RequestMethod.POST)
    public ModelAndView pesquisarQuestoesTipo(Long criterio) throws Exception {
        ModelAndView mv = new ModelAndView("questao/list");

        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        listQuestao = qs.readByTipo(criterio);
        
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria1 = new HashMap<>();
        criteria1.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria1, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.NOME_ILIKE, "");
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);  
        
        String [] tipo = {"Fechada","Aberta","Visual","Dinâmica"};
        mv.addObject("tipos", tipo);
        
        mv.addObject("listaQuestao", listQuestao);
        return mv;
    }
    
    @RequestMapping(value = "questoes/usuario", method = RequestMethod.POST)
    public ModelAndView pesquisarQuestoesUsuario(String criterio) throws Exception {
        ModelAndView mv = new ModelAndView("questao/list");

        QuestaoService qs = new QuestaoService();
        List<Questao> listQuestao = new ArrayList<>(); 
        listQuestao = qs.readByUsuario(criterio);
        
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria1 = new HashMap<>();
        criteria1.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria1, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.NOME_ILIKE, "");
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);  
        
        String [] tipo = {"Fechada","Aberta","Visual","Dinâmica"};
        mv.addObject("tipos", tipo);
        
        mv.addObject("listaQuestao", listQuestao);
        return mv;
    }
    
    @RequestMapping(value = "questao/{id}/abrir" , method = RequestMethod.GET)
    public ModelAndView getQuestao(@PathVariable Long id) throws Exception {      
        ModelAndView mv = new ModelAndView("questao/getQuestao");
        Questao q = new Questao();
        QuestaoService qs = new QuestaoService();
        q = qs.readById(id);
        mv.addObject(q);
        return mv;        
    }
    
    @RequestMapping(value = "questao/{id}/resposta" , method = RequestMethod.GET)
    public ModelAndView getResposta(@PathVariable Long id) throws Exception {      
        ModelAndView mv = new ModelAndView("teste2");
        Questao q = new Questao();
        QuestaoService qs = new QuestaoService();
        q = qs.readById(id);
        Resposta r = new Resposta();
        r = q.getResposta();
        mv.addObject(r);
        return mv;        
    }    
}

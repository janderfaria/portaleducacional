package projetoescola.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.servlet.ModelAndView;
import projetoescola.model.criteria.CidadeCriteria;
import projetoescola.model.criteria.EstadoCriteria;
import projetoescola.model.entity.Cidade;
import projetoescola.model.entity.Estado;
import projetoescola.model.entity.Usuario;
import projetoescola.model.service.CidadeService;
import projetoescola.model.service.EstadoService;
import projetoescola.model.service.UsuarioService;
@Controller
public class HomeController {
    
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView index(HttpServletRequest request) throws Exception
    {   
        ModelAndView mv = new ModelAndView("/home/sobre");
        return mv;
    }
    
    //Views Constituir
    @RequestMapping(value = "/constituir", method = RequestMethod.GET)
    public ModelAndView viewConstituir() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/constituir");        
        return mv;
    }    

    @RequestMapping(value = "/constituir/cidadania", method = RequestMethod.GET)
    public ModelAndView viewCidadania() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/cidadania_legislacao");        
        return mv;
    }    
    
    @RequestMapping(value = "/constituir/constituicao-miudos", method = RequestMethod.GET)
    public ModelAndView viewMiudos() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/constituicao_miudos");        
        return mv;
    }      
    
    @RequestMapping(value = "/constituir/escola-do-legislativo", method = RequestMethod.GET)
    public ModelAndView viewEscola() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/escola_legislativo");        
        return mv;
    }    
    
    @RequestMapping(value = "/constituir/cartilha", method = RequestMethod.GET)
    public ModelAndView viewCartilha() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/cartilha_atividades");        
        return mv;
    }    
        
    @RequestMapping(value = "/constituir/portal-educacional", method = RequestMethod.GET)
    public ModelAndView viewPortal() throws Exception {
        
        ModelAndView mv = new ModelAndView("constituir/portal_educacional");        
        return mv;
    }      
    
    //Views Ação
    @RequestMapping(value = "/acao", method = RequestMethod.GET)
    public ModelAndView acao() throws Exception {
        
        ModelAndView mv = new ModelAndView("acao/acao");
        return mv;
    }    
    
    @RequestMapping(value = "/acao/contato", method = RequestMethod.GET)
    public ModelAndView contato() throws Exception {
        
        ModelAndView mv = new ModelAndView("acao/contato");
        return mv;
    }    
    
    @RequestMapping(value = "/acao/contato", method = RequestMethod.POST)
    public ModelAndView postContato(String email, String assunto, String mensagem) throws Exception {
        ModelAndView mv = new ModelAndView("redirect:/acao/contato");

        SendMail sm = new SendMail();
        sm.sendMail(email, assunto, mensagem);
        
        return mv;
    }    
    
    @RequestMapping(value = "/acao/estatisticas", method = RequestMethod.GET)
    public ModelAndView estatisticas() throws Exception {
        
        ModelAndView mv = new ModelAndView("acao/estatisticas");
        return mv;
    }   
    
    @RequestMapping(value = "/acao/moderador", method = RequestMethod.GET)
    public ModelAndView moderador() throws Exception {
        
        ModelAndView mv = new ModelAndView("acao/moderador");
        return mv;
    }    
    
    @RequestMapping(value = "/acao/parcerias", method = RequestMethod.GET)
    public ModelAndView parcerias() throws Exception {
        
        ModelAndView mv = new ModelAndView("acao/parcerias");
        return mv;
    }    
    
    //Views Construir
    @RequestMapping(value = "/construir", method = RequestMethod.GET)
    public ModelAndView construir()
    {
        ModelAndView mv = new ModelAndView("/construir/construir");
        return mv;
    }

    @RequestMapping(value = "/educacao/como-avaliar-questoes", method = RequestMethod.GET)
    public ModelAndView ajudaAvaliar()
    {
        ModelAndView mv = new ModelAndView("/educacao/ajuda_avaliar");
        return mv;
    }
    
    @RequestMapping(value = "/construir/inserir-questoes", method = RequestMethod.GET)
    public ModelAndView ajudaInserir()
    {
        ModelAndView mv = new ModelAndView("/construir/ajuda_questoes");
        return mv;
    }
    
    //Views educacao
    @RequestMapping(value = "/educacao", method = RequestMethod.GET)
    public ModelAndView educacao()
    {
        ModelAndView mv = new ModelAndView("educacao/educacao");
        return mv;
    }  
    
    @RequestMapping(value = "/educacao/como-procurar-questoes", method = RequestMethod.GET)
    public ModelAndView ajudaQuestoes()
    {
        ModelAndView mv = new ModelAndView("educacao/ajuda_procurar");
        return mv;
    }    
    
    @RequestMapping(value = "/educacao/classificacao-do-conteudo", method = RequestMethod.GET)
    public ModelAndView classificacaoConteudo()
    {
        ModelAndView mv = new ModelAndView("educacao/classificacao_conteudo");
        return mv;
    }    
        
    @RequestMapping(value = "/entrar", method = RequestMethod.GET)
    public ModelAndView getLoginForm()
    {
        ModelAndView mv = new ModelAndView("/construir/entrar");
        return mv;
    }
    
    @RequestMapping(value = "/cadastro", method = RequestMethod.GET)
    public ModelAndView getCadastroForm(String estado) throws Exception
    {   
        ModelAndView mv = new ModelAndView("/construir/cadastro");
        CidadeService cs = new CidadeService();
        EstadoService es = new EstadoService();
        
        Map<Long, Object> criteria = new HashMap<>();
        criteria.put(EstadoCriteria.NOME_ILIKE, "");
        List<Estado> estados = es.readByCriteria(criteria, 0L, 0L);
        
        Map<Long, Object> criteria2 = new HashMap<>();
        criteria2.put(CidadeCriteria.ESTADO_EQ, estado);
        List<Cidade> cidades = cs.readByCriteria(criteria2, 0L,0L);
        
        mv.addObject("cidades", cidades);
        mv.addObject("estados", estados);
        
        return mv;
    }
    
    @RequestMapping(value = "/cadastro", method = RequestMethod.POST)
    public ModelAndView cadastroColaborador(String nome, Long estado, Long cidade, String profissao, String escola, String email, String senha, HttpSession session) throws Exception {
        ModelAndView mv = new ModelAndView("usuario/colaboradorPerfil");
        
        UsuarioService us= new UsuarioService();
        Usuario usuario= new Usuario();
        usuario.setTipo(0);
        usuario.setNome(nome); 
        Estado e = new Estado();
        e.setId(estado);
        usuario.setEstado(e);    
        Cidade c = new Cidade();
        c.setId(cidade);
        usuario.setCidade(c);
        usuario.setProfissao(profissao);
        usuario.setEscola(escola);
        usuario.setEmail(email);
        usuario.setSenhaAsPlanText(senha);
        us.create(usuario);
        session.setAttribute("usuarioLogado", usuario);
        return mv;
    }

    @RequestMapping(value = "/pesquisa", method = RequestMethod.POST)
    public ModelAndView getCidades(Long estado) throws Exception
    {   
        ModelAndView mv = new ModelAndView("listaCidades");
        Map<Long, Object> criteriaCidade = new HashMap();
        criteriaCidade.put(CidadeCriteria.ESTADO_EQ, estado);
        List<Cidade> cidadeList = new ArrayList<>();
        CidadeService cs = new CidadeService();
        cidadeList = cs.readByCriteria(criteriaCidade, 0L, 0L);
               
        mv.addObject("cidades", cidadeList);      
        return mv;
    }
}

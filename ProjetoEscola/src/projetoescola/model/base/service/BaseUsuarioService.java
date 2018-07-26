package projetoescola.model.base.service;

import projetoescola.model.base.BaseCRUDService;
import projetoescola.model.entity.Usuario;

public interface BaseUsuarioService extends BaseCRUDService<Usuario> {
    
    public Usuario login(String email, String senha) throws Exception;
}

package service;

import model.Usuario;
import dao.UsuarioDao;

public class UsuarioService {
	UsuarioDao dao = new UsuarioDao();
	
	public boolean validar(Usuario usuario){
		return dao.validar(usuario);
	}

	public void criar(Usuario usuario) {
		dao.criar(usuario);
	}

	public Usuario carregar(int id) {
		return dao.carregar(id);
	}
}

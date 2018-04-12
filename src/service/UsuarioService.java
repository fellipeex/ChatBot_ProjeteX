package service;
import dao.UsuarioDao;
import model.Usuario;

public class UsuarioService {
	UsuarioDao dao = new UsuarioDao();
	
	public int criar(Usuario usuario) {
		return dao.criar(usuario);
	}
	
	public void atualizar(Usuario usuario) {
		dao.atualizar(usuario);
	}
	public void excluir(int id) {
		dao.excluir(id);
	}
	public Usuario carregar(int id) {
		return dao.carregar(id);
	}
	public boolean autenticar(Usuario usuario) {
		return dao.autUsuario(usuario);
	}
}

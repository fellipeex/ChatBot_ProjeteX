package service;
import dao.ClienteDao;
import model.Cliente;

public class ClienteService {
	ClienteDao dao = new ClienteDao();
	
	public int criar(Cliente cliente) {
		return dao.criar(cliente);
	}
	
	public void atualizar(Cliente cliente) {
		dao.atualizar(cliente);
	}
	public void excluir(int id) {
		dao.excluir(id);
	}
	public Cliente carregar(int id) {
		return dao.carregar(id);
	}
}

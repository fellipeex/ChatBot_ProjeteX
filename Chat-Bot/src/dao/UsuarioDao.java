package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDao {
	
	public int criar(Usuario usuario) {
		String sqlInsert = "INSERT INTO dbprojeto.usuario (idusuario, nome, email, senha) VALUES (?,?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				
			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
					ResultSet rs = stm2.executeQuery();){
				if (rs.next()) {
					usuario.setId((rs.getInt(1)));
					
				stm.setInt(1, usuario.getId());
				stm.setString(2, usuario.getNome());	
				stm.setString(3, usuario.getEmail());
				stm.setString(4, usuario.getSenha());
				stm.execute();
				
				
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
	return usuario.getId();
  }
	
	public void atualizar(Usuario usuario) {
		String sqlUpdate = "UPDATE usuario SET nome=?, area=?,populacao = ?";
		
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);){
				stm.setString(1, usuario.getNome());
				stm.setString(2, usuario.getEmail());
				stm.setString(3, usuario.getSenha());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int id){
		String sqlDelete = "DELETE FROM usuario WHERE id = ?";
		
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);){
			stm.setInt(1, id);
			stm.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public Usuario carregar(int id) {
		Usuario usuario = new Usuario();
		usuario.setId(id);
		String sqlSelect = "SELECT nome, email, senha FROM dbprojeto.usuario WHERE usuario.idUsuario = ?";
			try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setInt(1,usuario.getId());
				
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					usuario.setNome(rs.getString("nome"));
					usuario.setEmail(rs.getString("email"));
					usuario.setSenha(rs.getString("senha"));	
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return usuario;
	}
	
	public boolean autUsuario(Usuario user) {
		Usuario usuario = new Usuario();
		String sqlAut = "SELECT email,senha FROM usuario WHERE usuario.email = ? AND usuario.senha = ?";
			try (Connection conn = ConnectionFactory.obtemConexao();
					PreparedStatement stm = conn.prepareStatement(sqlAut);){
				stm.setString(1, user.getEmail());
				stm.setString(2, user.getSenha());
				
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					stm.setString(1, usuario.getEmail());
					stm.setString(2, usuario.getSenha());	
				}else {
					stm.setString(1, null);
					stm.setString(2, null);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		if((usuario.getSenha() == user.getSenha())) {		
			return true;
		}else {
			return false;
		}
	}
	
	public boolean validar(Usuario usuario) {
		String sqlSelect = "SELECT username, password FROM usuario "
				+ "WHERE username = ? and password = ?";
		// pega a conexão em um try normal para que ela não seja fechada
		try {
			Connection conn = ConnectionFactory.obtemConexao();
			// usando o try with resources do Java 7, que fecha o que abriu
			try (PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
				stm.setString(1, usuario.getNome());
				stm.setString(2, usuario.getSenha());
				try (ResultSet rs = stm.executeQuery();) {
					if (rs.next()) {
						return true;
					} else {
						return false;
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
			} catch (SQLException e1) {
				System.out.print(e1.getStackTrace());
			}
		} catch (SQLException e2) {
			e2.printStackTrace();
		}
		return false;
	}
	
	
}
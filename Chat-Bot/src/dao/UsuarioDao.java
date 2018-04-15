package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Usuario;

public class UsuarioDao {
	public int criar(Usuario usuario) {
		String sqlInsert = "INSERT INTO usuario(nome, pupulacao, area VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setString(1, usuario.getNome());
				stm.setString(2, usuario.getFone());
				stm.setString(3, usuario.getEmail());
				stm.setString(3, usuario.getSenha());
				stm.execute();
				
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						usuario.setId(rs.getInt(1));
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
				stm.setString(2, usuario.getFone());
				stm.setString(3, usuario.getEmail());
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
		String sqlSelect = "SELECT nome, fone, email, senha FROM usuario WHERE usuario.email = ? AND usuario.senha = ?";
			try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
				stm.setString(1, usuario.getEmail());
				stm.setString(2,usuario.getSenha());
				
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					stm.setString(1, usuario.getNome());
					stm.setString(2, usuario.getFone());
					stm.setString(3, usuario.getEmail());
					stm.setString(3, usuario.getSenha());
				}else {
					usuario.setId(-1);stm.setString(1, usuario.getNome());
					stm.setString(2, usuario.getFone());
					stm.setString(3, usuario.getEmail());
					stm.setString(3, usuario.getSenha());
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
		String sqlAut = "SELECT email, senha WHERE usuario.email = email AND usuario.senha = senha";
			try (Connection conn = ConnectionFactory.obtemConexao();
					PreparedStatement stm = conn.prepareStatement(sqlAut);){
				stm.setString(1, user.getEmail());
				stm.setString(2, user.getSenha());
				
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					stm.setString(1, usuario.getNome());
					stm.setString(2, usuario.getFone());
					stm.setString(3, usuario.getEmail());
					stm.setString(3, usuario.getSenha());
				}else {
					usuario.setId(-1);stm.setString(1, usuario.getNome());
					stm.setString(2, usuario.getFone());
					stm.setString(3, usuario.getEmail());
					stm.setString(3, usuario.getSenha());
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		if(usuario.getSenha() == user.getSenha()) {		
			return true;
		}else {
			return false;
		}
	}
	
	
}
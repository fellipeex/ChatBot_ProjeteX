package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Pergunta;
import model.Resposta;


public class AtendimentoDao {
	public int criarPergunta(Pergunta pergunta) {
		String sqlInsert = "INSERT INTO usuario(nome, pupulacao, area VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setString(1, pergunta.getNome());
				stm.setString(2, pergunta.getFone());
				stm.setString(3, pergunta.getEmail());
				stm.setString(3, pergunta.getSenha());
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
	return Pergunta.getId();
  }
	
	public int criarResposta(Usuario usuario) {
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
}

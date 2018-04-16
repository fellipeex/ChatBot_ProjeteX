package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Mensagem;

public class MensagemDao {
	public int criar(Mensagem mensagem) {
		String sqlInsert = "INSERT INTO mensagem(nome, pupulacao, area VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setString(1, mensagem.getNome());
				stm.setString(2, mensagem.getFone());
				stm.setString(3, mensagem.getEmail());
				stm.setString(3, mensagem.getSenha());
				stm.execute();
				
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						mensagem.setId(rs.getInt(1));
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
	return mensagem.getId();
  }
}
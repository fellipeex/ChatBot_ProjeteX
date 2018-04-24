package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Pergunta;
import model.Resposta;


public class MensagemDao {
	
	public void criarPergunta(Pergunta pergunta) {
		String sqlInsert = "INSERT INTO blperguntas(idPerguntas, pergunta, tipopergunta VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setInt(1, pergunta.getIdPergunta());
				stm.setString(1, pergunta.getPergunta());
				stm.setString(1, pergunta.getTipoPergunta());
				stm.execute();
				
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						pergunta.setIdPergunta((rs.getInt(1)));
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
  }
	
	public void criarResposta(Resposta resposta, Pergunta pergunta) {
		String sqlInsert = "INSERT INTO tblresposta(idrespostas, pegunta, Resposta VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setInt(1, resposta.getIdRespostas());
				stm.setString(2, pergunta.getPergunta());
				stm.setString(3, resposta.getResposta());
				stm.execute();
				
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						resposta.setIdPergunta(rs.getInt(1));
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
  }
}

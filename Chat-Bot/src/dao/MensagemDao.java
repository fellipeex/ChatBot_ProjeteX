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
	
	public void criarResposta(Resposta resposta) {
		String sqlInsert = "INSERT INTO tblRespostas (pegunta) VALUES (?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setInt(1, resposta.getIdRespostas());
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
	
	//retorna uma pergunta do sistema para o usuario
	public String buscarPergunta(Resposta resposta) {
		String resultado = null;
		String sqlSearch = "SELECT reposta FROM dbprojeto.tblRespostas where pergunta = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);){
				stm.setString(1,resposta.getPalavraChave());
				
			try(ResultSet rs = stm.executeQuery();){
				if(rs.next()) {
					resultado = rs.getString("pergunta");
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return resultado;
	}
}

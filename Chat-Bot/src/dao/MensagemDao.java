package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Pergunta;
import model.Resposta;


public class MensagemDao {
	
	public void criarResposta(Resposta resposta) {
		
		String sqlInsert = "INSERT INTO tblMensagem (idMensagem,resposta,palavraChave) VALUES (?,?,?)";
			try (Connection conn = ConnectionFactory.obtemConexao();
					
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
							
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						resposta.setIdRespostas((rs.getInt(1)));
						stm.setInt(1, resposta.getIdRespostas());
						stm.setString(2, resposta.getResposta());
						stm.setString(3, resposta.getPalavraChave());
						
						stm.execute();
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
  }
	
	public void criarResposta1(Resposta resposta) {
		String sqlInsert = "INSERT INTO tblRespostas (pegunta) VALUES (?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setInt(1, resposta.getIdRespostas());
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


	public String respondePergunta(Pergunta pergunta) {
		String resultado = null;
		String sqlSearch = "SELECT reposta FROM dbprojeto.tblRespostas where pergunta = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);){
				stm.setString(1,pergunta.getPalavraChave());
				
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
	
	public ArrayList<Resposta> carregaPalChave() {
		Resposta resposta;
		ArrayList<Resposta> lista_pal_chave = new ArrayList<Resposta>();
		String sqlSearch = "SELECT palavraChave,resposta FROM dbprojeto.tblPalavraChave";
		//try
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);){				
			try(ResultSet rs = stm.executeQuery();){
				while(rs.next()) {
					resposta = new Resposta();
					resposta.setIdPalavraChave(rs.getInt("idPalavraChave"));
					resposta.setPalavraChave(rs.getString("palavraChave"));
					resposta.setResposta(rs.getString("resposta"));
					lista_pal_chave.add(resposta);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return lista_pal_chave;
	}

	public void criarPergunta(Pergunta pergunta) {
		// TODO Auto-generated method stub
		
	}
}

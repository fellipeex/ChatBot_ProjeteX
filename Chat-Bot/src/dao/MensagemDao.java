package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;

import model.Pergunta;
import model.Resposta;
import model.Usuario;

public class MensagemDao {

	public void criarResposta(Resposta resposta, Usuario usuario) {
		LocalDate localDate = LocalDate.now();

		String sqlInsert = "INSERT INTO tblMensagens (tblMensagenResposta,tblMensagensData,tblMensagensUsuario,tblMensagensPalChave) VALUES (?,?,?,?)";
		try (Connection conn = ConnectionFactory.obtemConexao();

				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, resposta.getResposta());
			stm.setString(2, localDate.toString());
			stm.setString(3, usuario.getNome());
			stm.setString(4, resposta.getPalavraChave());
			stm.execute();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void criarResposta1(Resposta resposta) {
		String sqlInsert = "INSERT INTO tblRespostas (pegunta) VALUES (?)";

		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setInt(1, resposta.getIdRespostas());
			stm.execute();

			String sqlQuery = "SELECT LAST_INSERT_ID()";
			try (PreparedStatement stm2 = conn.prepareStatement(sqlQuery); ResultSet rs = stm2.executeQuery();) {
				if (rs.next()) {
					resposta.setIdPergunta(rs.getInt(1));
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// retorna uma pergunta do sistema para o usuario
	public String buscarPergunta(Resposta resposta) {
		String resultado = null;
		String sqlSearch = "SELECT reposta FROM dbprojeto.tblRespostas where pergunta = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);) {
			stm.setString(1, resposta.getPalavraChave());

			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					resultado = rs.getString("pergunta");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return resultado;
	}

	public String respondePergunta(Pergunta pergunta) {
		String resultado = null;
		String sqlSearch = "SELECT reposta FROM dbprojeto.tblNovasRespostas where pergunta = ?";
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);) {
			stm.setString(1, pergunta.getPalavraChave());

			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					resultado = rs.getString("pergunta");
				}
			} catch (SQLException e) {
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
		String sqlSearch = "SELECT idtblMensagens,tblMensagensPalChave,tblMensagenResposta FROM dbprojeto.tblMensagens";
		// try
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSearch);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					resposta = new Resposta();
					resposta.setIdPalavraChave(rs.getInt("idtblMensagens"));
					resposta.setPalavraChave(rs.getString("tblMensagensPalChave"));
					resposta.setResposta(rs.getString("tblMensagenResposta"));
					lista_pal_chave.add(resposta);
				}
			} catch (SQLException e) {
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

	public void criarResposta(String resposta) {
		// TODO Auto-generated method stub

	}
}

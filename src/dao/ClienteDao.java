package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.Cliente;

public class ClienteDao {
	public int criar(Cliente cliente) {
		String sqlInsert = "INSERT INTO cliente(nome, pupulacao, area VALUES (?,?,?)";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);){
				stm.setString(1,cliente.getNome());
				stm.setDouble(2,cliente.getSenha());
				stm.setInt(3, cliente.getPopu());
				stm.execute();
				
				String sqlQuery = "SELECT LAST_INSERT_ID()";
				try(PreparedStatement stm2 = conn.prepareStatement(sqlQuery);
						ResultSet rs = stm2.executeQuery();){
					if (rs.next()) {
						cliente.setId(rs.getInt(1));
			}		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	} catch(SQLException e) {
		e.printStackTrace();
	}
	return cliente.getId();
  }
	
	public void atualizar(cliente cliente) {
		String sqlUpdate = "UPDATE cliente SET nome=?, area=?,populacao = ?";
		
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);){
				stm.setString(1, cliente.getNome());
				stm.setDouble(2, cliente.getArea());
				stm.setInt(3, cliente.getPopu());
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void excluir(int id){
		String sqlDelete = "DELETE FROM cliente WHERE id = ?";
		
		try(Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);){
			stm.setInt(1, id);
			stm.execute();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public cliente carregar(int id) {
		cliente cliente = new cliente();
		cliente.setId(id);
		String sqlSelect = "SELECT nome, area, populacao FROM cliente WHERE cliente.id = ?";
		
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);){
			stm.setInt(1, cliente.getId());
			try(ResultSet rs = stm.executeQuery();){
				if (rs.next()) {
					cliente.setNome(rs.getString("nome"));
					cliente.setArea(Double.parseDouble(rs.getString("area")));
					cliente.setPopu(Integer.parseInt(rs.getString("populacao")));
				}else {
					cliente.setId(-1);
					cliente.setNome(null);
					cliente.setPopu(0);
					cliente.setArea(0);
				}
			}catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		return cliente;
	}
}
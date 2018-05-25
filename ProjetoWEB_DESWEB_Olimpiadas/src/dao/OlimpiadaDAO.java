package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.Modalidade;
import model.Olimpiada;
import model.Pais;

public class OlimpiadaDAO {
	public void criar(Olimpiada olim) {
		String sqlInsert = "INSERT INTO olimpiada(ouro, prata, bronze) VALUES (?, ?, ?)";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlInsert);) {
			stm.setString(1, olim.getNome());
			stm.setString(2, olim.getTipo());
			stm.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void atualizar(Olimpiada olim) {
		String sqlUpdate = "UPDATE olimpiada SET ouro=?, prata=?, bronze=? WHERE id=?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlUpdate);) {
			stm.setString(1, olim.getNome());
			stm.setString(2, olim.getTipo());
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void excluir(int id) {
		String sqlDelete = "DELETE FROM pais WHERE id = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlDelete);) {
			stm.setInt(1, id);
			stm.execute();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public Olimpiada carregar(int id) {
		Olimpiada olim = new Olimpiada();
		Pais pais = new Pais();
		Modalidade mod = new Modalidade();
		
		mod.setId(id);
		pais.setId(id);
		String sqlSelect = "SELECT ouro, prata, bronze FROM olimpiada WHERE olimpiada.idAno = ? and olimpiada.idModalidade = ? and olimpiada.idPais = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			stm.setInt(1, pais.getId());
			stm.setInt(2, mod.getId());
			try (ResultSet rs = stm.executeQuery();) {
				if (rs.next()) {
					olim.setNome(rs.getString("nome"));
					olim.setTipo(rs.getString("tipo"));
				} else {
					pais.setId(-1);
					olim.setNome(null);
					olim.setTipo(null);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return olim;
	}
	
	public ArrayList<Modalidade> listarOlimpiada() {
		Olimpiada olim;
		Modalidade modal;
		Pais pais;
		ArrayList<Modalidade> lista = new ArrayList<>();
		String sqlSelect = "select olimpiada.ouro, olimpiada.prata, olimpiada.bronze, pais.nome, modalidade.nome, ano.ano from olimpiada "
				+ "join pais on pais.id = olimpiada.pais_id join modalidade on modalidade.id = modalidade_id join ano on ano = ano_ano where ano = ?";
		// usando o try with resources do Java 7, que fecha o que abriu
		try (Connection conn = ConnectionFactory.obtemConexao();
				PreparedStatement stm = conn.prepareStatement(sqlSelect);) {
			try (ResultSet rs = stm.executeQuery();) {
				while (rs.next()) {
					modal = new Modalidade();
					modal.setNome(rs.getString("nome"));
					modal.setOuro(rs.getString("ouro"));
					modal.setPrata(rs.getString("prata"));
					modal.setBronze(rs.getString("bronze"));
					lista.add(modal);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} catch (SQLException e1) {
			System.out.print(e1.getStackTrace());
		}
		return lista;
	}
	
}

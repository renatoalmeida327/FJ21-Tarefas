package br.com.tarefas.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import br.com.tarefas.ConnectionFactory;
import br.com.tarefas.modelo.Usuario;

public class JdbcUsuarioDao {

	private Connection connection;
	
	public JdbcUsuarioDao() {
	
		try {
			connection = new ConnectionFactory().getConnection();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
	public boolean existeUsuario(Usuario usuario) {
		
		if(usuario == null) {
			throw new IllegalArgumentException("Usuário não deve ser nulo!");
		}
		
		try {
			
			String sql = "select * from usuarios where login = ? and senha = ?";
			PreparedStatement stmt = this.connection.prepareStatement(sql);
			stmt.setString(1, usuario.getLogin());
			stmt.setString(2, usuario.getSenha());
			ResultSet rs = stmt.executeQuery();
			
			boolean encontrado = rs.next();
			
			rs.close();
			stmt.close();
			
			return encontrado;
			
		} catch(SQLException e) {
			throw new RuntimeException(e);
		}
	}
	
}

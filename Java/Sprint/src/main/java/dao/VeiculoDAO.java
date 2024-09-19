package dao;

import model.Veiculo;
import db.BancoDados;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class VeiculoDAO {

    public void insert(Veiculo veiculo) throws SQLException {
        String sql = "INSERT INTO veiculos (placa, modelo, ano) VALUES (?, ?, ?)";
        try (Connection connection = BancoDados.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, veiculo.getPlaca());
            statement.setString(2, veiculo.getModelo());
            statement.setString(3, veiculo.getAno());
            statement.executeUpdate();
        }
    }

    public Veiculo findByPlaca(String placa) throws SQLException {
        String sql = "SELECT * FROM veiculos WHERE placa = ?";
        try (Connection connection = BancoDados.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, placa);
            ResultSet resultSet = statement.executeQuery();
            if (resultSet.next()) {
                return new Veiculo(
                        resultSet.getString("placa"),
                        resultSet.getString("modelo"),
                        resultSet.getString("ano")
                );
            } else {
                return null;
            }
        }
    }

    public void update(Veiculo veiculo) throws SQLException {
        String sql = "UPDATE veiculos SET modelo = ?, ano = ? WHERE placa = ?";
        try (Connection connection = BancoDados.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, veiculo.getModelo());
            statement.setString(2, veiculo.getAno());
            statement.setString(3, veiculo.getPlaca());
            statement.executeUpdate();
        }
    }

    public void delete(String placa) throws SQLException {
        String sql = "DELETE FROM veiculos WHERE placa = ?";
        try (Connection connection = BancoDados.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {
            statement.setString(1, placa);
            statement.executeUpdate();
        }
    }
}

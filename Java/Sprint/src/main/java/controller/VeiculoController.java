package controller;

import dao.VeiculoDAO;
import model.Veiculo;

import java.sql.SQLException;

public class VeiculoController {

    private VeiculoDAO veiculoDAO;

    public VeiculoController() {
        this.veiculoDAO = new VeiculoDAO();
    }

    public void adicionarVeiculo(Veiculo veiculo) throws SQLException {
        if (veiculo.isPlacaValida()) {
            veiculoDAO.insert(veiculo);
        } else {
            throw new IllegalArgumentException("Placa inválida");
        }
    }

    public Veiculo buscarVeiculo(String placa) throws SQLException {
        return veiculoDAO.findByPlaca(placa);
    }

    public void atualizarVeiculo(Veiculo veiculo) throws SQLException {
        veiculoDAO.update(veiculo);
    }

    public void removerVeiculo(String placa) throws SQLException {
        veiculoDAO.delete(placa);
    }
}

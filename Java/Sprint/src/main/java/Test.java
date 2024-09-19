import controller.VeiculoController;
import model.Veiculo;

import java.sql.SQLException;

public class Test {

    public static void main(String[] args) {
        VeiculoController veiculoController = new VeiculoController();

        try {
            Veiculo veiculo = new Veiculo("XYZ-1234", "Fusca", "1975");
            veiculoController.adicionarVeiculo(veiculo);

            Veiculo veiculoBuscado = veiculoController.buscarVeiculo("XYZ-1234");
            System.out.println("Veículo encontrado: " + veiculoBuscado);

            veiculo.setAno("1976");
            veiculoController.atualizarVeiculo(veiculo);

            veiculoBuscado = veiculoController.buscarVeiculo("XYZ-1234");
            System.out.println("Veículo atualizado: " + veiculoBuscado);

            veiculoController.removerVeiculo("XYZ-1234");
            veiculoBuscado = veiculoController.buscarVeiculo("XYZ-1234");
            System.out.println("Veículo após remoção: " + veiculoBuscado);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
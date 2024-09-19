import java.util.ArrayList;
import java.util.List;

public class Servicos {
    private List<String> servicosDisponiveis;

    public Servicos() {
        this.servicosDisponiveis = new ArrayList<>();
    }

    public void adicionarServico(String servico) {
        servicosDisponiveis.add(servico);
    }

    public void removerServico(String servico) {
        servicosDisponiveis.remove(servico);
    }

    public List<String> getServicosDisponiveis() {
        return servicosDisponiveis;
    }

    @Override
    public String toString() {
        return "Serviços disponíveis: " + servicosDisponiveis;
    }
}

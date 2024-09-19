public class Ocorrencia {
    private String protocolo;
    private String descricao;
    private double valor;

    public Ocorrencia(String protocolo, String descricao, double valor) {
        this.protocolo = protocolo;
        this.descricao = descricao;
        this.valor = valor;
    }

    public String getProtocolo() {
        return protocolo;
    }

    public void setProtocolo(String protocolo) {
        this.protocolo = protocolo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    @Override
    public String toString() {
        return "Ocorrência [protocolo=" + protocolo + ", descrição=" + descricao + ", valor=" + valor + "]";
    }
}

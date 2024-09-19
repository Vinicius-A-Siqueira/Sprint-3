package model;

public class Veiculo {
    private String placa;
    private String modelo;
    private String ano;

    public Veiculo(String placa, String modelo, String ano) {
        this.placa = placa;
        this.modelo = modelo;
        this.ano = ano;
    }

    // Getters e Setters
    public String getPlaca() { return placa; }
    public void setPlaca(String placa) { this.placa = placa; }
    public String getModelo() { return modelo; }
    public void setModelo(String modelo) { this.modelo = modelo; }
    public String getAno() { return ano; }
    public void setAno(String ano) { this.ano = ano; }

    // Regras de Negócio
    public boolean isPlacaValida() {
        return placa != null && placa.matches("[A-Z]{3}-\\d{4}");
    }

    @Override
    public String toString() {
        return "Veículo [placa=" + placa + ", modelo=" + modelo + ", ano=" + ano + "]";
    }
}

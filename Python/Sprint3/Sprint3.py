import sys
 
carros = [
    {"Modelo": "BMW Serie 5", "Ano": 2014, "Valor de Mercado": "R$ 85.456"},
    {"Modelo": "Mercedes Classe C", "Ano": 2020, "Valor de Mercado": "R$ 232.676,85"},
    {"Modelo": "Ford Focus", "Ano": 2016, "Valor de Mercado": "R$ 61.040"},
    {"Modelo": "Ford Fiesta", "Ano": 2017, "Valor de Mercado": "R$ 91.560"},
    {"Modelo": "Hyundai i20", "Ano": 2017, "Valor de Mercado": "R$ 61.032,37"},
    {"Modelo": "Mercedes SLK", "Ano": 2005, "Valor de Mercado": "R$ 39.676"},
    {"Modelo": "Skoda Octavia", "Ano": 2017, "Valor de Mercado": "R$ 80.496,50"},
    {"Modelo": "Toyota GT86", "Ano": 2016, "Valor de Mercado": "R$ 122.080"},
    {"Modelo": "Toyota Yaris", "Ano": 2019, "Valor de Mercado": "R$ 106.820"},
    {"Modelo": "C'hevrolet Corsa", "Ano": 2018, "Valor de Mercado": "R$ 60.162,55"}
]
 
def exibir_carros(carros):
 
    if not carros:
        print("Nenhum carro registrado.")
        return
    for i, carro in enumerate(carros):
        print(f"{i + 1}. Modelo: {carro['Modelo']}, Ano: {carro['Ano']}, Valor de Mercado: {carro['Valor de Mercado']}")
 
def adicionar_carro(carros):
 
    try:
        modelo = input("Digite o modelo do carro: ").strip()
        ano = int(input("Digite o ano do carro: "))
        valor = input("Digite o valor de mercado do carro: ").strip()
 
        if ano <= 0:
            raise ValueError("Ano invalido.")
        if not valor.startswith("R$ "):
            raise ValueError("Valor deve comecar com 'R$ '.")
 
        carros.append({"Modelo": modelo, "Ano": ano, "Valor de Mercado": valor})
        print("Carro adicionado com sucesso.")
    except ValueError as e:
        print(f"Erro: {e}")
 
def atualizar_carro(carros):
 
    exibir_carros(carros)
    try:
        index = int(input("Digite o numero do carro a ser atualizado: ")) - 1
        if index < 0 or index >= len(carros):
            raise IndexError("Carro nao encontrado.")
 
        modelo = input("Digite o novo modelo do carro: ").strip()
        ano = int(input("Digite o novo ano do carro: "))
        valor = input("Digite o novo valor de mercado do carro: ").strip()
 
        if ano <= 0:
            raise ValueError("Ano invalido.")
        if not valor.startswith("R$ "):
            raise ValueError("Valor deve comecar com 'R$ '.")
 
        carros[index] = {"Modelo": modelo, "Ano": ano, "Valor de Mercado": valor}
        print("Carro atualizado com sucesso.")
    except (ValueError, IndexError) as e:
        print(f"Erro: {e}")
 
def excluir_carro(carros):
    exibir_carros(carros)
    try:
        index = int(input("Digite o numero do carro a ser excluido: ")) - 1
        if index < 0 or index >= len(carros):
            raise IndexError("Carro nao encontrado.")
 
        del carros[index]
        print("Carro excluido com sucesso.")
    except (ValueError, IndexError) as e:
        print(f"Erro: {e}")
 
def menu():
    while True:
        print("\nMenu Principal:")
        print("1. Exibir Carros")
        print("2. Adicionar Carro")
        print("3. Atualizar Carro")
        print("4. Excluir Carro")
        print("5. Sair")
 
        escolha = input("Escolha uma opcao (1-5): ").strip()
 
        if escolha == "1":
            exibir_carros(carros)
        elif escolha == "2":
            adicionar_carro(carros)
        elif escolha == "3":
            atualizar_carro(carros)
        elif escolha == "4":
            excluir_carro(carros)
        elif escolha == "5":
            print("Saindo...")
            sys.exit()
        else:
            print("Opcao invalida. Tente novamente.")
 
if __name__ == "__main__":
    menu()

import React from 'react';
import './ClientAreaPage.css';

const ClientAreaPage: React.FC = () => {
  return (
    <div className="client-area">
      <h1>Cadastro de Veículo</h1>
      <form action="cadastro.php" method="POST">
        <label htmlFor="marca">Marca:</label>
        <input type="text" id="marca" name="marca" required />

        <label htmlFor="modelo">Modelo:</label>
        <input type="text" id="modelo" name="modelo" required />

        <label htmlFor="ano">Ano:</label>
        <input type="number" id="ano" name="ano" min="1900" max="2099" required />

        <label htmlFor="chassi">Chassi:</label>
        <input type="number" id="chassi" name="chassi" required />

        <label htmlFor="placa">Placa:</label>
        <input type="text" id="placa" name="placa" pattern="[A-Za-z]{3}-[0-9]{4}" required />

        <input type="submit" value="Cadastrar Veículo" />
      </form>
    </div>
  );
};

export default ClientAreaPage;

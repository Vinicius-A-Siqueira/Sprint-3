
import React from 'react';
import { Link } from 'react-router-dom';
import './Header.css'; 

const Header: React.FC = () => {
  return (
    <header className="header">
      <img src="/assets/imagens/porto-seguro-vector-logo.png" alt="Logo da Porto Seguro" className="logo" />
      <nav>
        <Link to="/" className="menu">Home</Link>
        <Link to="/client-area" className="menu">Área do Cliente</Link>
        <Link to="/services" className="menu">Serviços</Link>
      </nav>
      <div className="icons">
        <img src="/assets/imagens/Lupa.png" alt="Buscar" className="icon" />
        <img src="/assets/imagens/Usuario.png" alt="Usuário" className="icon" />
      </div>
    </header>
  );
};

export default Header;


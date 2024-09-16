
import React from 'react';
import './ServicesPage.css';

const ServicesPage: React.FC = () => {
  return (
    <div>
      <header className="services-header">
        <h1>Porto Seguro Veículos</h1>
      </header>
      <section className="services">
        <div className="service">
          <img src="/assets/imagens/Seguro_carro.png" alt="Seguro de Carro" />
          <h2>Seguro de Carro</h2>
          <p>Proteja seu veículo com nosso seguro automotivo abrangente.</p>
        </div>
        <div className="service">
          <img src="/assets/imagens/colisao_carro.png" alt="Cobertura de Colisão" />
          <h2>Cobertura de Colisão</h2>
          <p>Fique protegido contra danos causados por colisões.</p>
        </div>
        <div className="service">
          <img src="/assets/imagens/roubo_carro.png" alt="Cobertura contra Roubo" />
          <h2>Cobertura contra Roubo</h2>
          <p>Garanta tranquilidade com nossa cobertura contra roubo e furto.</p>
        </div>
      </section>
      <footer className="services-footer">
        <p>&copy; Porto Seguro</p>
      </footer>
    </div>
  );
};

export default ServicesPage;

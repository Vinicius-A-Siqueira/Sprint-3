import React from 'react';
import './MainPage.css';

const MainPage: React.FC = () => {
  return (
    <div>
      <h1>Veja mais informações</h1>
      <div className="info-section blue-background">
        <div className="info-text">
          <h1>Atenção Segurado Saúde</h1>
          <p>
            Quando se trata de proteger o que mais importa, não deixe nada ao acaso. Na Porto Seguro, nossa prioridade é garantir que você e seus bens estejam sempre seguros, para que você possa viver com tranquilidade e confiança. Junte-se a milhões de clientes satisfeitos que confiam na Porto Seguro para proteger o que mais amam. Descubra por que somos a escolha número um em segurança.
          </p>
        </div>
        <img src="/assets/imagens/imagem1.png" alt="Primeira Imagem" className="info-image" />
      </div>
      <div className="info-section">
        <img src="/assets/imagens/imagem2.png" alt="Segunda Imagem" className="info-image" />
        <p>
          App Porto Seguro Saúde: Reembolso e muito mais. Você que é cliente Porto Seguro Saúde tem um App de plantão para resolver as questões do dia a dia! Solicite seus reembolsos de forma mais fácil, consulte a rede referenciada, acesse sua carteirinha digital e muito mais!
        </p>
      </div>
      <div className="info-section">
        <div className="info-text">
          <p>Sua satisfação é nossa prioridade máxima!</p>
          <p>Na Porto Seguro, nosso propósito vai além de oferecer proteção e segurança aos segurados. Buscamos transmitir confiança em todas as nossas ações.</p>
        </div>
        <img src="/assets/imagens/chatbot.png" alt="Chatbot" className="info-image" />
      </div>
    </div>
  );
};

export default MainPage;

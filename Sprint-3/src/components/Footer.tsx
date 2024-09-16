
import React from 'react';
import './Footer.css'; 

const Footer: React.FC = () => {
  return (
    <footer className="footer">
      <div className="social-links">
        <a href="https://www.facebook.com/?locale=pt_BR" target="_blank" rel="noopener noreferrer">
          <img src="/assets/imagens/face.png" alt="Facebook" className="social-icon" />
        </a>
        <a href="https://www.instagram.com/" target="_blank" rel="noopener noreferrer">
          <img src="/assets/imagens/insta.png" alt="Instagram" className="social-icon" />
        </a>
        <a href="https://br.linkedin.com/" target="_blank" rel="noopener noreferrer">
          <img src="/assets/imagens/linkdin.png" alt="LinkedIn" className="social-icon" />
        </a>
        <a href="https://twitter.com/?lang=pt-br" target="_blank" rel="noopener noreferrer">
          <img src="/assets/imagens/twitter.png" alt="Twitter" className="social-icon" />
        </a>
        <a href="https://www.youtube.com/" target="_blank" rel="noopener noreferrer">
          <img src="/assets/imagens/youtube.png" alt="YouTube" className="social-icon" />
        </a>
      </div>
      <div className="app-download">
        <img src="/assets/imagens/applestore.png" alt="App Store" className="store-icon" />
        <img src="/assets/imagens/googlestore.png" alt="Google Store" className="store-icon" />
      </div>
      <img src="/assets/imagens/Porto-logo2.png" alt="Logo Porto" className="footer-logo" />
    </footer>
  );
};

export default Footer;

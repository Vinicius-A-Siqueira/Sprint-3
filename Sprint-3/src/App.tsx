import React from 'react'; 
import { BrowserRouter as Router } from 'react-router-dom';
import Header from './components/Header';
import Footer from './components/Footer';
import AppRoutes from './Routes';
import './styles/style.css';

const App: React.FC = () => {
  return (
    <Router>
      <Header />
      <main>
        <AppRoutes /> {}
      </main>
      <Footer />
    </Router>
  );
};

export default App;

import React from 'react';
import { createBrowserRouter, RouterProvider } from 'react-router-dom';
import MainPage from './components/MainPage';
import ServicesPage from './components/ServicesPage';
import ClientAreaPage from './components/ClientAreaPage';

const router = createBrowserRouter([
  {
    path: "/",
    element: <MainPage />,
  },
  {
    path: "/services",
    element: <ServicesPage />,
  },
  {
    path: "/client-area",
    element: <ClientAreaPage />,
  },
]);

const AppRoutes: React.FC = () => {
  return <RouterProvider router={router} />;
};

export default AppRoutes;

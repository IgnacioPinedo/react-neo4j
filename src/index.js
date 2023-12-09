import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import { Neo4jProvider, createDriver } from 'use-neo4j';

const driver = createDriver(
  'neo4j+s',
  process.env.REACT_APP_NEO4J_HOST,
  7687,
  process.env.REACT_APP_NEO4J_USERNAME,
  process.env.REACT_APP_NEO4J_PASSWORD,
);

const root = ReactDOM.createRoot(document.getElementById('root'));

root.render(
  <React.StrictMode>
    <Neo4jProvider driver={driver}>
      <App />
    </Neo4jProvider>
  </React.StrictMode>,
);

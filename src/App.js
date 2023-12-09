import './App.css';
import Cypher from './Cypher';
import { useState } from 'react';

function App() {
  const [query, setQuery] = useState('MATCH (d:Driver {Name:"Donald"}) RETURN d');

  return (
    <div className='App'>
      <header className='App-header'>
        <input type='text' value={query} onChange={(e) => setQuery(e.target.value)} />
        <Cypher query={query} />
      </header>
    </div>
  );
}

export default App;

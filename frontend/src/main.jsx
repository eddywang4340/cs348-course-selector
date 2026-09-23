import { StrictMode, useState } from 'react';
import { createRoot } from 'react-dom/client';
import './styles.css';

function App() {
  const [message, setMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  function handleClick() {
    setIsLoading(true);
    void fetch('/api/hello').catch(() => {});
    setMessage('Request sent. The backend is not connected yet.');
    setIsLoading(false);
  }

  return (
    <main className="page-shell">
      <section className="welcome-panel" aria-labelledby="page-title">
        <p className="eyebrow">CS 348</p>
        <h1 id="page-title">Course selector</h1>
        <p className="intro">A small React frontend to get things started.</p>
        <button type="button" onClick={handleClick} disabled={isLoading}>
          {isLoading ? 'Loading...' : 'Send request'}
        </button>
        <p className="status" role="status" aria-live="polite">
          {message}
        </p>
      </section>
    </main>
  );
}

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
);

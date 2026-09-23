import { StrictMode, useState } from 'react';
import { createRoot } from 'react-dom/client';
import './styles.css';

function App() {
  const [message, setMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  async function handleClick() {
    setIsLoading(true);

    try {
      const response = await fetch('/api/hello');

      if (!response.ok) {
        throw new Error(`Request failed with status ${response.status}`);
      }

      const data = await response.json();
      setMessage(data.message);
    } catch {
      setMessage('Could not read a response from the backend.');
    } finally {
      setIsLoading(false);
    }
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

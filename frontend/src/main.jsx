import { StrictMode, useState } from 'react';
import { createRoot } from 'react-dom/client';
import './styles.css';

function App() {
  const [subject, setSubject] = useState('CS');
  const [catalogNumber, setCatalogNumber] = useState('348');
  const [course, setCourse] = useState(null);
  const [message, setMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  async function handleSearch(event) {
    event.preventDefault();
    setIsLoading(true);
    setMessage('');
    setCourse(null);

    const params = new URLSearchParams({
      subject: subject.trim(),
      catalog_number: catalogNumber.trim(),
    });

    try {
      const response = await fetch(`/api/courses/search?${params}`);

      if (response.status === 404) {
        setMessage('Course not found');
        return;
      }

      if (!response.ok) {
        throw new Error(`Request failed with status ${response.status}`);
      }

      const data = await response.json();
      setCourse(data.course);
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
        <h1 id="page-title">Course search</h1>
        <p className="intro">Look up a course by subject and catalog number.</p>
        <form className="search-form" onSubmit={handleSearch}>
          <label>
            Subject
            <input
              value={subject}
              onChange={(event) => setSubject(event.target.value)}
              autoCapitalize="characters"
              required
            />
          </label>
          <label>
            Catalog number
            <input
              value={catalogNumber}
              onChange={(event) => setCatalogNumber(event.target.value)}
              required
            />
          </label>
          <button type="submit" disabled={isLoading}>
            {isLoading ? 'Searching...' : 'Search'}
          </button>
        </form>
        <p className="status" role="status" aria-live="polite">
          {message}
        </p>
        {course && (
          <article className="course-result">
            <h2>
              {course.subject} {course.catalog_number}
            </h2>
            <p className="course-title">{course.title}</p>
            <dl>
              <div>
                <dt>Description</dt>
                <dd>{course.description ?? 'None'}</dd>
              </div>
              <div>
                <dt>Units</dt>
                <dd>{Number(course.units).toFixed(2)}</dd>
              </div>
              <div>
                <dt>Minimum term</dt>
                <dd>{course.min_term ?? 'None'}</dd>
              </div>
            </dl>
          </article>
        )}
      </section>
    </main>
  );
}

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
);

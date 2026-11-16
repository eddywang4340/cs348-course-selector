import { StrictMode, useEffect, useState } from 'react';
import { createRoot } from 'react-dom/client';
import './styles.css';

// Feature R6: search a course by subject and catalog number.
function CourseSearchFeature() {
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
    <section className="feature" aria-labelledby="feature-1">
      <p className="eyebrow">Feature 1 · R6</p>
      <h2 id="feature-1" className="feature-title">Search a course</h2>
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
          <h3>
            {course.subject} {course.catalog_number}
          </h3>
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
  );
}

// Feature R7: fetch the prerequisites and anti-requisites of a course.
// Quick-pick presets, each one exercising a test case from the report.
const REQUISITE_PRESETS = [
  { subject: 'CS', catalogNumber: '246', hint: 'has prereqs and anti-reqs' },
  { subject: 'CS', catalogNumber: '246E', hint: 'anti-req stored on the other side' },
  { subject: 'CS', catalogNumber: '349', hint: 'alternative prereqs' },
  { subject: 'COMMST', catalogNumber: '223', hint: 'no requisites' },
  { subject: 'CS', catalogNumber: '999', hint: 'does not exist' },
];

function CourseList({ courses, emptyText }) {
  if (courses.length === 0) {
    return <p className="empty">{emptyText}</p>;
  }
  return (
    <ul className="course-list">
      {courses.map((c) => (
        <li key={c.course_id}>
          <span className="code">
            {c.subject} {c.catalog_number}
          </span>
          {c.title}
        </li>
      ))}
    </ul>
  );
}

function RequisitesFeature() {
  const [subject, setSubject] = useState('CS');
  const [catalogNumber, setCatalogNumber] = useState('246');
  const [result, setResult] = useState(null);
  const [message, setMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  async function fetchRequisites(subjectValue, catalogValue) {
    setIsLoading(true);
    setMessage('');
    setResult(null);

    const params = new URLSearchParams({
      subject: subjectValue.trim(),
      catalog_number: catalogValue.trim(),
    });

    try {
      const response = await fetch(`/api/courses/requisites?${params}`);

      if (response.status === 404) {
        setMessage('Course not found');
        return;
      }

      if (!response.ok) {
        throw new Error(`Request failed with status ${response.status}`);
      }

      setResult(await response.json());
    } catch {
      setMessage('Could not read a response from the backend.');
    } finally {
      setIsLoading(false);
    }
  }

  function handleSubmit(event) {
    event.preventDefault();
    fetchRequisites(subject, catalogNumber);
  }

  function handlePreset(preset) {
    setSubject(preset.subject);
    setCatalogNumber(preset.catalogNumber);
    fetchRequisites(preset.subject, preset.catalogNumber);
  }

  return (
    <section className="feature" aria-labelledby="feature-2">
      <p className="eyebrow">Feature 2 · R7</p>
      <h2 id="feature-2" className="feature-title">Prerequisites &amp; anti-requisites</h2>
      <form className="search-form" onSubmit={handleSubmit}>
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
          {isLoading ? 'Loading...' : 'Fetch requisites'}
        </button>
      </form>
      <div className="presets">
        <span>Try:</span>
        {REQUISITE_PRESETS.map((preset) => (
          <button
            key={`${preset.subject}${preset.catalogNumber}`}
            type="button"
            className="preset"
            title={preset.hint}
            disabled={isLoading}
            onClick={() => handlePreset(preset)}
          >
            {preset.subject} {preset.catalogNumber}
          </button>
        ))}
      </div>
      <p className="status" role="status" aria-live="polite">
        {message}
      </p>
      {result && (
        <article className="course-result">
          <h3>
            {result.course.subject} {result.course.catalog_number}
          </h3>
          <p className="course-title">{result.course.title}</p>
          <dl>
            <div>
              <dt>Prerequisites</dt>
              <dd>
                <CourseList courses={result.prereqs} emptyText="None" />
              </dd>
            </div>
            <div>
              <dt>Anti-requisites</dt>
              <dd>
                <CourseList courses={result.antireqs} emptyText="No anti-requisites" />
              </dd>
            </div>
          </dl>
        </article>
      )}
    </section>
  );
}

// Feature R8: mark a course on a user's checklist as completed.
// The two users in the database, hard-coded for the demo.
const USERS = [
  { id: 1, username: 'y84huang' },
  { id: 2, username: 'j45smith' },
];

// Quick-pick presets, each one exercising a test case from the report.
const COMPLETE_PRESETS = [
  { userId: 1, subject: 'CS', catalogNumber: '349', hint: 'planned -> completed' },
  { userId: 1, subject: 'CS', catalogNumber: '350', hint: 'already completed' },
  { userId: 2, subject: 'CS', catalogNumber: '136', hint: 'in progress -> completed' },
  { userId: 2, subject: 'CS', catalogNumber: '348', hint: 'not on checklist' },
];

const STATUS_LABELS = {
  planned: 'Planned',
  in_progress: 'In progress',
  completed: 'Completed',
};

function CompleteCourseFeature() {
  const [userId, setUserId] = useState(1);
  const [subject, setSubject] = useState('CS');
  const [catalogNumber, setCatalogNumber] = useState('349');
  const [checklist, setChecklist] = useState([]);
  const [highlight, setHighlight] = useState('');
  const [message, setMessage] = useState('');
  const [isLoading, setIsLoading] = useState(false);

  async function loadChecklist(id) {
    try {
      const response = await fetch(`/api/checklist?user_id=${id}`);
      if (!response.ok) {
        throw new Error(`Request failed with status ${response.status}`);
      }
      const data = await response.json();
      setChecklist(data.checklist);
    } catch {
      setMessage('Could not read a response from the backend.');
    }
  }

  useEffect(() => {
    loadChecklist(userId);
  }, [userId]);

  async function markCompleted(id, subjectValue, catalogValue) {
    setIsLoading(true);
    setMessage('');
    setHighlight(`${subjectValue.trim().toUpperCase()} ${catalogValue.trim().toUpperCase()}`);

    try {
      const response = await fetch('/api/checklist/complete', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          user_id: id,
          subject: subjectValue,
          catalog_number: catalogValue,
        }),
      });
      const data = await response.json();
      if (!response.ok && response.status !== 404) {
        throw new Error(`Request failed with status ${response.status}`);
      }
      setMessage(data.message);
      await loadChecklist(id);
    } catch {
      setMessage('Could not read a response from the backend.');
    } finally {
      setIsLoading(false);
    }
  }

  function handleSubmit(event) {
    event.preventDefault();
    markCompleted(userId, subject, catalogNumber);
  }

  function handlePreset(preset) {
    setUserId(preset.userId);
    setSubject(preset.subject);
    setCatalogNumber(preset.catalogNumber);
    markCompleted(preset.userId, preset.subject, preset.catalogNumber);
  }

  const username = USERS.find((user) => user.id === userId)?.username;

  return (
    <section className="feature" aria-labelledby="feature-3">
      <p className="eyebrow">Feature 3 · R8</p>
      <h2 id="feature-3" className="feature-title">Mark a checklist course as completed</h2>
      <form className="search-form" onSubmit={handleSubmit}>
        <label>
          User
          <select
            value={userId}
            onChange={(event) => {
              setUserId(Number(event.target.value));
              setMessage('');
              setHighlight('');
            }}
          >
            {USERS.map((user) => (
              <option key={user.id} value={user.id}>
                {user.username}
              </option>
            ))}
          </select>
        </label>
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
          {isLoading ? 'Saving...' : 'Mark completed'}
        </button>
      </form>
      <div className="presets">
        <span>Try:</span>
        {COMPLETE_PRESETS.map((preset) => (
          <button
            key={`${preset.userId}${preset.subject}${preset.catalogNumber}`}
            type="button"
            className="preset"
            title={preset.hint}
            disabled={isLoading}
            onClick={() => handlePreset(preset)}
          >
            {USERS.find((user) => user.id === preset.userId).username} · {preset.subject}{' '}
            {preset.catalogNumber}
          </button>
        ))}
      </div>
      <p className="status" role="status" aria-live="polite">
        {message}
      </p>
      <article className="course-result">
        <h3>
          {username}&apos;s checklist ({checklist.length} courses)
        </h3>
        <div className="checklist-scroll">
          <table className="checklist">
            <thead>
              <tr>
                <th>Course</th>
                <th>Title</th>
                <th>Status</th>
              </tr>
            </thead>
            <tbody>
              {checklist.map((row) => {
                const code = `${row.subject} ${row.catalog_number}`;
                return (
                  <tr key={row.course_id} className={code === highlight ? 'highlight' : ''}>
                    <td className="code">{code}</td>
                    <td>{row.title}</td>
                    <td>
                      <span className={`badge badge-${row.status}`}>
                        {STATUS_LABELS[row.status] ?? row.status}
                      </span>
                    </td>
                  </tr>
                );
              })}
            </tbody>
          </table>
        </div>
      </article>
    </section>
  );
}

function App() {
  return (
    <main className="page-shell">
      <section className="welcome-panel" aria-labelledby="page-title">
        <p className="eyebrow">CS 348</p>
        <h1 id="page-title">Course planner</h1>
        <p className="intro">Each row below demonstrates one feature against the database.</p>
        <CourseSearchFeature />
        <RequisitesFeature />
        <CompleteCourseFeature />
      </section>
    </main>
  );
}

createRoot(document.getElementById('root')).render(
  <StrictMode>
    <App />
  </StrictMode>,
);

import { useEffect } from 'react';
import { useWriteCypher } from 'use-neo4j';

function Cypher({ query }) {
  const { loading, records, run, error } = useWriteCypher(query);

  useEffect(() => {
    run();
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [query]);

  if (loading) {
    return <p>Loading...</p>;
  }

  if (error) {
    return <p>{JSON.stringify(error)}</p>;
  }

  if (!records) {
    return <p>No data</p>;
  }

  return (
    <>
      {/* <p>{JSON.stringify(records)}</p> */}
      {records && (
        <>
          {records.map((record) => (
            <ul>
              {record.keys.map((key, i) => (
                <li key={i}>
                  {key}: {JSON.stringify(record._fields[record._fieldLookup[key]])}
                </li>
              ))}
            </ul>
          ))}
        </>
      )}
    </>
  );
}

export default Cypher;

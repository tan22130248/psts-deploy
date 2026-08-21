-- Repair legacy test questions that lost ownership metadata after a test update.
-- Safe to run repeatedly: existing non-null question values are preserved.

SELECT COUNT(*) AS questions_to_repair
FROM test_questions q
JOIN tests t ON t.id = q.test_id
WHERE q.created_by IS NULL
   OR q.created_by_name IS NULL
   OR q.created_by_name = ''
   OR q.is_shared IS NULL
   OR q.created_at IS NULL;

UPDATE test_questions q
JOIN tests t ON t.id = q.test_id
SET q.created_by = COALESCE(q.created_by, t.created_by),
    q.created_by_name = COALESCE(NULLIF(q.created_by_name, ''), t.created_by_name),
    q.is_shared = COALESCE(q.is_shared, FALSE),
    q.created_at = COALESCE(q.created_at, t.created_at)
WHERE q.created_by IS NULL
   OR q.created_by_name IS NULL
   OR q.created_by_name = ''
   OR q.is_shared IS NULL

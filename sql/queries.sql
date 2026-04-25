-- ============================================================
-- queries.sql for TaskManager
-- Useful example queries for interacting with the database
-- ============================================================


-- ============================================================
-- 1. Get all tasks with user + category info
-- ============================================================
SELECT 
    t.task_id,
    t.title,
    t.description,
    t.due_date,
    t.status,
    u.username,
    c.category_name
FROM tasks t
JOIN users u ON t.user_id = u.user_id
JOIN categories c ON t.category_id = c.category_id
ORDER BY t.due_date;


-- ============================================================
-- 2. Get tasks for a specific user
-- ============================================================
SELECT 
    task_id,
    title,
    status,
    due_date
FROM tasks
WHERE user_id = 1
ORDER BY due_date;


-- ============================================================
-- 3. Get tasks by category
-- ============================================================
SELECT 
    task_id,
    title,
    status,
    due_date
FROM tasks
WHERE category_id = 3   -- urgent
ORDER BY due_date;


-- ============================================================
-- 4. Get overdue tasks
-- ============================================================
SELECT 
    task_id,
    title,
    due_date,
    status
FROM tasks
WHERE due_date < DATE('now')
ORDER BY due_date;


-- ============================================================
-- 5. Count tasks per user
-- ============================================================
SELECT 
    u.username,
    COUNT(t.task_id) AS task_count
FROM users u
LEFT JOIN tasks t ON u.user_id = t.user_id
GROUP BY u.user_id
ORDER BY task_count DESC;


-- ============================================================
-- 6. Count tasks per category
-- ============================================================
SELECT 
    c.category_name,
    COUNT(t.task_id) AS task_count
FROM categories c
LEFT JOIN tasks t ON c.category_id = t.category_id
GROUP BY c.category_id
ORDER BY task_count DESC;


-- ============================================================
-- 7. Insert a new task
-- ============================================================
INSERT INTO tasks (task_id, title, description, due_date, status, user_id, category_id)
VALUES (11, 'new task example', 'example description', '2026-05-10', 'pending', 1, 1);


-- ============================================================
-- 8. Update a task's status
-- ============================================================
UPDATE tasks
SET status = 'done'
WHERE task_id = 3;


-- ============================================================
-- 9. Delete a task
-- ============================================================
DELETE FROM tasks
WHERE task_id = 10;


-- ============================================================
-- 10. Search tasks by keyword
-- ============================================================
SELECT 
    task_id,
    title,
    description,
    status
FROM tasks
WHERE title LIKE '%project%' OR description LIKE '%project%';

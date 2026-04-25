-- ============================================================
-- Sample Data Inserts for TaskManager
-- ============================================================

-- -------------------------
-- Insert users for TaskManager
-- -------------------------
INSERT INTO users (user_id, username, email) VALUES
(1, 'john_doe', 'john@example.com'),
(2, 'sarah_smith', 'sarah@example.com'),
(3, 'mike_jones', 'mike@example.com');

-- -------------------------
-- Insert categories
-- -------------------------
INSERT INTO categories (category_id, category_name) VALUES
(1, 'work'),
(2, 'personal'),
(3, 'urgent'),
(4, 'shopping');

-- -------------------------
-- Insert tasks (10 rows)
-- -------------------------
INSERT INTO tasks (task_id, title, description, due_date, status, user_id, category_id) VALUES
(1, 'finish report', 'complete the quarterly financial report', '2026-05-01', 'pending', 1, 1),
(2, 'buy groceries', 'milk, eggs, bread, vegetables', '2026-04-26', 'pending', 1, 4),
(3, 'doctor appointment', 'annual physical checkup', '2026-05-03', 'scheduled', 2, 2),
(4, 'team meeting', 'weekly sync with development team', '2026-04-28', 'scheduled', 1, 1),
(5, 'pay bills', 'electric, water, internet', '2026-04-30', 'pending', 3, 2),
(6, 'fix bug #142', 'resolve login authentication issue', '2026-04-27', 'in_progress', 1, 1),
(7, 'birthday gift', 'buy a present for Sarah’s birthday', '2026-05-05', 'pending', 3, 4),
(8, 'car maintenance', 'oil change and tire rotation', '2026-05-02', 'pending', 2, 2),
(9, 'submit tax forms', 'file state and federal taxes', '2026-04-29', 'urgent', 1, 3),
(10, 'project planning', 'outline tasks for new project launch', '2026-05-04', 'in_progress', 2, 1);

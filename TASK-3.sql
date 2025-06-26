
use coursehub;
-- 1. Retrieve all columns from the trainer table
SELECT * FROM trainer;

-- 2. Get names of all learners with their email addresses
SELECT l_name, email FROM learner;

-- 3. Find trainers with rating greater than 4.5
SELECT * FROM trainer WHERE rating > 4.5;

-- 4. Display learners who scored between 70 and 90
SELECT * FROM learner WHERE score BETWEEN 70 AND 90;

-- 5. List courses that cost more than 60,000
SELECT * FROM course WHERE fees > 60000;

-- 6. Show courses in offline mode
SELECT * FROM course WHERE mode_of_learning = 'Offline';

-- 7. List learners assigned to a specific trainer (e.g., ID = 2)
SELECT * FROM learner WHERE trainer_id = 2;

-- 8. Fetch trainers whose expertise is either 'Python' or 'SQL'
SELECT * FROM trainer WHERE expertise IN ('Python', 'SQL');

-- 9. List learners whose names start with ‘A’
SELECT * FROM learner WHERE l_name LIKE 'A%';

-- 10. Display all trainers sorted by rating in descending order
SELECT * FROM trainer ORDER BY rating DESC;

-- 11. Show top 5 learners with the highest scores
SELECT * FROM learner ORDER BY score DESC LIMIT 5;

-- 12. Count how many learners are taking each course
SELECT course_id, COUNT(*) AS num_learners
FROM learner
GROUP BY course_id;

-- 13. Find distinct expertise areas of trainers
SELECT DISTINCT expertise FROM trainer;

-- 14. Show all learners with their course and trainer names (using JOIN)
SELECT l.l_name, c.c_name, t.t_name
FROM learner l
JOIN course c ON l.course_id = c.course_id
JOIN trainer t ON l.trainer_id = t.trainer_id;

-- 15. Get average rating of all trainers with more than 5 years of experience
SELECT AVG(rating) AS avg_rating
FROM trainer
WHERE YOE > 5;

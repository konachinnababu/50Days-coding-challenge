📊 Social Media Data Analysis (SQL Project)

📌 Project Overview

This project simulates a real-world social media platform database (ConnectHub) and analyzes user activity, posts, likes, comments, and friendships using SQL.

The goal is to derive meaningful insights using:

- JOINs
- Subqueries
- GROUP BY & HAVING
- Stored Procedures

---

🗂️ Database Schema

The project consists of the following tables:

- Users → Stores user details
- Posts → Stores posts created by users
- Likes → Tracks likes on posts
- Comments → Stores comments on posts
- Friendships → Stores user relationships

---

⚙️ Setup Instructions

1. Create Database

CREATE DATABASE social_media;
USE social_media;

2. Create Tables

(Create all tables using SQL schema)

3. Insert Data

Run the provided ".sql" file to insert sample data.

---

📈 Tasks & Solutions

✅ Task 1: Basic JOINs

1. Posts with Username

SELECT p.post_id, u.username, p.content
FROM Posts p
JOIN Users u ON p.user_id = u.user_id;

2. Comments with Username

SELECT c.comment_id, u.username, c.comment_text
FROM Comments c
JOIN Users u ON c.user_id = u.user_id;

---

✅ Task 2: Data Analysis

3. Top 3 Users with Most Posts

SELECT u.username, COUNT(p.post_id) AS total_posts
FROM Users u
JOIN Posts p ON u.user_id = p.user_id
GROUP BY u.username
ORDER BY total_posts DESC
LIMIT 3;

👉 Insight: Identifies most active users on platform.

---

4. Posts with Above Average Likes

SELECT post_id
FROM Likes
GROUP BY post_id
HAVING COUNT(*) > (
    SELECT AVG(like_count)
    FROM (
        SELECT COUNT(*) AS like_count
        FROM Likes
        GROUP BY post_id
    ) t
);

👉 Insight: Helps identify trending/viral posts.

---

5. Users Who Never Posted but Liked

SELECT DISTINCT u.username
FROM Users u
JOIN Likes l ON u.user_id = l.user_id
LEFT JOIN Posts p ON u.user_id = p.user_id
WHERE p.post_id IS NULL;

👉 Insight: Identifies passive users.

---

✅ Task 3: Relationships

6. Friends of a User (user_id = 3)

SELECT *
FROM Friendships
WHERE user_id1 = 3 OR user_id2 = 3;

---

7. Posts Liked by Friends

SELECT DISTINCT p.post_id
FROM Posts p
JOIN Likes l ON p.post_id = l.post_id
JOIN Friendships f 
ON l.user_id = f.user_id1 OR l.user_id = f.user_id2
WHERE f.user_id1 = 3 OR f.user_id2 = 3;

👉 Insight: Used in social media feeds (e.g., “Your friend liked this”).

---

✅ Task 4: Stored Procedure

User Activity Summary

DELIMITER $$

CREATE PROCEDURE GetUserActivity(IN uid INT)
BEGIN
    SELECT 
        (SELECT COUNT(*) FROM Posts WHERE user_id = uid) AS total_posts,
        (SELECT COUNT(*) FROM Likes WHERE user_id = uid) AS total_likes_given,
        (SELECT COUNT(*) 
         FROM Likes l
         JOIN Posts p ON l.post_id = p.post_id
         WHERE p.user_id = uid) AS likes_received,
        (SELECT COUNT(*) FROM Comments WHERE user_id = uid) AS total_comments;
END $$

DELIMITER ;

👉 Run:

CALL GetUserActivity(3);

---

✅ Task 5: Most Influential User

SELECT u.username,
       COUNT(DISTINCT l.like_id) + COUNT(DISTINCT c.comment_id) AS score
FROM Users u
LEFT JOIN Posts p ON u.user_id = p.user_id
LEFT JOIN Likes l ON p.post_id = l.post_id
LEFT JOIN Comments c ON p.post_id = c.post_id
GROUP BY u.username
ORDER BY score DESC
LIMIT 1;

👉 Insight: Identifies top influencer based on engagement.

---

📊 Key Learnings

- Writing efficient SQL queries using JOINs
- Using subqueries for complex conditions
- Performing real-world data analysis
- Creating stored procedures
- Converting raw data into business insights

---

🚀 Real-World Applications

- Social media analytics
- User engagement tracking
- Influencer identification
- Recommendation systems
- Product growth analysis

---

🧠 Conclusion

This project demonstrates how SQL can be used not just for querying data, but for deriving actionable insights that help businesses make data-driven decisions.

---

⭐ Author

Chinna Royal

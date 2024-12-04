USE module5_lesson2_db;
# This assignment is centered around Data Manipulation Language (DML) operations
#in a fitness center datatbase. You will be working on inserting, updating, and 
#deleting data related to gym members, and workout sessions, emphasizing the practical
#application of SQL DML commands in a real-world scenario.

CREATE TABLE Members (
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
    );
    
CREATE TABLE WorkoutSessions (
	session_id INT AUTO_INCREMENT PRIMARY KEY,
    member_id INT,
    FOREIGN KEY (member_id) REFERENCES Members(id),
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255)
    );


# Task one: Your task is to populate the Members and WorkoutSessions tables with relevant
#data. This will involve inserting records into both tables while ensuring data integrity and consistency.

INSERT INTO Members (name, age)
VALUES ('Jacob Smith', 28),
	   ('Matthew Lee', 24),
       ('Jamie White', 22),
       ('Jessica Jones', 25),
       ('Daisy Brown', 29),
       ('Jane Doe', 34),
       ('John Smith', 34);
       
INSERT INTO WorkoutSessions (member_id, session_date, session_time, activity)
VALUES (1, '2024-05-01', 'morning', 'ran a mile, then walked a mile.'),
	   (4, '2024-05-01', 'afternoon', 'jumped rope for 30min then walked a mile.'),
       (5, '2024-05-01', 'evening', 'swam for a hour.'),
       (2, '2024-05-02', 'morning', 'walked for 3 miles.'),
       (3, '2024-05-02', 'evening', 'walked ont the treadmill for 2 hours'),
       (5, '2024-05-03', 'morning', 'ran a mile.'),
	   (6, '2024-05-04', 'morning', 'walked half a mile.'),
       (7, '2024-05-04', 'evening', 'jumped rope for 15min.');
       
       
# Task 2: Update the workout session time for a specific member. Assume member 'Jane Doe' has changed her 
#workout session from morning to evening.    
   
UPDATE WorkoutSessions
SET session_time = 'evening'
WHERE session_id = 7;


# Task 3: Remove data of a member who has canceled their gym membership. Assume member 'John Smith' has canceled his membership.

DELETE FROM WorkoutSessions
WHERE session_id = 8;

DELETE FROM Members
WHERE id = 7;

	   
SELECT * FROM Members;
SELECT * FROM Workoutsessions;
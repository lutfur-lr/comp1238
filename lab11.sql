-- TABLE
CREATE TABLE assignments (  
    id INTEGER PRIMARY KEY AUTOINCREMENT,  -- Unique ID for each assignment  
    course_id TEXT NOT NULL,  -- Foreign key referencing courses  
    title TEXT NOT NULL,
    status TEXT NOT NULL,  -- Status of the assignment (e.g., "Not Started", "In Progress", "Completed") 
    due_date TEXT,  -- Due date stored as a string (e.g., "YYYY-MM-DD")  
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE  
);
CREATE TABLE courses (  
    course_id TEXT PRIMARY KEY,  -- String ID for courses, e.g., "COMP1234"  
    semester TEXT NOT NULL,  -- Semester the course is offered (e.g., "2024-3" for Fall 2024)
    course_name TEXT NOT NULL,
    lab_time TEXT,  -- Time of the lab session (e.g., "Tue 10")
    lecture_time TEXT,  -- Time of the lecture session (e.g., "Mon 13")
    notes TEXT  
);
 
-- INDEX
 
-- TRIGGER
 
-- VIEW
 

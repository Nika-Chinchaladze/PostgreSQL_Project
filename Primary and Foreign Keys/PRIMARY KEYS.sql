-- ADD PRIMARY KEYS

ALTER TABLE courses ADD PRIMARY KEY (course_no);
ALTER TABLE departments ADD PRIMARY KEY (department);
ALTER TABLE dupes ADD PRIMARY KEY (id);
ALTER TABLE employees ADD PRIMARY KEY (employee_id);
ALTER TABLE fruit_imports ADD PRIMARY KEY (id);
ALTER TABLE professors ADD PRIMARY KEY (last_name);
ALTER TABLE regions ADD PRIMARY KEY (region_id);
ALTER TABLE students ADD PRIMARY KEY (student_no);

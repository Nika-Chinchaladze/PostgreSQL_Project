-- ADD FOREIGN KEYS

ALTER TABLE student_enrollment ADD CONSTRAINT fk_course_no FOREIGN KEY (course_no) REFERENCES courses (course_no);
ALTER TABLE student_enrollment ADD CONSTRAINT fk_student_no FOREIGN KEY (student_no) REFERENCES students (student_no);
ALTER TABLE employees ADD CONSTRAINT fk_department FOREIGN KEY (department) REFERENCES departments (department);
ALTER TABLE employees ADD CONSTRAINT fk_regions FOREIGN KEY (region_id) REFERENCES regions (region_id);
ALTER TABLE fruits ADD CONSTRAINT fk_fruit_id FOREIGN KEY (fruit_id) REFERENCES fruit_imports (id);
ALTER TABLE teach ADD CONSTRAINT fk_last_name FOREIGN KEY (last_name) REFERENCES professors (last_name);
ALTER TABLE teach ADD CONSTRAINT fk_course_no FOREIGN KEY (course_no) REFERENCES courses (course_no);
ALTER TABLE sales ADD CONSTRAINT fk_country FOREIGN KEY (country) REFERENCES regions (country);


-- 1 --
SELECT YEAR(enrolment_date), COUNT(id) as iscritti_anno
FROM `students`
GROUP BY YEAR(enrolment_date)

-- 2 --
SELECT office_address, COUNT(id) as insegnanti 
FROM `teachers` 
GROUP BY office_address

-- 3 --
SELECT AVG(vote), exam_id 
FROM `exam_student` 
GROUP BY exam_id

-- 4 --
SELECT department_id, COUNT(id) as corsi_laurea
FROM `degrees` 
GROUP BY department_id

-- 1 --
SELECT COUNT(`students`.`id`) as studenti_economia
FROM `students`
INNER JOIN `degrees`
ON `students`.`degree_id` = `degrees`.`id`
WHERE `degrees`.`name` LIKE "Corso di Laurea in Economia"

-- 2 --
SELECT `degrees`.`name`, `degrees`.`level`
FROM `degrees` 
INNER JOIN `departments` 
ON `departments`.`id` = `degrees`.`department_id` 
WHERE `departments`.`name` LIKE "Dipartimento di Neuroscienze" 
AND `degrees`.`level` = "magistrale"

-- 3 --
SELECT  `courses`.`name` as corso, `teachers`.`name`, `teachers`.`surname`
FROM `course_teacher` 
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
WHERE `course_teacher`.`teacher_id`=44

-- 4 --
SELECT `students`.`id`, `students`.`surname`, `students`.`name`, `degrees`.`name`, `degrees`.`level`, `departments`.`name`
FROM `students` 
INNER JOIN `degrees`
ON `degrees`.`id` = `students`.`degree_id`
INNER JOIN `departments`
ON `departments`.`id` = `degrees`.`department_id`  
ORDER BY `students`.`surname` ASC

-- 5 --
SELECT `degrees`.`name`, `courses`.`name` as corso, `teachers`.`surname`
FROM `course_teacher` 
INNER JOIN `courses`
ON `courses`.`id` = `course_teacher`.`course_id`
INNER JOIN `teachers`
ON `teachers`.`id` = `course_teacher`.`teacher_id`
INNER JOIN `degrees`
ON `degrees`.`id` = `courses`.`degree_id`

-- 6 --
SELECT COUNT(`course_teacher`.`teacher_id`) as insegnanti
FROM `departments`
INNER JOIN `degrees`
ON `degrees`.`department_id` = `departments`.`id`
INNER JOIN `courses`
ON `courses`.`degree_id` = `degrees`.`id`
INNER JOIN `course_teacher`
ON `course_teacher`.`course_id` = `courses`.`id`
WHERE `departments`.`name` LIKE "Dipartimento di Matematica"

-- 7 BONUS --
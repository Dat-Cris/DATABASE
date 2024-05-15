-- Mệnh đề SELECT
SELECT current_date;
SELECT 1+1;
SELECT PI();
SELECT "DAT CRIS";
SELECT CURRENT_DATE AS "Today", NOW() AS "NOW";

-- Mệnh đề FROM 
SELECT department_name, department_id
FROM department;
-- *: Tất cả 
SELECT *
FROM question; 

-- Mệnh đề WHERE 
-- Toán tử: >, >=, <, <=, =, !=, (<>)
SELECT *
FROM department 
WHERE department_id !=5;

-- AND, OR
SELECT *
FROM department 
WHERE department_id >=3 AND department_id <8
-- BETWEEN ... AND ...
SELECT *
FROM department 
WHERE department_id BETWEEN 3 AND 8;

-- IN 
SELECT *
FROM department
WHERE department_id IN (2,4,6,8);

-- LIKE 
-- _: Đại diện cho 1 kí tự [c_t] -> cat, cut 
-- %: Đại diện cho 0 hoặc nhiều kí tự -> [ Điện thoại % ]
SELECT *
FROM department 
WHERE department_name LIKE "%n%";
-- IS NULL / IS NOT NULL 
SELECT *
FROM department
WHERE department_name IS NOT NULL;

-- Mệnh đề LIMIT 
SELECT *
FROM department
LIMIT 5;

-- 
SELECT *
FROM  department 
LIMIT 6,3; -- start, number 

-- Mệnh đề order by (sắp xếp) 
-- ASC, DESC 
-- Mặc định: ASC 
SELECT *
FROM exam
ORDER BY duration DESC;
--
SELECT *
FROM exam
ORDER BY duration DESC, created_date DESC;

-- Hàm tổng hợp 
-- COUNT(*): Tổng hợp 
SELECT COUNT(*) AS exam_count 
FROM exam;

-- COUNT(ID): Đếm số dòng mà id IS NOT NULL
SELECT COUNT(duration) AS exam_count 
From exam;
-- SUM, MIN, MAX, AVG
SELECT 
	SUM(duration),
    MIN(duration),
    MAX(duration),
    AVG(duration)
from exam;

-- Mệnh đề Group by 
SELECT duration, created_date, COUNT(exam_id) AS exam_count 
FROM exam 
GROUP BY duration, created_date
ORDER BY duration, created_date;

-- Mệnh đề HAVING

SELECT duration, created_date, COUNT(exam_id) AS exam_count 
FROM exam 
GROUP BY duration, created_date
HAVING COUNT(exam_id)>1
ORDER BY duration, created_date;

-- VD có một trường hocj có tổng là 1000 hs, chúng ta có thể chi các học sinh theo khối:10,11,12, trong khối 10:300hs, khối 11: 300hs, khối 12:400hs
-- trong khối 10 có thể chia thnahf các lớp học nhỏ 1,2,3,..
-- cô giáo muốn lấy số học sinh của lớp 10 có tổng trên 20 học sinh  

-- Cập nhập dữ liệu 
UPDATE department  
SET department_name=" Phòng chờ"
WHERE department_id=1;

-- Xóa dữ liệu 
DELETE FROM exam  			
WHERE duration IS NULL 




















DROP DATABASE IF EXISTS lesson_04;
CREATE DATABASE lesson_04;
USE lesson_04;

DROP TABLE IF EXISTS boy;
CREATE TABLE boy (
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

DROP TABLE IF EXISTS girl;
CREATE TABLE girl (
    id TINYINT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);

INSERT INTO boy (id, name   )
VALUES          (1 , "Khoa" ),
                (2 , "Duy"  ),
                (3 , "Hùng" ),
                (4 , "Cường"),
                (6 , "Linh" );

INSERT INTO girl (id, name      )
VALUES           (1 , "Thương"  ),
                 (2 , "Ngọc Anh"),
                 (5 , "Trang"   ),
                 (6 , "Linh"    );
                 
-- Mệnh đề JOIN: Dùng để kết hợp 2 bảng 
-- INNER JOIN: Lấy phần giao nhau 
-- VD: Lấy ra BOY và GIRL có cùng id 
SELECT *
FROM Boy 
JOIN Girl ON boy.id = girl.id;
-- 
SELECT *
FROM boy 
INNER JOIN girl USING(ID)

-- LEFT / RIGHT JOIN 
SELECT *
FROM boy 
LEFT JOIN girl USING (id);             

-- lEFT / RIGHT EXCLUDIGN JOIN 
SELECT *
FROM boy
LEFT JOIN girl USING (id)
WHERE girl.name IS NULL

-- CROSS JOIN 
SELECT * 
FROM boy
CROSS JOIN girl;

-- UNION :HỢP
SELECT * 
FROM boy 
EXCEPT
SELECT*
FROM girl;
-- INTERSECT: GIAO 
-- EXCEPT 



                 
                 
                 
                 

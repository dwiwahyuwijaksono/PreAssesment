CREATE DATABASE familydb;
USE familydb;
SHOW DATABASES;
SHOW TABLES;

CREATE TABLE m_parent(
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL
) ENGINE = InnoDB;

CREATE TABLE m_child(
id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
parent_id INT,
FOREIGN KEY (parent_id) REFERENCES m_parent(id)
) ENGINE = InnoDB;

INSERT INTO m_parent VALUES
(1, 'Wahyu'),
(2, 'Ilham'),
(3, 'Irwan');

INSERT INTO m_child VALUES
(1, 'Zaki', 2),
(2, 'Ilham', null),
(3, 'Irwan', 2),
(4, 'Arka', 3);

SELECT * FROM m_child;
SELECT * FROM m_parent;

SELECT c.id, c.name, p.name AS parent_name FROM m_child AS c
LEFT JOIN m_parent AS p ON c.parent_id = p.id;


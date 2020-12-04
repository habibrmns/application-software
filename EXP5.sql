CREATE TABLE class (
    id VARCHAR(3),
    name CHAR(20)
);

INSERT INTO class VALUES
('a1','John'),
('a2','Ram');

SELECT *FROM class;

SET autocommit=0;

START TRANSACTION;

INSERT INTO class VALUES
('a3','Levi');

SELECT * FROM class;

SAVEPOINT class1;

INSERT INTO class VALUES
('a4','Erwin');

SELECT * FROM class;

SAVEPOINT class2;

ROLLBACK TO clasS1;

SELECT * FROM class;

COMMIT;
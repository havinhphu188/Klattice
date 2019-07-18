DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE role (
	role_id INT unsigned auto_increment,
    role_name varchar(60),
    PRIMARY KEY (`role_id`)
);

ALTER TABLE Role
ADD CONSTRAINT role_name_length
CHECK (length(role_name) >= 4);

INSERT INTO Role (role_name)
VALUES ('role 1'), ('role 2'), ('role 3'), ('role 5');

CREATE Table User 
(
    user_name VARCHAR(100),
    user_password VARCHAR(100),
    user_role VARCHAR(100)
);

INSERT INTO User (user_name,user_password,user_role) VALUES('admin','3fac8fe22359e7357fda5b7aaa79a96f074d4f34', 'admin');
INSERT INTO User (user_name,user_password,user_role) VALUES('employee','b78693b210b0ce9dd9beb7799458673e2701841b','employee');
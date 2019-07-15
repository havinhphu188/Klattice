DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE role (
	role_id INT unsigned auto_increment,
    role_name varchar(60),
    PRIMARY KEY (`roleID`)
);

ALTER TABLE Role
ADD CONSTRAINT role_name_length
CHECK (length(role_name) >= 4);

INSERT INTO Role (role_name)
VALUES ('role 1'), ('role 2'), ('role 3'), ('role 5');

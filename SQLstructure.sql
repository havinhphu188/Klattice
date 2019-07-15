DROP DATABASE IF EXISTS klattice;

CREATE DATABASE klattice;

USE klattice;

CREATE TABLE Role (
	roleID INT PRIMARY KEY auto_increment,
    roleName varchar(60)
);

INSERT INTO Role (roleName)
VALUES ('role 1'), ('role 2'), ('role 3'), ('role 5');
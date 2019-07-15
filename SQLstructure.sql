DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE Role (
	roleID INT unsigned,
    roleName varchar(60),
    PRIMARY KEY (`roleName`)
);

ALTER TABLE Role
ADD CONSTRAINT roleNameLen
CHECK (length(roleName) >= 4);

INSERT INTO Role (roleName)
VALUES ('role 1'), ('role 2'), ('role 3'), ('role 5');

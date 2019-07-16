DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE title (
	title_id int unsigned auto_increment,
    title_name varchar(40) unique,
    PRIMARY KEY(`title_id`)
);

CREATE TABLE competency (
	competency_id int unsigned auto_increment,
    title_id int unsigned,
    description varchar(250) unique,
    PRIMARY KEY(`competency_id`),
    FOREIGN KEY (`title_id`)
		REFERENCES title(`title_id`)
);

CREATE TABLE capability (
	capability_id INT unsigned auto_increment,
    capability_name varchar(60),
    PRIMARY KEY(`capability_id`)
);

CREATE TABLE band (
	band_id INT unsigned auto_increment,
	band_name varchar(30) not null,
    level enum("9", "8", "7", "6", "5", "4", "3", "2", "1"),
    PRIMARY KEY(`band_id`)
);

CREATE TABLE band_competency (
	band_id int unsigned,
    competency_id int unsigned,
    PRIMARY KEY(`band_id`, `competency_id`),
    FOREIGN KEY (`band_id`)
		references band(`band_id`),
	FOREIGN KEY (`competency_id`)
		references competency(`competency_id`)
);

CREATE TABLE role (
	role_id INT unsigned auto_increment,
    role_name varchar(100) not null,
    role_summary varchar(400),
    role_sum_link varchar(250),
    capability_id INT UNSIGNED,
    band_id INT UNSIGNED,
    PRIMARY KEY (`role_id`),
    FOREIGN KEY (`capability_id`)
		REFERENCES capability(`capability_id`),
	FOREIGN KEY (`band_id`)
		REFERENCES band(`band_id`)
);

ALTER TABLE role
ADD CONSTRAINT role_name_length
CHECK (length(role_name) >= 4);

CREATE VIEW band_titles
AS
SELECT distinct band.band_id, title.title_id FROM band JOIN band_competency ON band.band_id=band_competency.band_id 
									JOIN competency ON band_competency.competency_id=competency.competency_id
                                    JOIN title ON competency.title_id= title.title_id;
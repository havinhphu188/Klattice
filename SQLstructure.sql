DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE family (
	family_id INT unsigned auto_increment not null,
    family_name varchar(40),
    PRIMARY KEY(`family_id`)
);

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

CREATE TABLE capability_lead (
    capability_lead_id INT unsigned AUTO_INCREMENT,
    lead_name varchar(50),
    lead_message varchar(500),
    image_source varchar(200),
    PRIMARY KEY (`capability_lead_id`)
);

CREATE TABLE capability (
	capability_id INT unsigned auto_increment,
    capability_name varchar(60),
    family_id INT unsigned,
    capability_lead_id INT UNSIGNED,
    PRIMARY KEY(`capability_id`),
	FOREIGN KEY (`family_id`)
		REFERENCES family(`family_id`),
    FOREIGN KEY (`capability_lead_id`)
        REFERENCES capability_lead(`capability_lead_id`)
);

CREATE TABLE band (
	band_id INT unsigned auto_increment,
	band_name varchar(30) not null,
    level enum("9", "8", "7", "6", "5", "4", "3", "2", "1"),
    PRIMARY KEY(`band_id`)
);

CREATE TABLE responsibility (
	responsibility_id INT UNSIGNED AUTO_INCREMENT,
    band_id int unsigned not null,
    responsibility_description varchar(150),
    PRIMARY KEY(`responsibility_id`),
    FOREIGN KEY(`band_id`)
		REFERENCES band(`band_id`)
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

CREATE Table user 
(
    user_name VARCHAR(100),
    user_password VARCHAR(100),
    user_type VARCHAR(100)
);

CREATE VIEW band_title
AS
SELECT distinct band.band_id, title.title_id FROM band JOIN band_competency ON band.band_id=band_competency.band_id 
									JOIN competency ON band_competency.competency_id=competency.competency_id
                                    JOIN title ON competency.title_id= title.title_id;
                                    
CREATE VIEW role_family
AS
SELECT distinct role.role_id, family.family_id FROM role JOIN capability ON role.capability_id = capability.capability_id
									JOIN family ON capability.family_id = family.family_id;

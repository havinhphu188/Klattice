DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

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

INSERT INTO capability (capability_name)
VALUES ("Business Development"),
		("Account Management"),
        ("Sales"),
        ("Inside Sales Development"),
        ("Pre Sales & Bid Management"),
        ("Marketing"),
        
        ("Software Engineering"),
        ("Data Engineering"),
        ("Cyber Security"),
        ("Architect"),
        ("Ops");

INSERT INTO band(band_name, level)
VALUES ("Executive", "9"),
		("Leadership Community", "8"),
        ("Principal", "7"),
        ("Manager", "6"),
        ("Consultant", "5"),
        ("SeniorAssociate", "4"),
        ("Associate", "3"),
        ("Trainee", "2"),
        ("Apprentice", "1");


INSERT INTO role (role_name, role_summary, role_sum_link, capability_id, band_id)
VALUES ("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 1, 1),
("Sales Director", null,  null, 1, 2),
("Business Development Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 1, 3),
("Business Development Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 1, 4),
("Junior Business Development Manager","Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.",null, 1, 5),
("Account Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 2, 3),
("Account Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 2, 4),
("Junior Account Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 2, 5),

("Head of Business Unit","Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null, 3, 1),
("Sales Director", null, null, 3, 2),
("Senior Sales Executive","Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.",null, 3, 3),
("Sales Executive", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 3, 4),
("Sales Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 3, 5),
("Sales Associate","Delivers with limited supervision, trusted to make tactical decisions.",null, 3, 6),
("Sales Associate", "Established deliverer, works well in a team.", null, 3, 7),

("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null, 4, 1),
("Sales Director", null, null, 4, 2),
("Country Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 4, 3),
("Territory Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 4,4),
("Territory Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 4, 5),
("Senior Sales Development Representative", "Delivers with limited supervision, trusted to make tactical decisions.", null, 4, 6),
("Senior Sales Development Representative", "Established deliverer, works well in a team.", null, 4, 7),
("Senior Sales Development Representative", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 4, 8),
("Senior Presales Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 5, 3),
("Presales Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 5, 4),
("Senior Presales Consultant", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 5, 5),
("Presales Consultant", "Delivers with limited supervision, trusted to make tactical decisions.", null, 5, 6),
("Presales Associate", "Established deliverer, works well in a team.", null, 5, 7),
("Trainee Presales Associate", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 5, 8),

("Head of Business Unit",  "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 6, 1),
("Marketing Leader", null, null, 6, 2),
("Senior Marketing Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 6, 3),
("Marketing Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 6, 4),
("Senior Marketing Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 6, 5),
("Marketing Executive", "Delivers with limited supervision, trusted to make tactical decisions.", null, 6, 6),
("Marketing Associate", "Established deliverer, works well in a team.", null, 6, 7),
("Marketing Assistant", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 6, 8),

("Lead Software Engineer",  "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 7, 5),
("Software Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null, 7, 6),
("Software Engineer", "Established deliverer, works well in a team.", null, 7, 7),
("Software Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 7, 8),
("Software Engineer", "Here primarily to learn; contributes to projects.", null, 7, 9),

("Lead Data Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Lead%20Data%20Engineer%20-%20Consultant.pdf?csf=1&e=toXlwB", 8, 5),
("Data Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8, 6),
("Data Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8, 7),
("Trainee Data Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Trainee%20Data%20Engineer%20-%20Trainee.pdf?csf=1&e=mDNOeD", 8, 8),

("Senior Security Architect", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 9, 4),
("Security Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 9, 5),
("Security Engineer", "Works within teams to establish good security practices, supporting the design, development and testing of the service being delivered for both application and infrastructure. Is viewed as an authority figure for cyber security and will bring strong technical leadership including mentoring and coaching Kainos people, to strengthen our security capability across the organisation.", null, 9, 6),

("Chief Technology Officer", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 10, 2),
("Technology Leader", null, null, 10, 2),
("Principal Architect", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 10, 3),
("Solution Architect", "Designs and delivers large-scale solutions from scratch.", null, 10, 4),
("Technical Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 10, 5),

("Lead Ops Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 11, 5),
("Ops Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null, 11, 6),
("Ops Engineer", "Established deliverer, works well in a team.", null, 11, 7),
("Ops Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 11, 8);

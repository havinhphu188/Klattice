DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE role (
	role_id INT unsigned auto_increment,
    role_name varchar(100) not null,
    role_summary varchar(400),
    role_sum_link varchar(250),
    capability_id INT UNSIGNED,
    PRIMARY KEY (`role_id`)
);

ALTER TABLE role
ADD CONSTRAINT role_name_length
CHECK (length(role_name) >= 4);

CREATE TABLE capability (
	capability_id INT unsigned auto_increment,
    capability_name varchar(60),
    PRIMARY KEY(`capability_id`)
);

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

INSERT INTO role (role_name, role_summary, role_sum_link, capability_id)
VALUES ("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 1),
("Sales Director", null,  null, 1),
("Business Development Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 1),
("Business Development Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 1),
("Junior Business Development Manager","Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.",null, 1),
("Account Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 2),
("Account Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 2),
("Junior Account Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 2),

("Head of Business Unit","Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null, 3),
("Sales Director", null, null, 3),
("Senior Sales Executive","Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.",null, 3),
("Sales Executive", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 3),
("Sales Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 3),
("Sales Associate","Delivers with limited supervision, trusted to make tactical decisions.",null, 3),
("Sales Associate", "Established deliverer, works well in a team.", null, 3),

("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null, 4),
("Sales Director", null, null, 4),
("Country Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 4),
("Territory Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 4),
("Territory Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 4),
("Senior Sales Development Representative", "Delivers with limited supervision, trusted to make tactical decisions.", null, 4),
("Senior Sales Development Representative", "Established deliverer, works well in a team.", null, 4),
("Senior Sales Development Representative", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 4),
("Senior Presales Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 5),
("Presales Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 5),
("Senior Presales Consultant", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 5),
("Presales Consultant", "Delivers with limited supervision, trusted to make tactical decisions.", null, 5),
("Presales Associate", "Established deliverer, works well in a team.", null, 5),
("Trainee Presales Associate", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 5),

("Head of Business Unit",  "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 6),
("Marketing Leader", null, null, 6),
("Senior Marketing Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 6),
("Marketing Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 6),
("Senior Marketing Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 6),
("Marketing Executive", "Delivers with limited supervision, trusted to make tactical decisions.", null, 6),
("Marketing Associate", "Established deliverer, works well in a team.", null, 6),
("Marketing Assistant", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 6),

("Lead Software Engineer",  "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 7),
("Software Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null, 7),
("Software Engineer", "Established deliverer, works well in a team.", null, 7),
("Software Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 7),
("Software Engineer", "Here primarily to learn; contributes to projects.", null, 7),

("Lead Data Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Lead%20Data%20Engineer%20-%20Consultant.pdf?csf=1&e=toXlwB", 8),
("Data Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8),
("Data Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8),
("Trainee Data Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Trainee%20Data%20Engineer%20-%20Trainee.pdf?csf=1&e=mDNOeD", 8),

("Senior Security Architect", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null, 9),
("Security Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 9),
("Security Engineer", "Works within teams to establish good security practices, supporting the design, development and testing of the service being delivered for both application and infrastructure. Is viewed as an authority figure for cyber security and will bring strong technical leadership including mentoring and coaching Kainos people, to strengthen our security capability across the organisation.", null, 9),

("Chief Technology Officer", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 10),
("Technology Leader", null, null, 10),
("Principal Architect", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 10),
("Solution Architect", "Designs and delivers large-scale solutions from scratch.", null, 10),
("Technical Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 10),

("Lead Ops Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null, 11),
("Ops Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null, 11),
("Ops Engineer", "Established deliverer, works well in a team.", null, 11),
("Ops Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null, 11);

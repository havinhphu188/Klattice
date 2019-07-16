DROP DATABASE IF EXISTS klattice;
CREATE DATABASE klattice;
USE klattice;

CREATE TABLE role (
	role_id INT unsigned auto_increment,
    role_name varchar(100) not null,
    role_summary varchar(400),
    role_sum_link varchar(250),
    PRIMARY KEY (`role_id`)
);

ALTER TABLE role
ADD CONSTRAINT role_name_length
CHECK (length(role_name) >= 4);

INSERT INTO role (role_name, role_summary, role_sum_link)
VALUES ("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null),
("Sales Director", null,  null),
("Business Development Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Business Development Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Junior Business Development Manager","Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.",null),
("Account Director", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Account Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Junior Account Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),

("Head of Business Unit","Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null),
("Sales Director", null, null),
("Senior Sales Executive","Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.",null),
("Sales Executive", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Sales Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Sales Associate","Delivers with limited supervision, trusted to make tactical decisions.",null),
("Sales Associate", "Established deliverer, works well in a team.", null),

("Head of Business Unit", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.",null),
("Sales Director", null, null),
("Country Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Territory Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Territory Manager", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Senior Sales Development Representative", "Delivers with limited supervision, trusted to make tactical decisions.", null),
("Senior Sales Development Representative", "Established deliverer, works well in a team.", null),
("Senior Sales Development Representative", "Graduate entry level, here to learn, but primarily to contribute to projects.", null),
("Senior Presales Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Presales Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Senior Presales Consultant", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Presales Consultant", "Delivers with limited supervision, trusted to make tactical decisions.", null),
("Presales Associate", "Established deliverer, works well in a team.", null),
("Trainee Presales Associate", "Graduate entry level, here to learn, but primarily to contribute to projects.", null),

("Head of Business Unit",  "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null),
("Marketing Leader", null, null),
("Senior Marketing Manager", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Marketing Manager", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Senior Marketing Executive", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Marketing Executive", "Delivers with limited supervision, trusted to make tactical decisions.", null),
("Marketing Associate", "Established deliverer, works well in a team.", null),
("Marketing Assistant", "Graduate entry level, here to learn, but primarily to contribute to projects.", null),

("Lead Software Engineer",  "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Software Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null),
("Software Engineer", "Established deliverer, works well in a team.", null),
("Software Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null),
("Software Engineer", "Here primarily to learn; contributes to projects.", null),

("Lead Data Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Lead%20Data%20Engineer%20-%20Consultant.pdf?csf=1&e=toXlwB"),
("Data Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj"),
("Data Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj"),
("Trainee Data Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Trainee%20Data%20Engineer%20-%20Trainee.pdf?csf=1&e=mDNOeD"),

("Senior Security Architect", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", null),
("Security Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Security Engineer", "Works within teams to establish good security practices, supporting the design, development and testing of the service being delivered for both application and infrastructure. Is viewed as an authority figure for cyber security and will bring strong technical leadership including mentoring and coaching Kainos people, to strengthen our security capability across the organisation.", null),

("Chief Technology Officer", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null),
("Technology Leader", null, null),
("Principal Architect", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null),
("Solution Architect", "Designs and delivers large-scale solutions from scratch.", null),
("Technical Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),

("Lead Ops Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", null),
("Ops Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null),
("Ops Engineer", "Established deliverer, works well in a team.", null),
("Ops Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", null);

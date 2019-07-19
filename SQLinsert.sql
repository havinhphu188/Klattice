-- title
INSERT INTO title (title_name)
VALUES ("Commercial Awareness"),
		("Communicating & Teamwork"),
        ("Innovation and Continuous Improvement"),
        ("Customer Focus"),
        ("Developing Yourself and Others"),
        ("Planning and Organising"),
        ("Job Specific Knowledge");

-- competency
INSERT INTO competency (title_id, description)
VALUES (1, "You put forward sound business cases to gain support for new and more effective methods of working"),
		(1, "You prioritise actions to minimise costs and maximise advantage across the organisation"),
        (1, "You understand the need to demonstrate a return on investment in activities and identify opportunities for generating income"),
        (1, "You actively pursue alternative ideas and ways of working to gain cost savings"),
        (1, "You lead successful initiatives that create a positive image of Kainos with potential to generate more income"),
        (1, "You support the company's commercial decisions and ensure that your team understand the reasons for these decisions"),
        (1, "You understand and are able to articulate the company mission statement, culture, values and business goals and behave accordingly at all times"),
		(1, "You prepare strong and influential business cases, understanding the needs of all stakeholders"),
        (1, "You understand and identify risk to the business and proactively mitigate and manage"),
        
        (2, "You role model company values, even when there is significant risk in doing so"),
        (2, "You address issues within your team and deliver difficult conversations when staff expectations need aligned or behaviours do not reflect the Kainos values"),
        (2, "You understand that your role is to 'Challenge' and 'Protect' those under your management fostering longer term career development for the benefit of Kainos"),
        (2, "You use team dynamics to construct the most effective team structures"),
        (2, "You clarify the vision and goals for every team member ensuring your team understands the role they have to play in the business"),
        (2, "You demonstrate effective networking skills to maintain a broad range of trusted contacts throughout the Company"),
        (2, "You develops strategies which ensure win-win solutions for all parties"),
        (2, "You create the Kainos culture placing high value on successful delivery, co-creation and cooperation, honesty, respect and creativeness"),
		(2, "You understand the people risk within your team and mitigate and proactively manage ensuring adherence to policies and processes e.g. Retention/Succession Planning/Well Being)"),
        
        (3, "You understand that proposed innovation and changes should have a clear link to improving the business results delivered"),
        (3, "You set standards for quality and ensures best practice"),
        (3, "You integrate systems and processes to avoid duplication of effort"),
        (3, "You understand how changes might impact differently on different stakeholders and address arising issues"),
        (3, "You take ownership and accountability for problems and the generation of solutions"),
        (3, "You communicates and manage the need for change delivering the corporate message"),
        (3, "You create a culture where new ideas are encouraged and evaluated; obstacles removed and people and resources are used in the most effective way in order to achieve Company goals")
;
-- band
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

-- band_competency




-- capability
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

-- role
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

("Lead Software Engineer",  "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", 'https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Software%20Engineering/Job%20Specification%20-%20Lead%20Software%20Engineer%20-%20Consultant.pdf?csf=1&e=whdr0b', 7, 5),
("Software Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", null, 7, 6),
("Software Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Software%20Engineering/Job%20Specification%20-%20Senior%20Software%20Engineer%20-%20Senior%20Associate.pdf?csf=1&e=6kiKiz", 7, 7),
("Software Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Software%20Engineering/Job%20Specification%20-%20Software%20Engineer%20-%20Associate.pdf?csf=1&e=y19dnp", 7, 8),
("Software Engineer", "Here primarily to learn; contributes to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Software%20Engineering/Job%20Specification%20-%20Software%20Engineer%20-%20Trainee.pdf?csf=1&e=cdg4yM", 7, 9),

("Lead Data Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Lead%20Data%20Engineer%20-%20Consultant.pdf?csf=1&e=toXlwB", 8, 5),
("Data Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8, 6),
("Data Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Data%20Engineer%20-%20Associate.pdf?csf=1&e=HzfgSj", 8, 7),
("Trainee Data Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Data%20Engineering/Job%20Specification%20-%20Trainee%20Data%20Engineer%20-%20Trainee.pdf?csf=1&e=mDNOeD", 8, 8),

("Senior Security Architect", "Serves the company's commercial and delivery interests, owns single initiatives or projects, advocates effective coaching and ensures that it happens.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Cyber%20Security/Job%20Specification%20-%20Senior%20Security%20Architect%20-%20Manager.pdf?csf=1&e=0c4QKw", 9, 4),
("Security Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Cyber%20Security/Job%20Specification%20-%20Security%20Architect%20-%20Consultant.pdf?csf=1&e=kdhQ99", 9, 5),
("Security Engineer", "Works within teams to establish good security practices, supporting the design, development and testing of the service being delivered for both application and infrastructure. Is viewed as an authority figure for cyber security and will bring strong technical leadership including mentoring and coaching Kainos people, to strengthen our security capability across the organisation.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Cyber%20Security/Job%20Specification%20-%20Senior%20Security%20Engineer%20-%20Senior%20Associate.pdf?csf=1&e=sWS6gD", 9, 6),

("Chief Technology Officer", "Owns and leads a business area (e.g. a BU) or supporting function (e.g. Legal or HR) with responsibility for budget, people and profit & loss.", null, 10, 2),
("Technology Leader", null, null, 10, 2),
("Principal Architect", "Recognised leader and developer of Kainos talent, continuously improves Kainos, comfortable in novel situations, owns multiple initiatives, accountable for delivery at Programme level.", null, 10, 3),
("Solution Architect", "Designs and delivers large-scale solutions from scratch.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Architect/Job%20Specification%20-%20Solution%20Architect%20-%20Manager.pdf?csf=1&e=F8J5mj", 10, 4),
("Technical Architect", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:b:/r/people/Shared%20Documents/Job%20Descriptions/Architect/Job%20Specification%20-%20Technical%20Architect%20-%20Consultant.pdf?csf=1&e=ZcwmTL", 10, 5),

("Lead Ops Engineer", "Expert in their field, is consulted by others, supervises others, works well even if under pressure, effectively coaches people.", "https://kainossoftwareltd.sharepoint.com/:w:/r/people/_layouts/15/Doc.aspx?sourcedoc=%7BB1EB28EA-3069-41F5-A9D5-27DD85CAB4CC%7D&file=Consultant%20-%20Lead%20Ops%20Engineer.docx&action=default&mobileredirect=true", 11, 5),
("Ops Engineer", "Delivers with limited supervision, trusted to make tactical decisions.", "https://kainossoftwareltd.sharepoint.com/:w:/r/people/Shared%20Documents/Job%20Descriptions/Ops/Senior%20Associate%20-%20Senior%20Ops%20Engineer.docx?d=w4f827b196eb24246a3b3e62e3452b4dd&csf=1&e=yQDOhd", 11, 6),
("Ops Engineer", "Established deliverer, works well in a team.", "https://kainossoftwareltd.sharepoint.com/:w:/r/people/Shared%20Documents/Job%20Descriptions/Ops/Associate%20-%20Ops%20Engineer.docx?d=w23925c8ff78e4c5194339c330de2ee23&csf=1&e=XhIAK1", 11, 7),
("Ops Engineer", "Graduate entry level, here to learn, but primarily to contribute to projects.", "https://kainossoftwareltd.sharepoint.com/:w:/r/people/Shared%20Documents/Job%20Descriptions/Ops/Trainee%20-%20Trainee%20Ops%20Engineer.docx?d=w0d08acc91803408c8e03119d43fff3d3&csf=1&e=EdVBaK", 11, 8);

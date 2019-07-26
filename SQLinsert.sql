-- users
INSERT INTO user (user_name,user_password,user_type) VALUES('admin','9179d75362d5fbf1ca0ae78e907ee9c15dba8eecaac2b48ada516596', 'admin');
INSERT INTO user (user_name,user_password,user_type) VALUES('employee','11b951f65858b2be3c065374fc928fcdfef05f6d0b8694d8acd2a746','employee');

INSERT INTO capability_lead (capability_lead_id,lead_name,lead_message) VALUES (1,'Matthew fox', 'With more than 10 ten years at Kainos and another 10 years working throughout the world in companies such as Google and Microsoft, Matthew has an array  of skills which make him the capabilty lead for business.
');
INSERT INTO capability_lead (capability_lead_id,lead_name,lead_message) VALUES (2,'Rory Sproules', 'Rory  has worked at kainos for 25  years.  
');

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
        (3, "You create a culture where new ideas are encouraged and evaluated; obstacles removed and people and resources are used in the most effective way in order to achieve Company goals"),
        (3, "You capitalise on opportunities to improve processes, systems or efficiency supporting the company's decision on corporate tools"),
        
        (4, "You manage expectations so customers always feels valued and have a positive experience of Kainos"),
        (4, "You champion customer service improvement initiatives"),
        (4, "You create a culture of professionalism in dealing with customers at all levels"),
        
        (5, "You tailor development approaches to suit the needs of each team member"),
        (5, "You identify potential developmental opportunities for individuals within your team, making them happen whilst managing the impact within your team"),
        (5, "You evaluate the effectiveness of training in the development of your team"),
        (5, "You understand the talent development process and effectively use to take accountability for the development of staff"),
        (5, "You create a supportive coaching culture and share your knowledge and skills to groups of individuals"),
        
        (6, "You organise people and resources to successfully achieve both short and medium term objectives"),
        (6, "You confidently juggle complex projects of different size and priority"),
        (6, "You empower individuals and pass decision making down to the lowest appropriate level"),
        
        (7, "You provide opportunities for others to learn functional and technical skills and concepts"),
        (7, "You apply advanced functional or technical knowledge to process innovation and complex problem solving"),
        (7, "You continually seeks to improve or redesign processes, tools, or technologies to enhance business efficiency and relevance"),
        (7, "You are sought by others for functional or technical expertise and knowledge and for troubleshooting of complex issues"),
        (7, "You demonstrates an excellent level of accomplishment in job performance"),
        
        (1, "Anticipates changes in the Kainos marketplace when budgeting for the future"),
        (2, "Creates successful alignment between diverse teams across the organisation"),
        (2, "Innovation and Continuous Improvement"),
        (4, "Includes all Customer Focus indicators from lower Job Levels"),
        (5, "Integrates people development in their business plans"),
        (5, "Matches long term business needs with the career development and job fulfilment of staff"),
        (5, "Develops the whole business through learning and development"),
        (6, "Sets a clear sense of direction, forward thinking and responsibly shapes the future"),
        
        (1, "You take a balanced view of wider impact on the organisation when making significant changes"),
        (1, "You strive to add measurable and significant value to the longer term growth of Kainos and take calculated risks in order to do so."),
        (1, "You influence and negotiate creating commercial strategies that maximise return, reduce cost and drive improvement in quality"),
        (2, "You achieve widely accepted 'buy in' by explaining benefits at both individual and department level"),
        (2, "You build collaborative partnerships across the company"),
        (2, "You build cohesive formal and informal teams and networks across the organisation which deliver significant added value"),
        (2, "You lead the implementation of changes with a positive approach delivering and respecting the need for the company message"),
		(2, "You build capability, processes and structures to speed the development of skills and the future leaders so the business can scale sustainably."),
        (3, "You create strategies that introduce improvements across your business unit and the Kainos group"),
        (4, "You anticipate customer's future needs, identifies their key strategic issues and positively challenges unfounded assumptions"),
        (4, "You create mutually supportive and loyal relationships with all major customers"),
        (4, "You see the wider picture, understand the levels of service that are valued by customers and ensures that these are the priority at all times"),
        (4, "You understand and apply sector-wide standards"),
        (5, "You create an environment which encourages continuous learning and development and have led and contributed to the development of capability across the group"),
        (5, "You actively sponsor and participate MAP training programmes to ensure that the skills required by the business are available to drive future growth"),
        (5, "You take accountability for ensuring that there is a clear talent pipeline within your area of responsibility"),
        (5, "You are an active role model ensuring that each of your direct reports are managed in accordance with the talent management process eg performance reviews/retention/succession/career development plans are in place."),
        (5, "You ensure that the group management processes are actively adapted by all members of staff within your responsibility."),
        (6, "You plan effectively for the medium and long term, reviewing strategies and revising to meet changing business needs"),
        (6, "You actively make use of management information available in order to understand issues"),
        (6, "You liaises effectively with colleagues outside of immediate team to coordinate activities and encourage your team to participate with others outside your team and BU where appropriate"),
        (6, "You produce a consistent, 'no blame' culture, with a feeling of pride and achievement"),
        (7, "You anticipate and understand future trends in functional or technical skills and process"),
        (7, "You actively drive the necessary changes to role and learning requirements to ensure the Company is best placed to adapt to new challenges"),
        (7, "You demonstrates an outstanding level of accomplishment in job performance")

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
INSERT INTO band_competency (competency_id, band_id)
VALUES (43, 1), (44, 1), (45, 1), (46, 1), (47, 1), (48, 1), (49, 1), (50, 1),
	(51, 3), (52, 3), (53, 3), (54, 3), (55, 3), (56, 3), (57, 3), (58, 3), (59, 3), (60, 3), (61, 3), (62, 3), (63, 3),
    (64, 3), (65, 3), (66, 3), (67, 3), (68, 3), (69, 3), (70, 3), (71, 3), (72, 3), (73, 3), (74, 3), (75, 3),
	(1, 4), (2, 4), (3, 4),(4, 4),(5, 4),(6, 4),(7, 4),(8, 4),(9, 4),(10, 4),(11, 4),(12, 4),(13, 4),(14, 4),(15, 4),
	(16, 4),(17, 4),(18, 4),(19, 4),(20, 4),(21, 4),(22, 4),(23, 4),(24, 4),(25,4),(26,4),(27,4),(28,4),(29,4),(30,4),
	(31,4),(32,4),(35,4),(36,4),(37,4),(38,4),(39,4),(40,4),(41,4),(42,4)
    
;

INSERT INTO family (family_name)
VALUES ("Sales & Marketing"),
		("Technical"),
        ("Consulting"),
        ("Experience Design"),
        ("Management"),
        ("Central Services Teams");

-- capability
INSERT INTO capability (capability_name, family_id,capability_lead_id)
VALUES ("Business Development", 1,1),
		("Account Management", 1,null),
        ("Sales", 1,null),
        ("Inside Sales Development", 1,null),
        ("Pre Sales & Bid Management", 1,null),
        ("Marketing", 1,null),        
        ("Software Engineering", 2,2),
        ("Data Engineering", 2,null),
        ("Cyber Security", 2,null),
        ("Architect", 2,null),
        ("Ops", 2,null);
        
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

INSERT INTO responsibility (band_id, responsibility_description)
	VALUES (1 , "Deliver training as part of MAP"),
			(1, "Encourage collaboration across BUs"),
			(1, "Identify and actively develop talent at all levels within your area of responsibility"),
            
            (3, "Be a Training Course Sponsor and deliver training in the Discover, Explore and Inspire schools"),
            (3, "Identify and mentor high-potential, junior talent and expedite their personal development"),
            (3, "Actively participate in thought leadership activities"),
            (3, "Develop external networks and actively promote Kainos outside the company"),
            (3, "Recommend and drive improvement initiatives that will aid the company’s growth"),
            
            (4, "Develop talent within your team, ensuring SMARTER stretch and project goals are clearly defined"),
            (4, "Provide anytime performance feedback on Workday to each of your team members at least once a quarter"),
            (4, "Identify training needs for team members and report to the BU talent manager"),
            (4, "Participate, and encourage your people to participate, in recruitment activities"),
            (4, "Actively seek to add talent to Kainos by making hiring and promotion recommendations"),
            (4, "Participate in events/thought leadership initiatives to spread the Kainos name"),
            (4, "Be prepared to deliver an element of training in the Discover/Explore training schools"),
            (4, "Actively lead a pre-sales bid through commercial review"),
            (4, "Assess and review the appraisals created by people that you manage"),
            
            (5, "Be an active career coach and to escalate to their line manager if stretch goals are not set for your coachees"),
            (5, "Ensure that your coachee has received an appraisal and regular feedback and to escalate to HR if this is not the case"),
            (5, "Visibly and regularly share knowledge"),
            (5, "Actively identify and develop talent and highlight to your BU talent manager"),
            (5, "Contribute to presales activities – completion of bids, presenting, tender qualification, bid management etc…."),
            (5, "Provide constructive feedback and record it on Workday"),
            
            (6, "Make your line manager aware if you think someone may be considering leaving the company"),
            (6, "Help with recruitment activities"),
            
            (7, "Mentor junior team members"),
            (7, "Deliver your tasks within the timelines while adhering to the Kainos quality standards"),
            (7, "Set professional self-development goals, including asking for training"),
            (7, "Maintain a Kainos CV and store it in the correct location"),
            
            (8, "Represent Kainos at careers fairs or Kainos open evenings events if invited"),
            (8, "Immediately tell your manager if your tasks are not going to be complete within the expected timeframe"),
            (8, "Notify your line manager if there are dependencies that are impacting your work"),
            (8, "Escalate to your line manager if you do not have appropriate project goals"),
            (8, "Notify HR if you have not received your project review on time"),
            
            (9, "Carry out all professional administration (timesheets, keeping calendar and voicemail up-to-date)"),
            (9, "Notify your manager if you are sick and cannot attend work"),
            (9, "Be a representative at the Earn-As-You-Learn or Apprentice events if invited"),
            (9, "Attend training courses when invited"),
            (9, "Raise any concerns/issues/problems directly with your manager or your career coach");

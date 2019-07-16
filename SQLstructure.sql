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
    competency varchar(6000),
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

INSERT INTO band(band_name, level, competency)
VALUES ("Executive", "9",'<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>Anticipates changes in the Kainos marketplace when budgeting for the future</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>Creates successful alignment between diverse teams across the organisation</li><li>Innovation and Continuous Improvement</li></ul><li><b>Customer Focus</b></li><ul><li>Includes all Customer Focus indicators from lower Job Levels</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>Integrates people development in their business plans</li><li>Matches long term business needs with the career development and job fulfilment of staff</li><li>Develops the whole business through learning and development</li></ul><li><b>Planning and Organising</b></li><ul><li>Sets a clear sense of direction, forward thinking and responsibly shapes the future</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
		("Leadership Community", "8", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li>Competency framework doesn\'t directly apply at this Job Level.</li></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Principal", "7", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You take a balanced view of wider impact on the organisation when making significant changes</li><li>You strive to add measurable and significant value to the longer term growth of Kainos and take calculated risks in order to do so.</li><li>You influence and negotiate creating commercial strategies that maximise return, reduce cost and drive  improvement in quality </li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You achieve widely accepted \'buy in\' by explaining benefits at both individual and department level</li><li>You build collaborative partnerships across the company</li><li>You build cohesive formal and informal teams and networks across the organisation which deliver significant added value </li><li>You lead the implementation of changes with a positive approach delivering and respecting the need for the company message</li><li>You understand the culture and proactively instil within your team, understanding what is and not possible to achieve within the organisation</li><li>You build capability, processes and structures to speed the development of skills and the future leaders so the business can scale sustainably.</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You create strategies that introduce improvements across your business unit and the Kainos group</li></ul><li><b>Customer Focus</b></li><ul><li>You anticipate customer\'s future needs, identifies their key strategic issues and positively challenges unfounded assumptions</li><li>You create mutually supportive and loyal relationships with all major customers</li><li>You see the wider picture, understand the levels of service that are valued by customers and ensures that these are the priority at all times</li><li>You understand and apply sector-wide standards</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You create an environment which encourages continuous learning and development and have led and contributed to the development of capability across the group</li><li>You actively sponsor and participate MAP training programmes to ensure that the skills required by the business are available to drive future growth </li><li>You take accountability for ensuring that there is a clear talent pipeline within your area of responsibility </li><li>You are an active role model ensuring that each of your direct reports are managed in accordance with the talent management process eg performance reviews/retention/succession/career development plans are in place.</li><li>You ensure that the group management processes are actively adapted by all members of staff within your responsibility.</li></ul><li><b>Planning and Organising</b></li><ul><li>You plan effectively for the medium and long term, reviewing strategies and revising to meet changing business needs</li><li>You actively make use of management information available in order to understand issues</li><li>You liaises effectively with colleagues outside of immediate team to coordinate activities and encourage your team to participate with others outside your team and BU where appropriate</li><li>You produce a consistent, \'no blame\' culture, with a feeling of pride and achievement</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You anticipate and understand future trends in functional or technical skills and process</li><li>You actively drive the necessary changes to role and learning requirements to ensure the Company is best placed to adapt to new challenges</li><li>You demonstrates an outstanding level of accomplishment in job performance</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Manager", "6", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You put forward sound business cases to gain support for new and more effective methods of working</li><li>You prioritise actions to minimise costs and maximise advantage across the organisation</li><li>You understand the need to demonstrate a return on investment in activities and identify opportunities for generating income</li><li>You actively pursue alternative ideas and ways of working to gain cost savings</li><li>You lead successful initiatives that create a positive image of Kainos with potential to generate more income</li><li>You support the company\'s commercial decisions and ensure that your team understand the reasons for these decisions</li><li>You understand and are able to articulate the company mission statement, culture, values and business goals and behave accordingly at all times</li><li>You prepare strong and influential business cases, understanding the needs of all stakeholders</li><li>You understand and identify risk to the business and proactively mitigate and manage</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You role model company values, even when there is significant risk in doing so</li><li>You address issues within your team and deliver difficult conversations when staff expectations need aligned or behaviours do not reflect the Kainos values </li><li>You understand that your role is to \'Challenge\' and \'Protect\' those under your management fostering longer term career development for the benefit of Kainos</li><li>You use team dynamics to construct the most effective team structures</li><li>You clarify the vision and goals for every team member ensuring your team understands the role they have to play in the business</li><li>You demonstrate effective networking skills to maintain a broad range of trusted contacts throughout the Company</li><li>You develops strategies which ensure win-win solutions for all parties</li><li>You create the Kainos culture placing high value on successful delivery, co-creation and cooperation, honesty, respect and creativeness</li><li>You understand the people risk within your team and mitigate and proactively manage ensuring adherence to policies and processes e.g. Retention/Succession Planning/Well Being)</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You understand that proposed innovation and changes should have a clear link to improving the business results delivered</li><li>You set standards for quality and ensures best practice</li><li>You integrate systems and processes to avoid duplication of effort</li><li>You understand how changes might impact differently on different stakeholders and address arising issues</li><li>You take ownership and accountability for problems and the generation of solutions</li><li>You communicates and manage the need for change delivering the corporate message</li><li>You create a culture where new ideas are encouraged and evaluated; obstacles removed and people and resources are used in the most effective way in order to achieve Company goals</li><li>You capitalise on opportunities to improve processes, systems or efficiency supporting the company\'s decision on corporate tools</li></ul><li><b>Customer Focus</b></li><ul><li>You manage expectations so customers always feels valued and have a positive experience of Kainos</li><li>You champion customer service improvement initiatives</li><li>You create a culture of professionalism in dealing with customers at all levels</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You tailor development approaches to suit the needs of each team member</li><li>You identify potential developmental opportunities for individuals within your team, making them happen whilst managing the impact within your team</li><li>You evaluate the effectiveness of training in the development of your team</li><li>You understand the talent development process and effectively use to take accountability for the development of staff </li><li>You create a supportive coaching culture and share your knowledge and skills to groups of individuals</li></ul><li><b>Planning and Organising</b></li><ul><li>You organise people and resources to successfully achieve both short and medium term objectives</li><li>You confidently juggle complex projects of different size and priority</li><li>You empower individuals and pass decision making down to the lowest appropriate level</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You provide opportunities for others to learn functional and technical skills and concepts</li><li>You apply advanced functional or technical knowledge to process innovation and complex problem solving</li><li>You continually seeks to improve or redesign processes, tools, or technologies to enhance business efficiency and relevance</li><li>You are sought by others for functional or technical expertise and knowledge and for troubleshooting of complex issues</li><li>You demonstrates an excellent level of accomplishment in job performance</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Consultant", "5", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You look beyond immediate problems/issues to see the impact on the bigger picture</li><li>You use financial information to find pragmatic new ways of saving cost/effort without reducing throughput</li><li>You manage people and your resources effectively and efficiently</li><li>You are aware of and actively use project/financial information to manage profitability e.g.. revisiting estimates</li><li>You understand the commercial implications of changes in scope and negotiate with customers proactively</li><li>You understand the impact of decisions on BU and company profitability and support company decisions that affect profitability</li><li>You identify potential new opportunities for the company to generate income and proactively take action to progress</li><li>You actively engage and contribute to sales activities such as presales bids, presentations for new clients</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You recognise and build on individual strengths of colleagues/team members</li><li>You build relationships based on trust</li><li>You identify personally with the team and are proud of its achievements</li><li>You publicise what team members have achieved and give feedback and recognition awards where due</li><li>You act as an influential and effective member of multi-disciplinary teams or projects</li><li>You use communication to create a shared sense of purpose and direction</li><li>You initiate collaboration and actively encourage people to cooperate in initiatives where you think that they can add value</li><li>You lead by example demonstrating openness and honesty with your team</li><li>You proactively identify internal and external talent and support them in finding developmental opportunities e.g. recruitment, career coaching</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You invite regular feedback on performance from team members and customers</li><li>You quickly turn new ideas into clear and effective improvements</li><li>You take responsibility for others, encouraging and supporting others who make suggestions for improvement</li></ul><li><b>Customer Focus</b></li><ul><li>You assess your customer needs accurately by listening and applying sensitive questioning</li><li>You manage customer expectations in relation to scope of work being honest with what can and cannot be achieved within timelines</li><li>You negotiate with customers to reflect changes in scope of work</li><li>You actively seek feedback and suggestions to improve customer service</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You consistently give constructive feedback to others in relation to the performance areas for improvement </li><li>You make independent decisions and are able to \'get on with the job\' escalating decisions only when appropriate</li><li>You draw on your past experiences to solve problems</li><li>You assist others in developing capability by educating them in your areas of specialism through a variety of forums - eg MAP courses, demonstrations, show and tells, blogs and thought leadership initiatives.</li><li>You are an active career coach and are able to objectively demonstrate how you coached others in your team to improve their performance</li><li>You identify and mentor new people and help them achieve success in their roles</li></ul><li><b>Planning and Organising</b></li><ul><li>You motivate and encourage others to achieve planned results</li><li>If appropriate to role, you manage your team effectively, delegating work to use people and resources to best effect</li><li>You ensure colleagues are aware of changes in priorities and help them to plan their workload</li><li>You monitor progress and put effort in where it is most needed to achieve the end goal</li><li>You develop effective systems to organise and track workload</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You choose appropriate tools or technology for solutions; experiments with new processes, tools, or technologies to determine applicability</li><li>You apply advanced functional or technical knowledge to do your job at a high level of accomplishment</li><li>You improve or redesign processes, tools, or technologies to achieve business needs</li><li>You consistently share expertise with others, teach skills and explain concepts</li><li>You demonstrate an avid interest in continuously enhancing current skills and learning new ones</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("SeniorAssociate", "4", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You understand how the company makes profit and how your role affects profitability of the company</li><li>You create honest time estimates and are determined to deliver upon these</li><li>You question actions where appropriate and identify  cost-effective approaches</li><li>You respectfully challenge commercial decisions to contribute an increase in profitability</li><li>You manage and meet the expectations of customers without compromising budgets </li><li>You understand the organisational structure of Kainos, your reporting lines and can actively identify where key responsibilities lie</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You use honest data and facts in a clear and constructive way to support arguments and gain agreement</li><li>You are open to giving and receiving honest feedback in order to highlight areas for improvement and recognise high performance.</li><li>You appreciate the impact of decisions on others and mitigate or minimise any negative effects</li><li>You recognise and respect that communication is a two way process and demonstrate effective questioning and active listening skills to achieve this</li><li>You persuade and influence with sound rational argument, \'appealing to others\' interest or reason to gain support.</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You proactively look for creative/better ways of doing things and put forward improvements in order to improve performance</li><li>You identify problems, carefully consider and test possible options, evaluate pros and cons and consequences of various decisions and create a range of solutions</li><li>You suggest and implement practical and workable solutions</li></ul><li><b>Customer Focus</b></li><ul><li>You respond honestly and promptly to customer requests and whenever possible within agreed timeframes</li><li>You keep promises made to your customer</li><li>You are authentic in stakeholder relations and take pride in being inclusive and trustworthy.</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You identify your learning and development needs and actively seek opportunities to gain this experience</li><li>You seek and respond positively to feedback regarding your own learning and development</li><li>You constructively challenge colleagues, including those in positions of authority.</li><li>You state alternative views with confidence and respect.</li><li>You adapt your behaviours and act in the most appropriate way to enable others to respond constructively</li><li>You tailor your responses to be constructive and diffuse tense situations and calm others</li><li>You acknowledge the capabilities of others in your team and publicly recognise your colleagues who have performed well</li><li>You offer help or advice when team members are struggling to ensure that the team as a whole is successful.</li><li>You give advice and guidance and provide practical support to others to help them understand tasks.  You give \'how to\' demonstrations or instructions and explain how others can achieve performance expectations</li></ul><li><b>Planning and Organising</b></li><ul><li>You overcome obstacles to ensure work gets done on time</li><li>You effectively prioritise workload to meet important objectives</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You have the capability and knowledge base to share job specific skills with others</li><li>You demonstrate an active interest in enhancing current skills and learning new ones</li><li>You demonstrate a good level of accomplishment in job performance</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Associate", "3", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You understand how the company makes profit and how your role affects profitability of the company</li><li>You create honest time estimates and are determined to deliver upon these</li><li>You question actions where appropriate and identify  cost-effective approaches</li><li>You respectfully challenge commercial decisions to contribute an increase in profitability</li><li>You manage and meet the expectations of customers without compromising budgets </li><li>You understand the organisational structure of Kainos, your reporting lines and can actively identify where key responsibilities lie</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You use honest data and facts in a clear and constructive way to support arguments and gain agreement</li><li>You are open to giving and receiving honest feedback in order to highlight areas for improvement and recognise high performance.</li><li>You appreciate the impact of decisions on others and mitigate or minimise any negative effects</li><li>You recognise and respect that communication is a two way process and demonstrate effective questioning and active listening skills to achieve this</li><li>You persuade and influence with sound rational argument, \'appealing to others\' interest or reason to gain support.</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You proactively look for creative/better ways of doing things and put forward improvements in order to improve performance</li><li>You identify problems, carefully consider and test possible options, evaluate pros and cons and consequences of various decisions and create a range of solutions</li><li>You suggest and implement practical and workable solutions</li></ul><li><b>Customer Focus</b></li><ul><li>You respond honestly and promptly to customer requests and whenever possible within agreed timeframes</li><li>You keep promises made to your customer</li><li>You are authentic in stakeholder relations and take pride in being inclusive and trustworthy.</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You identify your learning and development needs and actively seek opportunities to gain this experience</li><li>You seek and respond positively to feedback regarding your own learning and development</li><li>You constructively challenge colleagues, including those in positions of authority.</li><li>You state alternative views with confidence and respect.</li><li>You adapt your behaviours and act in the most appropriate way to enable others to respond constructively</li><li>You tailor your responses to be constructive and diffuse tense situations and calm others</li><li>You acknowledge the capabilities of others in your team and publicly recognise your colleagues who have performed well</li><li>You offer help or advice when team members are struggling to ensure that the team as a whole is successful.</li><li>You give advice and guidance and provide practical support to others to help them understand tasks.  You give \'how to\' demonstrations or instructions and explain how others can achieve performance expectations</li></ul><li><b>Planning and Organising</b></li><ul><li>You overcome obstacles to ensure work gets done on time</li><li>You effectively prioritise workload to meet important objectives</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You have the capability and knowledge base to share job specific skills with others</li><li>You demonstrate an active interest in enhancing current skills and learning new ones</li><li>You demonstrate a good level of accomplishment in job performance</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Trainee", "2", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li><b>Commercial Awareness</b></li><ul><li>You understand how the company makes profit and how your role affects profitability of the company</li><li>You create honest time estimates and are determined to deliver upon these</li><li>You question actions where appropriate and identify  cost-effective approaches</li><li>You respectfully challenge commercial decisions to contribute an increase in profitability</li><li>You manage and meet the expectations of customers without compromising budgets </li><li>You understand the organisational structure of Kainos, your reporting lines and can actively identify where key responsibilities lie</li></ul><li><b>Communicating &amp; Teamwork</b></li><ul><li>You use honest data and facts in a clear and constructive way to support arguments and gain agreement</li><li>You are open to giving and receiving honest feedback in order to highlight areas for improvement and recognise high performance.</li><li>You appreciate the impact of decisions on others and mitigate or minimise any negative effects</li><li>You recognise and respect that communication is a two way process and demonstrate effective questioning and active listening skills to achieve this</li><li>You persuade and influence with sound rational argument, \'appealing to others\' interest or reason to gain support.</li></ul><li><b>Innovation and Continuous Improvement</b></li><ul><li>You proactively look for creative/better ways of doing things and put forward improvements in order to improve performance</li><li>You identify problems, carefully consider and test possible options, evaluate pros and cons and consequences of various decisions and create a range of solutions</li><li>You suggest and implement practical and workable solutions</li></ul><li><b>Customer Focus</b></li><ul><li>You respond honestly and promptly to customer requests and whenever possible within agreed timeframes</li><li>You keep promises made to your customer</li><li>You are authentic in stakeholder relations and take pride in being inclusive and trustworthy.</li></ul><li><b>Developing Yourself and Others</b></li><ul><li>You identify your learning and development needs and actively seek opportunities to gain this experience</li><li>You seek and respond positively to feedback regarding your own learning and development</li><li>You constructively challenge colleagues, including those in positions of authority.</li><li>You state alternative views with confidence and respect.</li><li>You adapt your behaviours and act in the most appropriate way to enable others to respond constructively</li><li>You tailor your responses to be constructive and diffuse tense situations and calm others</li><li>You acknowledge the capabilities of others in your team and publicly recognise your colleagues who have performed well</li><li>You offer help or advice when team members are struggling to ensure that the team as a whole is successful.</li><li>You give advice and guidance and provide practical support to others to help them understand tasks.  You give \'how to\' demonstrations or instructions and explain how others can achieve performance expectations</li></ul><li><b>Planning and Organising</b></li><ul><li>You overcome obstacles to ensure work gets done on time</li><li>You effectively prioritise workload to meet important objectives</li></ul><li><b>Job Specific Knowledge</b></li><ul><li>You have the capability and knowledge base to share job specific skills with others</li><li>You demonstrate an active interest in enhancing current skills and learning new ones</li><li>You demonstrate a good level of accomplishment in job performance</li></ul></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>'),
        ("Apprentice", "1", '<div class="modal-body">
              <h4 class="job-description-subheading" id="job-training-subheading" style="display: none;">Training</h4>
              <span class="job-training" style="display: none;"></span>

              <h4 class="job-description-subheading" id="job-competency-subheading">Competency Framework</h4>
              <span class="ideal-candidate"><ul><li>Competency framework doesn\'t directly apply at this Job Level for now. Please see Associate to assist with your career planning.</li></ul></span>
              <h4 class="job-description-subheading" id="job-responsibilities-subheading" style="display: none;">Responsibilities</h4>
              <span class="job-responsibilities" style="display: none;"></span>
              <br>
              <span class="other-modal-content"></span>
            </div>');

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

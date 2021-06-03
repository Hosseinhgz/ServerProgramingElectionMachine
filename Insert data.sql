#create database electionmachine;
use electionmachine;
CREATE TABLE CANDIDATE (
   ID INTEGER NOT NULL,
   	SURNAME VARCHAR (25),
   FIRSTNAME VARCHAR (25),
   PARTY VARCHAR (50),
   LOCATION VARCHAR (25),
   IKA INTEGER,
   WHY_COMMISSION VARCHAR (250),
   WHAT_ATHES_WANT_EDES VARCHAR (2000),
   PROFESSIONAL VARCHAR (50),
   PRIMARY KEY (ID)
);
select * from candidateanswers;
# here is table created for candidates answers
CREATE TABLE CANDIDATEANSWERS (
	ID INTEGER NOT NULL auto_increment,
   CANDIDATEID INTEGER NOT NULL,
   QUESTION INTEGER NOT NULL,
   CANDIDATEANS INTEGER not null default 0,
   COMMENT varchar(100),
   PRIMARY KEY (ID)
);
select * from CANDIDATEANSWERS;

#create table for customer answers
CREATE TABLE ANSWER (
   ID INTEGER NOT NULL,
   ANSWER INTEGER default 0,
   PRIMARY KEY (ID)
);

# insert for customer default answers
INSERT INTO ANSWER (ANSWER) VALUES (0);

#This line is to handle utf8 character needs (like ä and ö) if you have not set utf8 encoding already default for your mysql
ALTER DATABASE electionmachine CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

INSERT INTO CANDIDATE VALUES (1, "Perch Lake" ,"Joel", "Finland Christian Democrats (KD)", "Uurainen", 86, "Ideally I would do something else, but the kingdom is to be corrected. I get along about eight languages, and I am familiar with many fields Urban and rural common sense. "," I want to promote Finland, where no one has to suffer from deprivation or a feeling of powerlessness in influencing their own affairs. "," Member of Parliament ");
INSERT INTO CANDIDATE VALUES (2, "Aintila "," Henrik Jeremias "," Finland Swedish People party "," Helsinki ", 47," I am a speech-proof, versatile things a prudent, thorough things to cope with, a variety of common, the business world and public administration worked three children mother. "," - Human livelihood and genuine equality for all, regardless of status - Genuine sovereignty and impartiality - The well-being of the people over corporate profits - Transparency in matters dealt with! "," Local nurse ");
INSERT INTO CANDIDATE VALUES (3, "Aittakumpu", "Alviina", "Left Alliance", "Jämsä", 46, "I know various silent grievances. For example, issues related to corruption and dishonesty. For democracy to work so full honesty is required.", " Finnish markka alongside the euro, and to sell Finland domestic economy in good shape. Jobs in the public and private sectors; investments and basic income in Finnish marks; much easier business conditions and employment incentives. Discourage tax havens with parallel currency. "," Teacher, Member of Parliament ");
INSERT INTO CANDIDATE VALUES (4, "Ala-Kokko", "Henri", "Green League", "Espoo", 87, "I go ahead, for independence, the countryside, Finnishness and social justice.", "The role of the elderly and carers There is no need for more cuts in services for the elderly and more money for preventive services, support for family care needs to be increased and enough holidays need to be provided for every caregiver, employment needs to be supported and their working conditions need to be monitored We have a lot of hard working young people who need positive experience of the workplace. "," Chief Nurse, Chief shop steward ");
INSERT INTO CANDIDATE VALUES (5, "Ala-Nissilä", "Benjamin", "Suomen Keskusta", "Lappajärvi", 26, "I want a change in the current government activities, the activities have not met the expectations of the Katainen-Stubb government, the state has more debt than never "," Finland difference from the EU. Introduction of the national central bank own currency in Finland. Termination of the host country agreement between Finland and NATO and return to neutrality. Securing welfare state services with the help of the central bank, national currency and independent economic policy. "," Metallimies " );
INSERT INTO CANDIDATE VALUES (6, "Lower Reinikka "," Karl-Mikael "," National Coalition ", "the Black Island ", 37," Because I am brave and honest -. Ylipäänsäkin parliament should choose only those with the right kind of education and Education."," The reform of working life and educational institutions - people individuality must be taken into account through flexible working hours, mobile work, teaching methods. The 8-hour system is old-fashioned and needs reform. More creativity in working life! K "," Lecturer in Physical Education ");
INSERT INTO CANDIDATE VALUES (7, "Lower Forest", "Grain", "Green Alliance", "Eagle", 82, "If you want the same expenditure to continue in the next parliamentary term, skip this candidate. If you want a change then you are at the right address.", " It is absolutely paramount to build good relations with non-EU countries as well. We need more trade to increase our exports and create new jobs while maintaining existing ones. "," Junior Hockey Club Liaison Manager ");
INSERT INTO CANDIDATE VALUES (8, "Olando-Kahiluoto", "Sara", "Green Alliance", "Nokia", 21, "I want to contribute to the well-being of society through politics. Defending Finland military non-alignment and foreign policy neutrality."," Supporting the University of Education and non-profit research. These issues include opposition to EU, EMU, NATO and TTIP memberships. "," Lecturer in Mother Tongue and Literature ");
INSERT INTO CANDIDATE VALUES (9, "Alasalmi", "Otto", "Finnish Social Democratic Party", "Varkaus", 30, "Finland needs new ideas and I can find them. This country needs to cooperate. I look forward, I believe in the better and I defend the weakest . "," Leaving the EU is the most important thing! I've never done paid work, so entrepreneurship is also a matter of the heart! No NATO, no EU, no TTIP, no GMO, no euro! YES INDEPENDENCE AND PEOPLE! Finland must also have a Constitutional Court that oversees what the government does and the legality of its decisions! The EEA Agreement is enough for us! It guarantees training, mobility and trade within the EU! "," Freelancer ");
INSERT INTO CANDIDATE VALUES (10, "Alatalo", "Cosmo", " Center Party of Finland", "Tampere ", 68," I am an energetic matters common to the nurse, and I have 20 years of experience in the management of human affairs. In recent municipal elections, I received a sign of trust ääniharavan station in my city . "," Politicians do not create jobs, but constructive frameworks. The employment rate must be raised to the level of Sweden, and structural reforms in the public sector as well as in the labor market must be made to substantially reduce taxation and barriers to employment. Unnecessary rules and prohibitions on entrepreneurship and the economy. I will focus on preventing unemployment and exclusion. "," Student / Employee ");
# CANDIDATE 11&12 are missed- something wrong in their data.
INSERT INTO CANDIDATE VALUES (13, "Alho", "Inna", "National Coalition Party", "Kouvola", 62, "I want to promote the growth of holistic well-being without interest-oriented policy orientation.", "Promoting employment and investing in education are key to future well-being. Work is a guarantee of well-being at both the individual and collective levels. Therefore, barriers to employment must be removed. Education is the key to the future - now is the time to start developing Finnish school and learning! " ,"mixed worker ");
INSERT INTO CANDIDATE VALUES (14, "Alhojärvi", "Mikael", "Finnish Communist Party", "Lappeenranta", 19, "Unlike Parliament, not just one, but several new perspectives.", "A fighter for fundamental rights. Transparency, reliability and keeping his promises, the jacket will not turn even after the election. "," Lieutenant Colonel evp, taxi driver ");
INSERT INTO CANDIDATE VALUES (15, "Alho Noro "," Jasmine "," Green League "," Tampere ", 53," I am ready to run even larger structural reforms to improve Finland competitiveness. I am confident the Finns that they themselves know what is best for themselves and not so much power. "," Long-term experience in working with people - company, sports and organizers. Working in municipal politics in the 80 and 90 ... "," Photographer, ark.yo ");
INSERT INTO CANDIDATE VALUES (16, "Alijärvi", "Daniel", "Finnish Social Democratic Party", "Helsinki", 20, "I keep my word", "Decision-making needs future MPs who are competent, cooperative, experienced and have good leadership skills.", " specialist ");
INSERT INTO CANDIDATE VALUES (17, "Allahmoradi", "Tuomas", "Vasemmistoliitto", "Inkoo", 73, "Fär att det behäv nägon som "," Own country strawberry, other country blueberry "," Mediapastori ");
INSERT INTO CANDIDATE VALUES (18, "Anderson", "Otto", "Swedish People Party of Finland", "Vantaa", 45, "Through my special assistant work, I have solid experience in national politics. I control the various twists and turns and get things done.", " parliament is needed pirated Technological development is the greatest force for change in society, and it must be taken into account päätäksentekoprosessissa I DI / physicist and teacher, knowledgeable contributor agriculture and forestry practitioner"," sijaispappi ");
INSERT INTO CANDIDATE VALUES (19, "Andersson" ," Cosmo "," Left "," Joensuu ", 41," I think it should be dedicated member of parliament who is freedom and social justice based on the values, strong opinions, and the ability COOPERATION. "," I'm irreligious supporter of individual freedom. NATO affirmative, supporter of nuclear power. "," Member of Parliament ");
INSERT INTO CANDIDATE VALUES (20, "Andersson", "Essi", "Swedish People Party of Finland", "Kouvola", 63, "FINLAND ECONOMIC OUTLOOK IS A DISASTERFUL) It is important to start raising the Finnish economy. from some other alliance. "," I have a strong scientific education as a doctor of physics and as a software entrepreneur a lot of experience in society, including public administration. Vision and ability to reform is my strength. "," master builder ");
select * from candidate;

# this chart created for question text
CREATE TABLE QUESTION (
   ID INTEGER NOT NULL auto_increment,
   QUESTION VARCHAR (3000),
   ANSWER INTEGER default 0,
   PRIMARY KEY (ID)
);
drop table question;
select * from question;
# insert values ​​into the table questions
INSERT INTO QUESTION (QUESTION) VALUES ("It is too easy to live on social security in Finland");
INSERT INTO QUESTION (QUESTION) VALUES ("The opening hours of trade and other shops must be liberalized.");
INSERT INTO QUESTION (QUESTION) VALUES ("Finland needs to move to a basic income that would replace the current minimum level of social security.");
INSERT INTO QUESTION (QUESTION) VALUES ("The employee must be guaranteed by law a minimum working time.");
INSERT INTO QUESTION (QUESTION) VALUES ("The duration of earnings-related occupational safety must be shortened.");
INSERT INTO QUESTION (QUESTION) VALUES ("Outside the euro, Finland would do better.");
INSERT INTO QUESTION (QUESTION) VALUES ("Food taxation can afford to tighten.");
INSERT INTO QUESTION (QUESTION) VALUES ("The state and municipal finances must be balanced primarily by cutting spending.");
INSERT INTO QUESTION (QUESTION) VALUES ("Child benefits must be increased and taxed.");
INSERT INTO QUESTION (QUESTION) VALUES ("Finland cannot afford social and health services on the current scale.");
INSERT INTO QUESTION (QUESTION) VALUES ("NATO membership would strengthen Finland security policy position.");
INSERT INTO QUESTION (QUESTION) VALUES ("Finland needs more police.");
INSERT INTO QUESTION (QUESTION) VALUES ("Immigration to Finland must be restricted due to the threat of terrorism.");
INSERT INTO QUESTION (QUESTION) VALUES ("Russia policy of interests is a threat to Finland.");
INSERT INTO QUESTION (QUESTION) VALUES ("In network surveillance, state security is more important than the protection of citizens' privacy.");
INSERT INTO QUESTION (QUESTION) VALUES ("Finland must participate in the fight against Isis by training Iraqi government forces.");
INSERT INTO QUESTION (QUESTION) VALUES ("The terminally ill must have the right to assisted death.");
INSERT INTO QUESTION (QUESTION) VALUES ("Health and social services must be provided primarily as public services.");
INSERT INTO QUESTION (QUESTION) VALUES ("Authorities need to address the problems of families with children more sensitively.");


# insert values ​​into the table answers(only answer all for candidate 1 and 1 answer for candidate 2
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 1, 2, "candidate 1 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 2, 4, "candidate 1 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 3, 3, "candidate 1 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 4, 2, "candidate 1 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 5, 1, "candidate 1 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 6, 2, "candidate 1 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 7, 5, "candidate 1 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 8, 2, "candidate 1 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 9, 4, "candidate 1 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 10, 1, "candidate 1 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 11, 1, "candidate 1 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 12, 2, "candidate 1 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 13, 4, "candidate 1 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 14, 5, "candidate 1 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 15, 3, "candidate 1 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 16, 1, "candidate 1 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 17, 4, "candidate 1 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 18, 4, "candidate 1 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (1, 19, 3, "candidate 1 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 1, 4, "candidate 2 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 2, 5, "candidate 2 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 3, 3, "candidate 2 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 4, 2, "candidate 2 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 5, 4, "candidate 2 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 6, 5, "candidate 2 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 7, 3, "candidate 2 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 8, 1, "candidate 2 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 9, 1, "candidate 2 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 10, 2, "candidate 2 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 11, 4, "candidate 2 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 12, 5, "candidate 2 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 13, 3, "candidate 2 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 14, 2, "candidate 2 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 15, 4, "candidate 2 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 16, 5, "candidate 2 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 17, 3, "candidate 2 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 18, 4, "candidate 2 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (2, 19, 5, "candidate 2 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 1, 2, "candidate 3 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 2, 1, "candidate 3 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 3, 2, "candidate 3 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 4, 5, "candidate 3 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 5, 2, "candidate 3 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 6, 4, "candidate 3 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 7, 1, "candidate 3 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 8, 1, "candidate 3 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 9, 2, "candidate 3 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 10, 4, "candidate 3 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 11, 5, "candidate 3 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 12, 3, "candidate 3 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 13, 1, "candidate 3 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 14, 4, "candidate 3 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 15, 4, "candidate 3 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 16, 3, "candidate 3 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 17, 3, "candidate 3 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 18, 3, "candidate 3 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (3, 19, 1, "candidate 3 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 1, 4, "candidate 4 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 2, 4, "candidate 4 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 3, 3, "candidate 4 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 4, 4, "candidate 4 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 5, 1, "candidate 4 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 6, 1, "candidate 4 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 7, 2, "candidate 4 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 8, 4, "candidate 4 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 9, 5, "candidate 4 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 10, 3, "candidate 4 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 11, 2, "candidate 4 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 12, 4, "candidate 4 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 13, 4, "candidate 4 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 14, 1, "candidate 4 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 15, 1, "candidate 4 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 16, 2, "candidate 4 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 17, 4, "candidate 4 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 18, 5, "candidate 4 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (4, 19, 3, "candidate 4 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 1, 1, "candidate 5 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 2, 1, "candidate 5 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 3, 3, "candidate 5 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 4, 2, "candidate 5 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 5, 5, "candidate 5 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 6, 1, "candidate 5 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 7, 2, "candidate 5 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 8, 4, "candidate 5 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 9, 5, "candidate 5 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 10, 3, "candidate 5 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 11, 2, "candidate 5 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 12, 4, "candidate 5 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 13, 4, "candidate 5 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 14, 3, "candidate 5 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 15, 1, "candidate 5 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 16, 2, "candidate 5 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 17, 3, "candidate 5 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 18, 2, "candidate 5 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (5, 19, 3, "candidate 5 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 1, 2, "candidate 6 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 2, 3, "candidate 6 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 3, 3, "candidate 6 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 4, 1, "candidate 6 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 5, 4, "candidate 6 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 6, 1, "candidate 6 answer to question 6");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 7, 4, "candidate 6 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 8, 1, "candidate 6 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 9, 3, "candidate 6 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 10, 5, "candidate 6 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 11, 2, "candidate 6 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 12, 1, "candidate 6 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 13, 1, "candidate 6 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 14, 5, "candidate 6 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 15, 1, "candidate 6 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 16, 3, "candidate 6 answer to question 16");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 17, 3, "candidate 6 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 18, 2, "candidate 6 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (6, 19, 3, "candidate 6 answer to question 19");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 1, 1, "candidate 7 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 2, 2, "candidate 7 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 3, 1, "candidate 7 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 4, 4, "candidate 7 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 5, 2, "candidate 7 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 6, 1, "candidate 7 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 7, 2, "candidate 7 answer to question 7");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 8, 3, "candidate 7 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 9, 5, "candidate 7 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 10, 2, "candidate 7 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 11, 1, "candidate 7 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 12, 3, "candidate 7 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 13, 3, "candidate 7 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 14, 5, "candidate 7 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 15, 5, "candidate 7 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 16, 4, "candidate 7 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 17, 3, "candidate 7 answer to question 17");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 18, 1, "candidate 7 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 19, 1, "candidate 7 answer to question 19");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 20, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 21, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (7, 22, 0, "");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 1, 5, "candidate 8 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 2, 5, "candidate 8 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 3, 5, "candidate 8 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 4, 3, "candidate 8 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 5, 4, "candidate 8 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 6, 4, "candidate 8 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 7, 1, "candidate 8 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 8, 2, "candidate 8 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 9, 2, "candidate 8 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 10, 3, "candidate 8 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 11, 4, "candidate 8 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 12, 2, "candidate 8 answer to question 12");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 13, 2, "candidate 8 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 14, 1, "candidate 8 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 15, 1, "candidate 8 answer to question 15");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 16, 1, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 17, 5, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 18, 2, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 19, 2, "candidate 8 answer to question 19");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 20, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 21, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (8, 22, 0, "");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 1, 3, "candidate 9 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 2, 3, "candidate 9 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 3, 1, "candidate 9 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 4, 2, "candidate 9 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 5, 2, "candidate 9 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 6, 2, "candidate 9 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 7, 3, "candidate 9 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 8, 3, "candidate 9 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 9, 1, "candidate 8 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 10, 3, "candidate 8 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 11, 5, "candidate 8 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 13, 5, "candidate 8 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 14, 5, "candidate 8 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 16, 3, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 17, 4, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 18, 5, "candidate 8 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 19, 5, "candidate 8 answer to question 19");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 20, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 21, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (9, 22, 0, "");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 1, 5, "candidate 10 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 2, 1, "candidate 10 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 3, 2, "candidate 10 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 4, 4, "candidate 10 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 5, 4, "candidate 10 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 6, 3, "candidate 10 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 7, 1, "candidate 10 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 8, 2, "candidate 10 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 9, 3, "candidate 10 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 10, 2, "candidate 10 answer to question 10");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 11, 2, "candidate 10 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 13, 3, "candidate 10 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 14, 1, "candidate 10 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 16, 1, "candidate 10 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 17, 1, "candidate 10 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 18, 1, "candidate 10 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 19, 1, "candidate 10 answer to question 110");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 20, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 21, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (10, 22, 0, "");

INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 1, 1, "candidate 11 answer to question 1");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 2, 2, "candidate 11 answer to question 2");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 3, 2, "candidate 11 answer to question 3");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 4, 3, "candidate 11 answer to question 4");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 5, 4, "candidate 11 answer to question 5");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 6, 1, "candidate 11 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 7, 2, "candidate 11 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 8, 3, "candidate 11 answer to question 8");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 9, 1, "candidate 11 answer to question 9");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 10, 5, "candidate 11 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 11, 5, "candidate 11 answer to question 11");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 13, 4, "candidate 11 answer to question 13");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 14, 2, "candidate 11 answer to question 14");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 16, 2, "candidate 11 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 17, 1, "candidate 11 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 18, 2, "candidate 11 answer to question 18");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 19, 2, "candidate 11 answer to question 111");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 20, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 21, 0, "");
INSERT INTO CANDIDATEANSWERS (CANDIDATEID, QUESTION, CANDIDATEANS, COMMENT) VALUES (11, 22, 0, "");
select * from candidateanswers;
CREATE TABLE STATISTICS (
	QUESTION INTEGER NOT NULL,
    numAns1 INTEGER NOT NULL,
    numAns2 INTEGER,
	numAns3 INTEGER,
    numAns4 INTEGER,
    numAns5 INTEGER,
   PRIMARY KEY (QUESTION)
);

CREATE TABLE RESULT (
	ID INTEGER NOT NULL auto_increment,
   CANDIDATEID INTEGER NOT NULL,
	CUSTOMERID INTEGER NOT NULL,
   RESULT DOUBLE default 0,
   PRIMARY KEY (ID)
);
select * from RESULT;
SELECT * FROM RESULT ;
SELECT COUNT(CANDIDATEANS) FROM candidateanswers WHERE QUESTION=1 and CANDIDATEANS=4;
SELECT * FROM RESULT WHERE CUSTOMERID=4 ORDER BY RESULT DESC LIMIT 3 ;
SELECT * FROM CANDIDATE WHERE ID in(4,4,4,4);
#drop table question;
select * from answer;

CREATE TABLE ADMIN (
	username VARCHAR (50) NOT NULL,
   firstname VARCHAR (50) NOT NULL,
   lastname VARCHAR (50) NOT NULL,
   email VARCHAR (100) NOT NULL,
	password VARCHAR (100) NOT NULL,
   PRIMARY KEY (username)
);
select * from admin;
SELECT * FROM ADMIN WHERE USERNAME='hosseinhgz' AND PASSWORD='Hh4497';
DROP TABLE ADMIN;
INSERT INTO ADMIN (username,firstname, lastname, email, password )VALUES ("hosseinhgz","Hossein","Hazratgholizadeh","hossein.hazratgholizade@gmail.com", "Hh4497");
INSERT INTO ADMIN (username,firstname, lastname, email, password )VALUES ("peterm","peter","moris","peter.moris@gmail.com", "pm4497");
INSERT INTO ADMIN (username,firstname, lastname, email, password )VALUES ("a","b","moris","peter.moris@gmail.com", "aaa");


select * from question;
UPDATE QUESTION SET ANSWER=0;

CREATE TABLE CUSTOMER (
	CUSTOMERID INTEGER NOT NULL auto_increment,
   FIRSTNAME VARCHAR (30) NOT NULL,
   LASTNAME VARCHAR (30) NOT NULL,
   USERNAME VARCHAR (20) NOT NULL,
   EMAIL VARCHAR (100),
   PHONE VARCHAR (20), 
   PRIMARY KEY (CUSTOMERID)
);
INSERT INTO CUSTOMER (FIRSTNAME, LASTNAME, USERNAME, EMAIL, PHONE) VALUES ("James","Peterson","Jamesp","james.peterson@gmail.com","0403457254");
INSERT INTO CUSTOMER (FIRSTNAME, LASTNAME, USERNAME, EMAIL, PHONE) VALUES ('Hossein','Hazratgholizadeh','hosseinhgz','hossein.hazratgholizade@gmail.com','0403771254');
SELECT * FROM CUSTOMER;
SELECT * FROM CUSTOMER ORDER BY CUSTOMERID DESC LIMIT 1;

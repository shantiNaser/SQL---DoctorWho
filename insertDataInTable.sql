-- insert Rows into tblAuthor Table 
insert into dbo.tblAuthor (AuthorName) values ('Naser');
insert into dbo.tblAuthor (AuthorName) values ('sudqi');
insert into dbo.tblAuthor (AuthorName) values ('Ahmad');
insert into dbo.tblAuthor (AuthorName) values ('Ali');
insert into dbo.tblAuthor (AuthorName) values ('Amjad');


-- insert Rows into tblEnemy Table 
insert into dbo.tblEnemy ( EnemyName, Description) values ('sudqi','original programmer');
insert into dbo.tblEnemy ( EnemyName, Description) values ('Naser','Derivative programmer');
insert into dbo.tblEnemy ( EnemyName, Description) values ('Mohammad','evil Programmer');
insert into dbo.tblEnemy ( EnemyName, Description) values ('Hala','fast Programmer');
insert into dbo.tblEnemy ( EnemyName, Description) values ('Roaa','dangrous Programmer');

-- insert Rows into tblCompanion Table 
insert into dbo.tblCompanion ( companionName, WhoPlayed) values ('Naser','Sudqi');
insert into dbo.tblCompanion ( companionName, WhoPlayed) values ('Hala','Raneem');
insert into dbo.tblCompanion ( companionName, WhoPlayed) values ('suha','alaa');
insert into dbo.tblCompanion ( companionName, WhoPlayed) values ('mohammad','ahmad');
insert into dbo.tblCompanion ( companionName, WhoPlayed) values ('jamal','jehad');


-- insert Rows into tblDoctor Table 
insert into dbo.tblDoctor (DoctorNumber, DoctorName, BirthDate, FirstEpisodeDate, LastEpisodeDate)
values (12345,'Alaa','1980-08-23','1990-02-16','2000-03-05'),(54321,'Hala','1988-09-01','1998-02-16','2010-03-05')
,(13579,'ahmad','1985-05-08','1995-06-04','2014-05-02'),(97531,'jood','1988-06-01','1990-12-02','2013-02-02'),
       (19087,'sudgi','1995-09-01','2000-09-08','2015-03-04');

-- insert Rows into tblEpisode Table
insert into dbo.tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, Authorid, Doctorid,
                        Notes)
values (165,134,'mobilApplication',null,'2012-05-09',2,16,'Flutter Cross Platform');
insert into dbo.tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, Authorid, Doctorid,
                        Notes)
values (194,142,'MachineLearining','DataScience','2018-03-09',2,18,null);
insert into dbo.tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, Authorid, Doctorid,
                        Notes)
values (144,198,'backend','web','2014-01-03',1,20,'Microsoft');
insert into dbo.tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, Authorid, Doctorid,
                        Notes)
values (100,120,'React','web','2012-03-24',3,19,null);
insert into dbo.tblEpisode (SeriesNumber, EpisodeNumber, EpisodeType, Title, EpisodeDate, Authorid, Doctorid,
                        Notes)
values (204,155,'nlp','DataScience','2019-02-27',5,17,null);


-- insert Rows into tblEpisodeCompanion Table
insert into dbo.tblEpisodeCompanion (CompanionID, EpisodeID)
values (1,2),(2,3),(3,4),(4,5),(5,6);

-- insert Rows into tblEpisodeEnemyTable
insert into tblEpisodeEnemy (EpisodeID, EnemyID)
values (2,1),(3,2),(4,3),(5,4),(6,5);

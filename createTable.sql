create table dbo.tblEnemy
(
	EnemyID int identity
		constraint tblEnemy_pk
			primary key nonclustered,
	EnemyName varchar(15) not null,
	Description varchar(100) not null
);
Go

create table dbo.tblAuthor
(
	AuthorID int identity
		constraint tblAuthor_pk
			primary key nonclustered,
	AuthorName varchar(15) not null
);
Go

create table dbo.tblCompanion
(
	companionID int identity
		constraint tblCompanion_pk
			primary key nonclustered,
	companionName varchar(15) not null,
	WhoPlayed varchar(15) not null
);
Go

create table dbo.tblDoctor
(
	DoctorID int identity
		constraint tblDoctor_pk
			primary key nonclustered,
	DoctorNumber int not null,
	DoctorName varchar(15) not null,
	BirthDate DATE,
	FirstEpisodeDate DATE not null,
	LastEpisodeDate DATE not null
);
Go


create table dbo.tblEpisode
(
	EpisodeID int identity
		constraint tblEpisode_pk
			primary key nonclustered,
	SeriesNumber int not null,
	EpisodeNumber int not null,
	EpisodeType varchar(20) not null,
	Title varchar(20),
	EpisodeDate DATE not null,
	Authorid int,
	Doctorid int,
	Notes varchar(50)

 CONSTRAINT Episode_Author_FK FOREIGN KEY (Authorid)  REFERENCES tblAuthor(AuthorID),
 CONSTRAINT Episode_Doctor_FK FOREIGN KEY (Doctorid)  REFERENCES tblDoctor(DoctorID)
);
Go


create table dbo.tblEpisodeCompanion
(
	EpisodeCompanionID int identity
		constraint tblEpisodeCompanion_pk
			primary key nonclustered,
	CompanionID int,
	EpisodeID int ,

    CONSTRAINT tblEpisodeCompanion_FK1 FOREIGN KEY (CompanionID)  REFERENCES tblCompanion(companionID),
    CONSTRAINT tblEpisodeCompanion_FK2 FOREIGN KEY (EpisodeID)  REFERENCES tblEpisode(EpisodeID)
);
Go

create table dbo.tblEpisodeEnemy
(
	EpisodeEnemyID int identity
		constraint tblEpisodeEnemy_pk
			primary key nonclustered,
	EpisodeID int,
	EnemyID int,

    CONSTRAINT tblEpisodeEnemy_FK1 FOREIGN KEY (EpisodeID)  REFERENCES tblEpisode(EpisodeID),
    CONSTRAINT tblEpisodeEnemy_FK2 FOREIGN KEY (EnemyID)  REFERENCES tblEnemy(EnemyID)
);
Go

-- use to drop views if exist ...
drop view if exists viewEpisodes;
GO

-- crete view that contain some specific column
create view viewEpisodes AS
    select AuthorName, DoctorName, dbo.fnCompanions(e.EpisodeID) As viewEpisodes
         , dbo.fnEnemies(e.EpisodeID) As Enemies
    from tblEpisode e inner join tblAuthor tA on e.Authorid = tA.AuthorID
    inner join tblDoctor tD on e.Doctorid = tD.DoctorID

-- Test the view was created
select * from viewEpisodes
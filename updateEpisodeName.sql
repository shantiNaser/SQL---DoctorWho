-- to check for Result
select * from dbo.tblEpisode

-- update row in tblEpisode with EpisodeId=2 to set a doctorid to null for check
update tblEpisode
set DoctorId = null --No doctor
where EpisodeId = 2

-- the Requirment Querey
update tblEpisode set Title = tblEpisode.Title + '_CANCELLED'
where Doctorid is null
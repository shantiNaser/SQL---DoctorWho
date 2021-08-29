-- use to drop views if exist ...
DROP PROCEDURE IF EXISTS spSummariseEpisodes;
GO

-- create Procedure that contain multiple select statment
CREATE PROCEDURE spSummariseEpisodes
AS BEGIN
    select Top(3) with ties companionName , count(companionName) As mostFrequentlyAppearingCompanions
    from tblCompanion
    group by companionName
    order by mostFrequentlyAppearingCompanions DESC;
    select Top(3) with ties EnemyName , count(EnemyName) As mostFrequentlyAppearingEnemy
    from tblEnemy
    group by EnemyName
    order by mostFrequentlyAppearingEnemy desc
END;

-- Test the procedure
EXEC spSummariseEpisodes;

select * from tblEnemy
select * from  tblCompanion

--  insert some Row to the tblcompanian and tblEnemy
insert into tblCompanion values ('Naser','khalid')
insert into tblEnemy values ('sudqi','senior programmer')
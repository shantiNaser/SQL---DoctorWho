
-- use to drop function if exist ...
DROP FUNCTION dbo.fnEnemies

-- create a function to print out companions names for a given episode
CREATE FUNCTION dbo.fnEnemies (@number int)
RETURNS CHAR(15) AS
BEGIN
    DECLARE @return_value CHAR(15);
    select @return_value = EnemyName from tblEnemy en
    inner join tblEpisodeEnemy epen on en.EnemyID = epen.EnemyID
    where epen.EpisodeID = @number
    RETURN @return_value
END;

-- Test my function
select dbo.fnEnemies(6)

-- to see the Correct value for Test from the two table
select * from tblEpisodeEnemy
select * from tblEnemy
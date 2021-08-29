
-- use to drop function if exist ...
DROP FUNCTION dbo.fnCompanions

-- create a function to print out companions names for a given episode
CREATE FUNCTION dbo.fnCompanions (@number int)
RETURNS CHAR(15) AS
BEGIN
    DECLARE @return_value CHAR(15);
    select @return_value = companionName from tblCompanion com
    inner join tblEpisodeCompanion epcom on com.companionID = epcom.CompanionID
    where epcom.EpisodeID = @number
    RETURN @return_value
END;

-- Test my function
select dbo.fnCompanions(3)

-- to see the Correct value for Test from the two table
select * from tblEpisodeCompanion
select * from tblCompanion
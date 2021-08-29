-- delete based on different table using joins operater ...
Delete from tblCompanion
from tblCompanion join tblEpisodeCompanion on tblCompanion.companionID = tblEpisodeCompanion.EpisodeCompanionID
where tblEpisodeCompanion.EpisodeCompanionID is null
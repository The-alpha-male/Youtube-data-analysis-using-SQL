/*
-- Query: SELECT
	channel_type,
    SUM(`video views`) AS total_views
FROM global_youtube_statistics
GROUP BY channel_type
ORDER BY total_views DESC
LIMIT 8
-- Date: 2024-10-08 00:22
*/
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Entertainment,3209938201882);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Music,2988623555043);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Education,753783541832);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (People,600769156024);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Games,558306582847);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Comedy,419255764331);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (Film,378184529775);
INSERT INTO `` (`channel_type`,`total_views`) VALUES (News,290046502481);

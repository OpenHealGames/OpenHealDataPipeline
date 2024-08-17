-- Query: extract_balls.sql
-- Purpose: This query extracts the balls lauched in several matches by matches.id
-- Expected Output: email, match_id, ball_id, launch_time, hit_time, launch_x, launch_y, hit_x, hit_y, mature_time, destroy_time, direction, speed, size

SELECT
    ud."Email" AS "email",
    m."Id" AS "match_id",
    b."Id" AS "ball_id",
    b."LaunchTime" AS "launch_time",
    b."HitTime" AS "hit_time",
    lcd."LaunchCoord_x" AS "launch_x",
    lcd."LaunchCoord_y" AS "launch_y",
    hcd."HitCoord_x" AS "hit_x",
    hcd."HitCoord_y" AS "hit_y"
    b."MatureTime" AS "mature_time",
    b."DestroyTime" AS "destroy_time",
    b."Direction" AS "direction",
    b."Speed" AS "speed",
    b."Size" AS "size",
FROM 
    "BallsData" b
INNER JOIN 
    "BubblesData" bd ON b."BubbleDataId" = bd."Id"
INNER JOIN 
    "Matches" m ON bd."MatchId" = m."Id"
INNER JOIN 
    "LaunchCoordsData" lcd ON b."Id" = lcd."BallDataId"
INNER JOIN 
    "HitCoordsData" hcd ON b."Id" = hcd."BallDataId"
INNER JOIN 
    "UsersData" ud ON m."UserDataId" = ud."Id"
WHERE 
    m."Id" IN (776, 777, 761, 781, 758, 760, 765, 767, 769)
ORDER BY 
    m."Id", b."Id";

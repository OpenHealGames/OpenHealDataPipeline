-- Query: extract_general_data.sql
-- Purpose: This query extracts general about matches such as Levels and Presets
-- Expected Output: match_id, user_id, Nickname, Email, PresetId, LevelId, Date.

SELECT 
    m."Id" AS "match_id",
    u."Id" AS "user_id",
    u."Nickname" AS "name",
    u."Email" AS "email",
    m."PresetId" AS "preset_id",
    m."LevelId" AS "level_id",
    m."Date" AS "match_date"
FROM 
    "Matches" m
INNER JOIN 
    "UsersData" u ON m."UserDataId" = u."Id"
WHERE 
    u."Email" IN ('ms01@ox.com', 'ms25@ox.com', 'ms26@ox.com')
ORDER BY 
    m."Email" DESC;


-- Query: extract_coord_by_hand.sql
-- Purpose: This query extracts hand coords for each hand
--  IMPORTANT: YOU NEED TO CHOOSE WHAT HAND YOU ARE LOOKING FOR.
-- Expected Output: email, match_id, coord_id, x, y

SELECT "u"."Email" AS "email",
hd."MatchId" AS "match_id",
h."Id" AS "coord_id",
h."Position_x" AS "x",
-- h."Position_y" AS "y" FROM "LeftHandPositions" AS "h"
h."Position_y" AS "y" FROM "RightHandPositions" AS "h"
INNER JOIN "HandsData" AS "hd" ON "h"."HandDataId" = "hd"."Id"
INNER JOIN "AspNetUsers" AS "u" ON "hd"."UserId" = "u"."Id"
WHERE "u"."Email" IN (
    'ms01@ox.com',
    'ms02@ox.com',
    'ms03@ox.com');
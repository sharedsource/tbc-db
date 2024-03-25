-- Spell List for Corporal Keeshan
DELETE FROM creature_spell_list WHERE Id = 34901;
INSERT INTO `creature_spell_list` (Id, Position, SpellId, Flags, TargetId, ScriptId, Availability, Probability, InitialMin, InitialMax, RepeatMin, RepeatMax, Comments) VALUES
(34901, 1, 21008, 0, 1, 0, 100, 0, 1500, 8000, 500, 8000, "Corporal Keeshan - Mocking Blow - current"),
(34901, 2, 11972, 0, 122, 0, 100, 0, 0, 9000, 7000, 16000, "Corporal Keeshan - Shield Bash - target casting");

DELETE FROM creature_spell_list_entry WHERE Id = 34901;
REPLACE INTO `creature_spell_list_entry` (Id, Name, ChanceSupportAction, ChanceRangedAttack) VALUES
(34901, "Redridge Mountains - Corporal Keeshan", 0, 0);

UPDATE creature_template SET SpellList = '34901' WHERE entry = '349';


-- Missing in Action Escort Path
SET @PATH := 349;

-- Dorius Stonetender escort quest waypoints
DELETE FROM waypoint_path_name WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path_name` (`PathId`, `Name`) VALUES (@PATH, 'Redridge Mountains - Corporal Keeshan - Missing in Action Escort Quest');

DELETE FROM waypoint_path WHERE `PathId` = @PATH;
INSERT INTO `waypoint_path` (`PathId`, `Point`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `WaitTime`, `ScriptId`) VALUES 
(@PATH,1,-8766.844,-2185.9216,141.6506,100,0,0),
(@PATH,2,-8774.07,-2190.3245,141.38376,100,0,0),
(@PATH,3,-8779.315,-2197.9807,140.47485,100,0,0),
(@PATH,4,-8790.892,-2189.766,141.9917,100,0,0),
(@PATH,5,-8790.756,-2189.8628,141.955,100,0,0),
(@PATH,6,-8823.581,-2185.7815,138.58961,100,0,0),
(@PATH,7,-8828.264,-2203.9255,140.55846,100,0,0),
(@PATH,8,-8818.004,-2219.0063,143.75673,100,0,0),
(@PATH,9,-8807.822,-2231.791,143.96361,100,0,0),
(@PATH,10,-8796.973,-2241.339,146.5825,100,0,0),
(@PATH,11,-8795.078,-2251.2554,146.91348,100,0,0),
(@PATH,12,-8787.119,-2256.1511,147.4368,100,0,0),
(@PATH,13,-8777.758,-2259.4233,149.10689,100,0,0),
(@PATH,14,-8764.966,-2260.1736,151.02263,100,0,0),
(@PATH,15,-8754.495,-2254.5356,152.32425,100,0,0),
(@PATH,16,-8746.58,-2253.1045,153.39935,100,0,0),
(@PATH,17,-8740.019,-2250.2322,154.45474,100,0,0),
(@PATH,18,-8719.401,-2244.2473,154.82637,100,0,0),
(@PATH,19,-8707.738,-2247.576,154.89973,100,0,0),
(@PATH,20,-8694.539,-2238.2454,153.10432,100,0,0),
(@PATH,21,-8679.134,-2244.6458,155.95357,100,0,0),
(@PATH,22,-8665.416,-2253.1733,154.80583,100,0,0),
(@PATH,23,-8674.354,-2271.882,155.73344,100,0,0),
(@PATH,24,-8673.997,-2288.0085,157.1967,100,0,0),
(@PATH,25,-8678.403,-2302.645,155.91632,100,45000,0), -- text via core
(@PATH,26,-8678.403,-2302.645,155.91632,100,0,0),  -- -- text via core (delayed)
(@PATH,27,-8682.1455,-2316.5408,155.91632,100,0,0),
(@PATH,28,-8686.747,-2327.673,155.93129,100,0,0),
(@PATH,29,-8693.854,-2336.2505,155.94586,100,0,0),
(@PATH,30,-8708.63,-2345.5146,155.92447,100,0,0),
(@PATH,31,-8734.435,-2361.1455,156.89653,100,0,0),
(@PATH,32,-8752.441,-2371.9746,157.74263,100,0,0),
(@PATH,33,-8761.661,-2382.5417,156.40488,100,0,0),
(@PATH,34,-8768.849,-2400.5403,155.99771,100,0,0),
(@PATH,35,-8778.222,-2418.537,156.53146,100,0,0),
(@PATH,36,-8785.939,-2443.3691,146.81758,100,0,0),
(@PATH,37,-8796.092,-2471.8123,135.14326,100,0,0),
(@PATH,38,-8821.335,-2486.2854,132.90987,100,0,0),
(@PATH,39,-8844.3545,-2502.0461,132.08698,100,0,0),
(@PATH,40,-8865.432,-2528.4514,134.55096,100,0,0),
(@PATH,41,-8871.886,-2550.9753,130.49649,100,0,0),
(@PATH,42,-8888.353,-2557.9573,130.49977,100,0,0),
(@PATH,43,-8904.108,-2569.2961,130.77728,100,0,0),
(@PATH,44,-8914.742,-2579.2563,132.35222,100,100,34901), -- dbscript
(@PATH,45,-8935.746,-2593.6924,132.44586,100,0,0),
(@PATH,46,-8949.141,-2598.4739,132.49171,100,0,0),
(@PATH,47,-8966.036,-2603.8823,132.44568,100,0,0),
(@PATH,48,-8984.339,-2605.8313,131.92635,100,0,0),
(@PATH,49,-8996.806,-2606.0598,129.8858,100,0,0),
(@PATH,50,-9009.562,-2598.7063,127.59421,100,0,0),
(@PATH,51,-9024.558,-2585.011,126.18065,100,0,0),
(@PATH,52,-9036.041,-2578.2249,125.0982,100,0,0),
(@PATH,53,-9049.506,-2557.8489,124.37793,100,0,0),
(@PATH,54,-9070.129,-2546.9004,122.731064,100,0,0),
(@PATH,55,-9088.147,-2534.3767,118.47043,100,0,0),
(@PATH,56,-9113.637,-2504.5166,116.868835,100,0,0),
(@PATH,57,-9125.956,-2490.5605,116.06512,100,0,0),
(@PATH,58,-9138.2,-2460.0605,111.526,100,0,0),
(@PATH,59,-9149.667,-2437.9543,107.305786,100,0,0),
(@PATH,60,-9160.987,-2425.5469,105.58731,100,0,0),
(@PATH,61,-9153.235,-2399.8943,102.31821,100,0,0),
(@PATH,62,-9158.77,-2379.7346,96.59657,100,0,0),
(@PATH,63,-9184.368,-2367.2593,91.15242,100,0,0),
(@PATH,64,-9205.551,-2340.7573,85.09314,100,0,0),
(@PATH,65,-9230.888,-2311.5483,79.14752,100,0,0),
(@PATH,66,-9247.1,-2299.83,74.86161,100,0,0),
(@PATH,67,-9266.5,-2296.6401,69.929794,100,0,0),
(@PATH,68,-9277.177,-2296.1987,68.11672,100,8000,34902), -- delay before completing
(@PATH,69,-9277.177,-2296.1987,68.11672,100,20000,0), -- finish quest via core
(@PATH,70,-9277.177,-2296.1987,68.11672,100,100,34903); -- despawn self

-- Using some custom waypoints to get correct delays between texts, most of the npc texts get called via core script to get player as text target ($n)

DELETE FROM `dbscripts_on_creature_movement` WHERE id IN (34901, 34902, 34903);
INSERT INTO dbscripts_on_creature_movement(id, delay, priority, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, datafloat, x, y, z, o, speed, condition_id, comments) VALUES
(34901,0,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Corporal Keeshan - SetRun On'), 
(34901,0,1,0,0,0,0,0,0,0,28,0,0,0,0,0,0,0,0,0,0,'Corporal Keeshan - Say Text'),
(34902,1000,1,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,'Corporal Keeshan - Say Text'),
(34903,0,0,18,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,'Corporal Keeshan - Despawn self');

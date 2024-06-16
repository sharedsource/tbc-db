
DELETE FROM creature WHERE guid IN(99281,99282,99283,99284);
DELETE FROM creature_movement WHERE id IN(99281,99282,99283,99284);

INSERT INTO creature(guid, id, map, spawnMask, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, MovementType) VALUES
('99281', '18689', '530', '1', '-2824.6406', '5341.999', '-5.305097', '0.31339800357818604000', '115200', '115200', '0', '4'),
('99282', '18689', '530', '1', '-3256.8145', '4317.475', '-18.463814','0', '115200', '115200', '0', '4'),
('99283', '18689', '530', '1', '-3293.9553', '5097.863', '-101.27105', '2.89264988899230960000', '115200', '115200', '0', '2'),
('99284', '18689', '530', '1', '-3875.4497', '4650.131', '-42.11236','0', '115200', '115200', '0', '4');

SET @SGGUID := 27000; -- Terokkar
INSERT INTO `spawn_group` (`Id`, `Name`, `Type`, `MaxCount`, `WorldState`, `Flags`) VALUES
(@SGGUID+1, 'Terokkar - Crippler', 0, 1, 0, 0);

INSERT INTO `spawn_group_spawn` (`Id`, `Guid`, `SlotId`) VALUES
(@SGGUID+1, 99281, -1),
(@SGGUID+1, 99282, -1),
(@SGGUID+1, 99283, -1),
(@SGGUID+1, 99284, -1),
(@SGGUID+1, 132811, -1);

SET @MOVID=99283;
-- GUID: Full: 0x204CB04240124040000074000019A4F1 Creature/0 R4908/S116 Map: 530 (Outland) Entry: 18689 (Crippler) Low: 1680625 PathType: None
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '-3293.9553', '5097.863', '-101.27105', '100', '0', '0', NULL),
(@MOVID + 0, '2', '-3298.6711', '5084.74', '-101.27105', '100', '0', '0', NULL),
(@MOVID + 0, '3', '-3327.4915', '5046.271', '-101.320595', '100', '0', '0', NULL),
(@MOVID + 0, '4', '-3359.0566', '5022.6255', '-101.0381', '100', '0', '0', NULL),
(@MOVID + 0, '5', '-3379.6716', '5035.1113', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '6', '-3398.9785', '5052.309', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '7', '-3420.3027', '5069.8647', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '8', '-3448.8838', '5062.016', '-100.99247', '100', '0', '0', NULL),
(@MOVID + 0, '9', '-3469.383', '5038.9624', '-101.021034', '100', '0', '0', NULL),
(@MOVID + 0, '10', '-3474.2957', '5021.3696', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '11', '-3469.2937', '4992.9453', '-101.27106', '100', '0', '0', NULL),
(@MOVID + 0, '12', '-3456.8582', '4985.3315', '-100.65714', '100', '0', '0', NULL),
(@MOVID + 0, '13', '-3417.7654', '4992.9663', '-101.28057', '100', '0', '0', NULL),
(@MOVID + 0, '14', '-3397.7249', '5007.166', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '15', '-3358.9236', '5010.456', '-101.294205', '100', '0', '0', NULL),
(@MOVID + 0, '16', '-3340.6648', '5010.94', '-101.294205', '100', '0', '0', NULL),
(@MOVID + 0, '17', '-3308.35', '4991.3257', '-101.16764', '100', '0', '0', NULL),
(@MOVID + 0, '18', '-3275.1423', '4971.148', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '19', '-3267.8313', '4960.5215', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '20', '-3254.784', '4933.81', '-101.1408', '100', '0', '0', NULL),
(@MOVID + 0, '21', '-3253.931', '4905.476', '-101.27105', '100', '0', '0', NULL),
(@MOVID + 0, '22', '-3250.775', '4881.444', '-101.344955', '100', '0', '0', NULL),
(@MOVID + 0, '23', '-3250.761', '4852.9297', '-101.344955', '100', '0', '0', NULL),
(@MOVID + 0, '24', '-3266.307', '4845.1494', '-101.344955', '100', '0', '0', NULL),
(@MOVID + 0, '25', '-3305.3284', '4847.7876', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '26', '-3345.2297', '4855.796', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '27', '-3374.2146', '4864.6772', '-101.09141', '100', '0', '0', NULL),
(@MOVID + 0, '28', '-3399.7659', '4882.913', '-101.11162', '100', '0', '0', NULL),
(@MOVID + 0, '29', '-3437.9155', '4883.5156', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '30', '-3442.5227', '4906.883', '-100.52104', '100', '0', '0', NULL),
(@MOVID + 0, '31', '-3453.1995', '4926.5747', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '32', '-3455.8594', '4941.6846', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '33', '-3450.764', '4960.095', '-100.99699', '100', '0', '0', NULL),
(@MOVID + 0, '34', '-3438.6992', '4984.288', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '35', '-3414.2432', '5003.515', '-101.24758', '100', '0', '0', NULL),
(@MOVID + 0, '36', '-3374.188', '5010.5063', '-101.271034', '100', '0', '0', NULL),
(@MOVID + 0, '37', '-3355.361', '5007.277', '-101.294205', '100', '0', '0', NULL),
(@MOVID + 0, '38', '-3335.0876', '5014.1724', '-101.294205', '100', '0', '0', NULL),
(@MOVID + 0, '39', '-3324.8845', '5023.9116', '-101.36441', '100', '0', '0', NULL),
(@MOVID + 0, '40', '-3317.44', '5047.6846', '-101.320595', '100', '0', '0', NULL),
(@MOVID + 0, '41', '-3317.9211', '5069.1626', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '42', '-3306.3794', '5096.428', '-101.27104', '100', '0', '0', NULL),
(@MOVID + 0, '43', '-3293.9553', '5097.863', '-101.27105', '100', '0', '0', NULL);

SET @MOVID=99282;
-- GUID: Full: 0x204CB04240124040000049000004816B Creature/0 R4908/S73 Map: 530 (Outland) Entry: 18689 (Crippler) Low: 295275 PathType: Invalid
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '-3256.8145', '4317.475', '-18.463814', '100', '0', '0', NULL),
(@MOVID + 0, '2', '-3254.035', '4343.8003', '-19.643366', '100', '0', '0', NULL),
(@MOVID + 0, '3', '-3258.7512', '4382.806', '-21.07652', '100', '0', '0', NULL),
(@MOVID + 0, '4', '-3251.7961', '4416.5024', '-21.956356', '100', '0', '0', NULL),
(@MOVID + 0, '5', '-3257.6016', '4453.762', '-22.531776', '100', '0', '0', NULL),
(@MOVID + 0, '6', '-3266.8845', '4485.303', '-21.34138', '100', '0', '0', NULL),
(@MOVID + 0, '7', '-3264.565', '4520.495', '-21.709793', '100', '0', '0', NULL),
(@MOVID + 0, '8', '-3259.9238', '4556.233', '-21.5879', '100', '0', '0', NULL),
(@MOVID + 0, '9', '-3258.31', '4584.0903', '-21.082523', '100', '0', '0', NULL),
(@MOVID + 0, '10', '-3258.632', '4614.4644', '-20.7576', '100', '0', '0', NULL),
(@MOVID + 0, '11', '-3239.89', '4642.12', '-21.201035', '100', '0', '0', NULL),
(@MOVID + 0, '12', '-3198.2417', '4637.7354', '-22.220335', '100', '0', '0', NULL),
(@MOVID + 0, '13', '-3167.6091', '4626.883', '-22.259218', '100', '0', '0', NULL),
(@MOVID + 0, '14', '-3138.5754', '4588.3154', '-20.926374', '100', '0', '0', NULL),
(@MOVID + 0, '15', '-3130.3843', '4562.902', '-20.9898', '100', '0', '0', NULL),
(@MOVID + 0, '16', '-3123.9407', '4530.9985', '-21.795967', '100', '0', '0', NULL),
(@MOVID + 0, '17', '-3114.1335', '4512.441', '-22.170967', '100', '0', '0', NULL),
(@MOVID + 0, '18', '-3093.4014', '4486.225', '-21.155115', '100', '0', '0', NULL),
(@MOVID + 0, '19', '-3066.836', '4466.8115', '-22.800623', '100', '0', '0', NULL),
(@MOVID + 0, '20', '-3040.5803', '4462.1274', '-20.991266', '100', '0', '0', NULL),
(@MOVID + 0, '21', '-3010.8962', '4476.9966', '-21.451103', '100', '0', '0', NULL),
(@MOVID + 0, '22', '-2975.633', '4482.086', '-20.263174', '100', '0', '0', NULL),
(@MOVID + 0, '23', '-2951.2888', '4506.761', '-20.242132', '100', '0', '0', NULL),
(@MOVID + 0, '24', '-2930.4827', '4539.771', '-18.442898', '100', '0', '0', NULL),
(@MOVID + 0, '25', '-2901.2', '4546.2944', '-15.803982', '100', '0', '0', NULL),
(@MOVID + 0, '26', '-2886.0918', '4577.843', '-12.216228', '100', '0', '0', NULL),
(@MOVID + 0, '27', '-2882.6633', '4608.761', '-15.478703', '100', '0', '0', NULL),
(@MOVID + 0, '28', '-2919.3228', '4618.386', '-19.345703', '100', '0', '0', NULL),
(@MOVID + 0, '29', '-2960.7837', '4621.754', '-20.34035', '100', '0', '0', NULL),
(@MOVID + 0, '30', '-2990.466', '4653.663', '-21.263702', '100', '0', '0', NULL),
(@MOVID + 0, '31', '-3027.6042', '4682.79', '-21.848665', '100', '0', '0', NULL),
(@MOVID + 0, '32', '-3056.5403', '4716.294', '-21.565819', '100', '0', '0', NULL),
(@MOVID + 0, '33', '-3054.6497', '4751.0166', '-22.695204', '100', '0', '0', NULL),
(@MOVID + 0, '34', '-3044.6184', '4773.7886', '-21.758755', '100', '0', '0', NULL),
(@MOVID + 0, '35', '-3016.6733', '4794.81', '-19.729502', '100', '0', '0', NULL),
(@MOVID + 0, '36', '-3007.9094', '4827.549', '-19.368835', '100', '0', '0', NULL),
(@MOVID + 0, '37', '-2989.32', '4844.5273', '-21.545094', '100', '0', '0', NULL),
(@MOVID + 0, '38', '-2947.6921', '4850.552', '-22.150948', '100', '0', '0', NULL),
(@MOVID + 0, '39', '-2925.3755', '4858.4487', '-21.170254', '100', '0', '0', NULL),
(@MOVID + 0, '40', '-2916.1475', '4888.3853', '-20.650711', '100', '0', '0', NULL),
(@MOVID + 0, '41', '-2902.9602', '4908.3228', '-21.043674', '100', '0', '0', NULL),
(@MOVID + 0, '42', '-2873.6104', '4934.4385', '-20.764505', '100', '0', '0', NULL),
(@MOVID + 0, '43', '-2839.1516', '4929.944', '-18.760553', '100', '0', '0', NULL),
(@MOVID + 0, '44', '-2812.1714', '4919.3193', '-16.14181', '100', '0', '0', NULL),
(@MOVID + 0, '45', '-2778.7852', '4927.7593', '-13.358256', '100', '0', '0', NULL),
(@MOVID + 0, '46', '-2757.3987', '4948.7607', '-9.936063', '100', '0', '0', NULL),
(@MOVID + 0, '47', '-2731.3887', '4962.561', '-7.8910475', '100', '0', '0', NULL),
(@MOVID + 0, '48', '-2720.7876', '4996.5215', '-6.649518', '100', '0', '0', NULL),
(@MOVID + 0, '49', '-2731.3887', '4962.561', '-7.8910475', '100', '0', '0', NULL),
(@MOVID + 0, '50', '-2757.3987', '4948.7607', '-9.936063', '100', '0', '0', NULL),
(@MOVID + 0, '51', '-2778.7852', '4927.7593', '-13.358256', '100', '0', '0', NULL),
(@MOVID + 0, '52', '-2754.739', '4950.4175', '-9.655545', '100', '0', '0', NULL);

SET @MOVID=99281;
-- GUID: Full: 0x204CB042401240400000740000167126 Creature/0 R4908/S116 Map: 530 (Outland) Entry: 18689 (Crippler) Low: 1470758 PathType: Invalid
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '-2824.6406', '5341.999', '-5.305097', '100', '0', '0', NULL),
(@MOVID + 0, '2', '-2859.1904', '5307.306', '-9.422635', '100', '0', '0', NULL),
(@MOVID + 0, '3', '-2892.6616', '5275.903', '-12.259908', '100', '0', '0', NULL),
(@MOVID + 0, '4', '-2909.7717', '5247.944', '-13.945165', '100', '0', '0', NULL),
(@MOVID + 0, '5', '-2936.0005', '5217.09', '-15.314562', '100', '0', '0', NULL),
(@MOVID + 0, '6', '-2947.69', '5201.0293', '-16.349718', '100', '0', '0', NULL),
(@MOVID + 0, '7', '-2984.7317', '5174.249', '-21.172235', '100', '0', '0', NULL),
(@MOVID + 0, '8', '-3025.2588', '5175.6113', '-20.242842', '100', '0', '0', NULL),
(@MOVID + 0, '9', '-3051.351', '5198.167', '-21.967117', '100', '0', '0', NULL),
(@MOVID + 0, '10', '-3050.798', '5221.8657', '-21.492508', '100', '0', '0', NULL),
(@MOVID + 0, '11', '-3043.9238', '5240.6543', '-21.046661', '100', '0', '0', NULL),
(@MOVID + 0, '12', '-3026.4348', '5280.4907', '-19.52446', '100', '0', '0', NULL),
(@MOVID + 0, '13', '-3015.3162', '5302.992', '-18.152803', '100', '0', '0', NULL),
(@MOVID + 0, '14', '-3004.1487', '5332.69', '-16.937716', '100', '0', '0', NULL),
(@MOVID + 0, '15', '-2983.0417', '5369.3223', '-15.139718', '100', '0', '0', NULL),
(@MOVID + 0, '16', '-2974.8489', '5405.607', '-14.141501', '100', '0', '0', NULL),
(@MOVID + 0, '17', '-2983.0247', '5452.7754', '-12.38741', '100', '0', '0', NULL),
(@MOVID + 0, '18', '-2993.0554', '5490.859', '-12.151731', '100', '0', '0', NULL),
(@MOVID + 0, '19', '-3024.314', '5513.785', '-13.071418', '100', '0', '0', NULL),
(@MOVID + 0, '20', '-3061.0845', '5505.0425', '-16.609165', '100', '0', '0', NULL),
(@MOVID + 0, '21', '-3095.2266', '5486.86', '-19.003777', '100', '0', '0', NULL),
(@MOVID + 0, '22', '-3124.7576', '5447.964', '-21.598934', '100', '0', '0', NULL),
(@MOVID + 0, '23', '-3151.8525', '5411.971', '-22.039225', '100', '0', '0', NULL),
(@MOVID + 0, '24', '-3170.7114', '5380.7007', '-21.769976', '100', '0', '0', NULL),
(@MOVID + 0, '25', '-3186.1106', '5350.6274', '-21.312376', '100', '0', '0', NULL),
(@MOVID + 0, '26', '-3220.5076', '5350.027', '-22.063103', '100', '0', '0', NULL),
(@MOVID + 0, '27', '-3250.5657', '5331.2803', '-21.342585', '100', '0', '0', NULL),
(@MOVID + 0, '28', '-3289.8674', '5334.016', '-21.227386', '100', '0', '0', NULL),
(@MOVID + 0, '29', '-3317.3865', '5353.2983', '-20.112652', '100', '0', '0', NULL),
(@MOVID + 0, '30', '-3318.8123', '5390.6274', '-19.299305', '100', '0', '0', NULL),
(@MOVID + 0, '31', '-3315.0715', '5422.318', '-16.465496', '100', '0', '0', NULL),
(@MOVID + 0, '32', '-3306.2246', '5443.27', '-14.519246', '100', '0', '0', NULL),
(@MOVID + 0, '33', '-3297.7288', '5456.248', '-14.536844', '100', '0', '0', NULL),
(@MOVID + 0, '34', '-3285.987', '5488.469', '-12.568769', '100', '0', '0', NULL),
(@MOVID + 0, '35', '-3282.2336', '5517.936', '-10.938028', '100', '0', '0', NULL),
(@MOVID + 0, '36', '-3278.028', '5556.4033', '-11.170949', '100', '0', '0', NULL),
(@MOVID + 0, '37', '-3267.673', '5579.1074', '-7.8376484', '100', '0', '0', NULL),
(@MOVID + 0, '38', '-3278.028', '5556.4033', '-11.170949', '100', '0', '0', NULL),
(@MOVID + 0, '39', '-3282.2336', '5517.936', '-10.938028', '100', '0', '0', NULL),
(@MOVID + 0, '40', '-3280.8828', '5533.3647', '-11.994069', '100', '0', '0', NULL);

SET @MOVID=99284;
-- GUID: Full: 0x204CB04240124040000074000025F112 Creature/0 R4908/S116 Map: 530 (Outland) Entry: 18689 (Crippler) Low: 2486546 PathType: ExactPath
INSERT INTO creature_movement (Id, Point, PositionX, PositionY, PositionZ, Orientation, WaitTime, ScriptId, Comment) VALUES
(@MOVID + 0, '1', '-3875.4497', '4650.131', '-42.11236', '100', '0', '0', NULL),
(@MOVID + 0, '2', '-3846.9878', '4626.6274', '-26.532558', '100', '0', '0', NULL),
(@MOVID + 0, '3', '-3850.1858', '4591.7354', '-23.011652', '100', '0', '0', NULL),
(@MOVID + 0, '4', '-3842.4167', '4549.9136', '-21.062431', '100', '0', '0', NULL),
(@MOVID + 0, '5', '-3814.9731', '4523.9673', '-19.461882', '100', '0', '0', NULL),
(@MOVID + 0, '6', '-3782.8733', '4489.9697', '-13.591888', '100', '0', '0', NULL),
(@MOVID + 0, '7', '-3767.322', '4470.696', '-7.50058', '100', '0', '0', NULL),
(@MOVID + 0, '8', '-3734.5618', '4444.711', '-7.341505', '100', '0', '0', NULL),
(@MOVID + 0, '9', '-3712.5496', '4425.413', '-6.54467', '100', '0', '0', NULL),
(@MOVID + 0, '10', '-3687.6245', '4405.133', '-6.92953', '100', '0', '0', NULL),
(@MOVID + 0, '11', '-3664.134', '4394.2056', '-9.445669', '100', '0', '0', NULL),
(@MOVID + 0, '12', '-3621.6335', '4389.444', '-12.918582', '100', '0', '0', NULL),
(@MOVID + 0, '13', '-3586.7668', '4411.7266', '-15.576347', '100', '0', '0', NULL),
(@MOVID + 0, '14', '-3542.3586', '4417.4004', '-17.656189', '100', '0', '0', NULL),
(@MOVID + 0, '15', '-3523.735', '4451.1636', '-20.624914', '100', '0', '0', NULL),
(@MOVID + 0, '16', '-3524.802', '4475.2207', '-19.32156', '100', '0', '0', NULL),
(@MOVID + 0, '17', '-3521.8062', '4522.117', '-20.624693', '100', '0', '0', NULL),
(@MOVID + 0, '18', '-3524.5476', '4561.252', '-20.863884', '100', '0', '0', NULL),
(@MOVID + 0, '19', '-3553.0168', '4593.233', '-22.022312', '100', '0', '0', NULL),
(@MOVID + 0, '20', '-3590.7925', '4618.146', '-21.245558', '100', '0', '0', NULL),
(@MOVID + 0, '21', '-3619.6145', '4640.376', '-21.40717', '100', '0', '0', NULL),
(@MOVID + 0, '22', '-3655.25', '4640.37', '-17.232233', '100', '0', '0', NULL),
(@MOVID + 0, '23', '-3689.681', '4637.701', '-17.805454', '100', '0', '0', NULL),
(@MOVID + 0, '24', '-3721.7708', '4619.182', '-17.786413', '100', '0', '0', NULL),
(@MOVID + 0, '25', '-3731.938', '4592.934', '-16.89849', '100', '0', '0', NULL),
(@MOVID + 0, '26', '-3738.3376', '4550.426', '-15.094055', '100', '0', '0', NULL),
(@MOVID + 0, '27', '-3729.1038', '4515.94', '-12.397029', '100', '0', '0', NULL),
(@MOVID + 0, '28', '-3708.2634', '4478.3247', '-10.397326', '100', '0', '0', NULL),
(@MOVID + 0, '29', '-3676.0764', '4455.365', '-12.43794', '100', '0', '0', NULL),
(@MOVID + 0, '30', '-3652.5137', '4433.709', '-14.14632', '100', '0', '0', NULL),
(@MOVID + 0, '31', '-3625.8481', '4411.93', '-14.062111', '100', '0', '0', NULL),
(@MOVID + 0, '32', '-3614.3416', '4396.376', '-13.452029', '100', '0', '0', NULL),
(@MOVID + 0, '33', '-3584.2427', '4379.2197', '-12.676548', '100', '0', '0', NULL),
(@MOVID + 0, '34', '-3546.9563', '4365.593', '-11.566714', '100', '0', '0', NULL),
(@MOVID + 0, '35', '-3511.1753', '4347.2417', '-15.310034', '100', '0', '0', NULL),
(@MOVID + 0, '36', '-3513.1133', '4348.2627', '-16.579077', '100', '0', '0', NULL),
(@MOVID + 0, '37', '-3512.2227', '4347.8066', '-15.829077', '100', '0', '0', NULL),
(@MOVID + 0, '38', '-3511.332', '4347.3506', '-15.204077', '100', '0', '0', NULL),
(@MOVID + 0, '39', '-3511.1753', '4347.2417', '-15.310034', '100', '0', '0', NULL),
(@MOVID + 0, '40', '-3510.5215', '4346.4854', '-14.954077', '100', '0', '0', NULL),
(@MOVID + 0, '41', '-3509.8672', '4345.7285', '-14.204077', '100', '0', '0', NULL),
(@MOVID + 0, '42', '-3509.213', '4344.9717', '-13.579077', '100', '0', '0', NULL),
(@MOVID + 0, '43', '-3505.9414', '4341.1875', '-13.954077', '100', '0', '0', NULL),
(@MOVID + 0, '44', '-3504.6328', '4339.674', '-14.204077', '100', '0', '0', NULL),
(@MOVID + 0, '45', '-3503.3242', '4338.16', '-14.454077', '100', '0', '0', NULL),
(@MOVID + 0, '46', '-3496.127', '4329.835', '-14.192715', '100', '0', '0', NULL),
(@MOVID + 0, '47', '-3493.5098', '4326.8076', '-13.817715', '100', '0', '0', NULL),
(@MOVID + 0, '48', '-3491.5469', '4324.537', '-13.567715', '100', '0', '0', NULL),
(@MOVID + 0, '49', '-3489.584', '4322.2666', '-13.317715', '100', '0', '0', NULL),
(@MOVID + 0, '50', '-3488.9297', '4321.51', '-13.067715', '100', '0', '0', NULL),
(@MOVID + 0, '51', '-3486.9668', '4319.2393', '-12.817715', '100', '0', '0', NULL),
(@MOVID + 0, '52', '-3485.0952', '4317.025', '-12.4233055', '100', '0', '0', NULL),
(@MOVID + 0, '53', '-3448.323', '4309.3726', '-16.151451', '100', '0', '0', NULL),
(@MOVID + 0, '54', '-3414.2864', '4302.724', '-18.51866', '100', '0', '0', NULL),
(@MOVID + 0, '55', '-3378.972', '4302.817', '-19.137342', '100', '0', '0', NULL);
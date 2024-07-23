use amazondatabase;
CREATE TABLE mytable(
   Region           VARCHAR(33) NOT NULL 
  ,Country          VARCHAR(32) NOT NULL
  ,ItemType      VARCHAR(15) NOT NULL
  ,Sales_Channel  VARCHAR(7) NOT NULL
  ,OrderPriority VARCHAR(1) NOT NULL
  ,OrderDate     DATE  NOT NULL
  ,OrderID       INTEGER  NOT NULL PRIMARY KEY
  ,ShipDate      DATE  NOT NULL
  ,UnitsSold     INTEGER  NOT NULL
  ,UnitPrice     NUMERIC(6,2) NOT NULL
  ,UnitCost      NUMERIC(6,2) NOT NULL
  ,TotalRevenue  NUMERIC(10,2) NOT NULL
  ,TotalCost     NUMERIC(10,2) NOT NULL
  ,TotalProfit   NUMERIC(10,2) NOT NULL
);
INSERT INTO mytable (
    Region, Country, ItemType, Sales_Channel, OrderPriority, 
    OrderDate, OrderId, ShipDate, UnitsSold, UnitPrice, 
    UnitCost, TotalRevenue, TotalCost, TotalProfit
) VALUES 
('Australia and Oceania', 'Tuvalu', 'Baby Food', 'Offline', 'H', '2010-05-28', 669165933, '2010-06-27', 9925, 255.28, 159.42, 2533654.00, 1582243.50, 951410.50),
('Central America and the Caribbean', 'Grenada', 'Cereal', 'Online', 'C', '2012-08-22', 963881480, '2012-09-15', 2804, 205.70, 117.11, 576782.80, 328376.44, 248406.36),
('Europe', 'Russia', 'Office Supplies', 'Offline', 'L', '2014-05-02', 341417157, '2014-05-08', 1779, 651.21, 524.96, 1158502.59, 933903.84, 224598.75),
('Sub-Saharan Africa', 'Sao Tome and Principe', 'Fruits', 'Online', 'C', '2014-06-20', 514321792, '2014-07-05', 8102, 9.33, 6.92, 75591.66, 56065.84, 19525.82),
('Sub-Saharan Africa', 'Rwanda', 'Office Supplies', 'Offline', 'L', '2013-02-01', 115456712, '2013-02-06', 5062, 651.21, 524.96, 3296425.02, 2657347.52, 639077.50),
('Australia and Oceania', 'Solomon Islands', 'Baby Food', 'Online', 'C', '2015-02-04', 547995746, '2015-02-21', 2974, 255.28, 159.42, 759202.72, 474115.08, 285087.64),
('Sub-Saharan Africa', 'Angola', 'Household', 'Offline', 'M', '2011-04-23', 135425221, '2011-04-27', 4187, 668.27, 502.54, 2798046.49, 2104134.98, 693911.51),
('Sub-Saharan Africa', 'Burkina Faso', 'Vegetables', 'Online', 'H', '2012-07-17', 871543967, '2012-07-27', 8082, 154.06, 90.93, 1245112.92, 734896.26, 510216.66),
('Sub-Saharan Africa', 'Republic of the Congo', 'Personal Care', 'Offline', 'M', '2015-07-14', 770463311, '2015-08-25', 6070, 81.73, 56.67, 496101.10, 343986.90, 152114.20),
('Sub-Saharan Africa', 'Senegal', 'Cereal', 'Online', 'H', '2014-04-18', 616607081, '2014-05-30', 6593, 205.70, 117.11, 1356180.10, 772106.23, 584073.87),
('Asia', 'Kyrgyzstan', 'Vegetables', 'Online', 'H', '2011-06-24', 814711606, '2011-07-12', 124, 154.06, 90.93, 19103.44, 11275.32, 7828.12),
('Sub-Saharan Africa', 'Cape Verde', 'Clothes', 'Offline', 'H', '2014-08-02', 939825713, '2014-08-19', 4168, 109.28, 35.84, 455479.04, 149381.12, 306097.92),
('Asia', 'Bangladesh', 'Clothes', 'Online', 'L', '2017-01-13', 187310731, '2017-03-01', 8263, 109.28, 35.84, 902980.64, 296145.92, 606834.72),
('Central America and the Caribbean', 'Honduras', 'Household', 'Offline', 'H', '2017-02-08', 522840487, '2017-02-13', 8974, 668.27, 502.54, 5997054.98, 4509793.96, 1487261.02),
('Asia', 'Mongolia', 'Personal Care', 'Offline', 'C', '2014-02-19', 832401311, '2014-02-23', 4901, 81.73, 56.67, 400558.73, 277739.67, 122819.06),
('Europe', 'Bulgaria', 'Clothes', 'Online', 'M', '2012-04-23', 972292029, '2012-06-03', 1673, 109.28, 35.84, 182825.44, 59960.32, 122865.12),
('Asia', 'Sri Lanka', 'Cosmetics', 'Offline', 'M', '2016-11-19', 419123971, '2016-12-18', 6952, 437.20, 263.33, 3039414.40, 1830670.16, 1208744.24),
('Sub-Saharan Africa', 'Cameroon', 'Beverages', 'Offline', 'C', '2015-04-01', 519820964, '2015-04-18', 5430, 47.45, 31.79, 257653.50, 172619.70, 85033.80),
('Asia', 'Turkmenistan', 'Household', 'Offline', 'L', '2010-12-30', 441619336, '2011-01-20', 3830, 668.27, 502.54, 2559474.10, 1924728.20, 634745.90),
('Australia and Oceania', 'East Timor', 'Meat', 'Online', 'L', '2012-07-31', 322067916, '2012-09-11', 5908, 421.89, 364.69, 2492526.12, 2154588.52, 337937.60),
('Europe', 'Norway', 'Baby Food', 'Online', 'L', '2014-05-14', 819028031, '2014-06-28', 7450, 255.28, 159.42, 1901836.00, 1187679.00, 714157.00),
('Europe', 'Portugal', 'Baby Food', 'Online', 'H', '2015-07-31', 860673511, '2015-09-03', 1273, 255.28, 159.42, 324971.44, 202941.66, 122029.78),
('Central America and the Caribbean', 'Honduras', 'Snacks', 'Online', 'L', '2016-06-30', 795490682, '2016-07-26', 2225, 152.58, 97.44, 339490.50, 216804.00, 122686.50),
('Australia and Oceania', 'New Zealand', 'Fruits', 'Online', 'H', '2014-09-08', 142278373, '2014-10-04', 2187, 9.33, 6.92, 20404.71, 15134.04, 5270.67),
('Europe', 'Moldova', 'Personal Care', 'Online', 'L', '2016-05-07', 740147912, '2016-05-10', 5070, 81.73, 56.67, 414371.10, 287316.90, 127054.20),
('Europe', 'France', 'Cosmetics', 'Online', 'H', '2017-05-22', 898523128, '2017-06-05', 1815, 437.20, 263.33, 793938.00, 477234.45, 316703.55);

INSERT INTO mytable (
    Region, Country, ItemType, Sales_Channel, OrderPriority, 
    OrderDate, OrderId, ShipDate, UnitsSold, UnitPrice, 
    UnitCost, TotalRevenue, TotalCost, TotalProfit
) VALUES 
('Europe', 'Montenegro', 'Clothes', 'Online', 'C', '2013-11-04', 599512591, '2013-12-13', 7752, 109.28, 35.84, 847759.66, 277860.30, 569899.36),
('Middle East and North Africa', 'Libya', 'Clothes', 'Offline', 'H', '2016-06-22', 118697599, '2016-07-02', 4421, 109.28, 35.84, 483223.88, 158426.64, 324797.24),
('Australia and Oceania', 'Fiji', 'Clothes', 'Offline', 'M', '2014-09-13', 122685927, '2014-09-22', 9723, 109.28, 35.84, 1062446.44, 348315.52, 714130.92),
('Sub-Saharan Africa', 'Guinea', 'Clothes', 'Offline', 'M', '2010-06-09', 943705994, '2010-06-18', 9907, 109.28, 35.84, 1083088.56, 354958.88, 727129.68),
('Sub-Saharan Africa', 'Democratic Republic of the Congo', 'Personal Care', 'Offline', 'C', '2015-11-23', 548718528, '2015-12-03', 5717, 81.73, 56.67, 466978.41, 323974.39, 143004.02),
('Europe', 'Lithuania', 'Clothes', 'Offline', 'M', '2012-05-28', 172529691, '2012-06-18', 1428, 109.28, 35.84, 155980.23, 51184.23, 104796.00),
('Central America and the Caribbean', 'Trinidad and Tobago', 'Cosmetics', 'Online', 'C', '2016-07-29', 631512659, '2016-09-08', 2716, 437.20, 263.33, 1187312.00, 714935.40, 472376.60),
('Sub-Saharan Africa', 'Liberia', 'Cereal', 'Offline', 'H', '2010-10-24', 914017943, '2010-11-09', 3688, 205.70, 117.11, 758221.60, 431672.24, 326549.36),
('Middle East and North Africa', 'Iran', 'Office Supplies', 'Offline', 'M', '2010-01-01', 620748346, '2010-01-31', 2518, 651.21, 524.96, 1639136.78, 1321512.80, 317623.98),
('Europe', 'Latvia', 'Meat', 'Online', 'C', '2016-05-17', 994583775, '2016-06-11', 6012, 421.89, 364.69, 2536648.68, 2191143.78, 345504.90),
('Europe', 'Monaco', 'Cereal', 'Offline', 'M', '2013-12-14', 500820325, '2013-12-18', 1572, 205.70, 117.11, 323480.40, 184075.92, 139404.48),
('Central America and the Caribbean', 'Honduras', 'Household', 'Offline', 'H', '2016-05-28', 119916091, '2016-06-07', 7646, 668.27, 502.54, 5110523.42, 3842638.84, 1267884.58),
('Sub-Saharan Africa', 'Burundi', 'Baby Food', 'Online', 'M', '2014-12-21', 993115331, '2015-01-21', 2417, 255.28, 159.42, 616537.76, 385526.94, 231010.82),
('Europe', 'Bosnia and Herzegovina', 'Beverages', 'Offline', 'L', '2015-10-23', 738301085, '2015-11-14', 9124, 47.45, 31.79, 432693.80, 290612.96, 142080.84),
('Europe', 'Poland', 'Cosmetics', 'Online', 'C', '2014-12-25', 994054802, '2015-02-07', 4427, 437.20, 263.33, 1935484.40, 1165431.91, 769052.49),
('Central America and the Caribbean', 'Honduras', 'Cereal', 'Offline', 'L', '2016-08-16', 610077754, '2016-09-01', 4025, 205.70, 117.11, 827942.50, 471632.75, 356309.75),
('Europe', 'Albania', 'Meat', 'Offline', 'C', '2015-06-06', 836213421, '2015-06-11', 3281, 421.89, 364.69, 1384251.09, 1196218.89, 188032.20),
('Central America and the Caribbean', 'Saint Kitts and Nevis', 'Vegetables', 'Online', 'H', '2011-10-30', 158518418, '2011-11-11', 6829, 154.06, 90.93, 1052117.74, 620111.97, 432005.77),
('Central America and the Caribbean', 'Saint Lucia', 'Office Supplies', 'Online', 'M', '2012-03-28', 634222492, '2012-04-17', 8258, 651.21, 524.96, 5378083.18, 4334347.68, 1043735.50),
('Middle East and North Africa', 'Iran', 'Baby Food', 'Online', 'L', '2010-07-08', 111043242, '2010-08-08', 5200, 255.28, 159.42, 1327456.00, 828984.00, 498472.00),
('Sub-Saharan Africa', 'Mauritius', 'Cosmetics', 'Online', 'C', '2011-11-01', 802037379, '2011-12-14', 3857, 437.20, 263.33, 1687080.40, 1015520.81, 671559.59),
('Middle East and North Africa', 'Somalia', 'Clothes', 'Offline', 'H', '2014-01-26', 634051458, '2014-01-28', 3114, 109.28, 35.84, 340374.24, 111608.16, 228766.08),
('Sub-Saharan Africa', 'South Sudan', 'Beverages', 'Offline', 'H', '2016-09-19', 950731376, '2016-10-02', 7326, 47.45, 31.79, 347642.70, 232898.54, 114744.16),
('Sub-Saharan Africa', 'Zambia', 'Baby Food', 'Offline', 'M', '2015-04-18', 630982965, '2015-05-18', 5008, 255.28, 159.42, 1278562.24, 798733.44, 479828.80),
('Europe', 'Macedonia', 'Fruits', 'Online', 'M', '2015-07-21', 187617737, '2015-08-08', 3316, 9.33, 6.92, 30935.88, 22947.68, 7988.20),
('Middle East and North Africa', 'Algeria', 'Vegetables', 'Offline', 'M', '2015-06-25', 949332730, '2015-07-03', 3281, 154.06, 90.93, 505331.86, 298234.33, 207097.53),
('Australia and Oceania', 'Kiribati', 'Fruits', 'Online', 'H', '2012-12-14', 375927393, '2013-01-23', 3701, 9.33, 6.92, 34445.33, 25595.92, 8849.41),
('Australia and Oceania', 'Kiribati', 'Clothes', 'Online', 'H', '2010-03-10', 584126957, '2010-03-16', 4900, 109.28, 35.84, 535472.00, 175616.00, 359856.00),
('Europe', 'Ukraine', 'Cosmetics', 'Offline', 'H', '2011-08-24', 737077710, '2011-08-25', 1867, 437.20, 263.33, 816172.40, 491650.11, 324522.29),
('Australia and Oceania', 'Tonga', 'Office Supplies', 'Online', 'M', '2015-05-23', 244617564, '2015-06-24', 7602, 651.21, 524.96, 4950054.42, 3989733.92, 960321.50),
('Sub-Saharan Africa', 'Cote d"Ivoire', 'Meat', 'Offline', 'L', '2011-12-02', 704503009, '2011-12-28', 2187, 421.89, 364.69, 923317.43, 797636.03, 125681.40),
('Sub-Saharan Africa', 'Eritrea', 'Cosmetics', 'Offline', 'C', '2014-12-20', 877471007, '2015-01-04', 5313, 437.20, 263.33, 2322693.60, 1399116.29, 923577.31),
('Central America and the Caribbean', 'Saint Vincent and the Grenadines', 'Vegetables', 'Offline', 'M', '2010-11-11', 244017223, '2010-12-05', 5523, 154.06, 90.93, 850821.18, 502315.89, 348505.29),
('Sub-Saharan Africa', 'Sudan', 'Personal Care', 'Offline', 'L', '2014-03-29', 110156288, '2014-05-06', 4569, 81.73, 56.67, 373566.37, 258873.23, 114693.14),
('Australia and Oceania', 'Fiji', 'Clothes', 'Offline', 'L', '2011-04-18', 569662237, '2011-05-18', 2028, 109.28, 35.84, 221619.84, 72643.52, 148976.32),
('Central America and the Caribbean', 'El Salvador', 'Clothes', 'Offline', 'L', '2016-08-16', 155258524, '2016-08-22', 2573, 109.28, 35.84, 281240.44, 92247.32, 188993.12),
('Sub-Saharan Africa', 'Democratic Republic of the Congo', 'Office Supplies', 'Online', 'C', '2016-01-26', 815696819, '2016-03-04', 7048, 651.21, 524.96, 4588617.08, 3700143.04, 888474.04),
('Sub-Saharan Africa', 'South Sudan', 'Office Supplies', 'Online', 'H', '2014-05-08', 224994504, '2014-05-21', 6061, 651.21, 524.96, 3945693.81, 3183442.56, 762250.25),
('Australia and Oceania', 'Solomon Islands', 'Vegetables', 'Offline', 'M', '2010-10-13', 648340986, '2010-10-29', 1325, 154.06, 90.93, 204129.50, 120482.25, 83647.25),
('Sub-Saharan Africa', 'Angola', 'Clothes', 'Offline', 'L', '2011-07-22', 362607951, '2011-08-01', 3178, 109.28, 35.84, 347232.64, 113878.52, 233354.12),
('Sub-Saharan Africa', 'Central African Republic', 'Clothes', 'Offline', 'H', '2010-10-27', 758626647, '2010-11-08', 2845, 109.28, 35.84, 310912.60, 101911.60, 209001.00),
('Australia and Oceania', 'Australia', 'Cosmetics', 'Offline', 'H', '2016-01-17', 669913949, '2016-02-26', 6945, 437.20, 263.33, 3037230.00, 1828328.85, 1208901.15),
('Middle East and North Africa', 'Iran', 'Baby Food', 'Online', 'C', '2012-05-28', 221222682, '2012-06-14', 5984, 255.28, 159.42, 1527347.52, 954348.48, 573999.04),
('Sub-Saharan Africa', 'Central African Republic', 'Household', 'Online', 'C', '2016-04-27', 939825712, '2016-05-13', 7458, 668.27, 502.54, 4983069.66, 3746353.32, 1236716.34),
('Sub-Saharan Africa', 'Lesotho', 'Office Supplies', 'Offline', 'L', '2012-01-15', 525257250, '2012-01-24', 3808, 651.21, 524.96, 2477905.68, 1998276.48, 479629.20),
('Australia and Oceania', 'Fiji', 'Meat', 'Offline', 'M', '2010-07-20', 333942757, '2010-08-06', 5542, 421.89, 364.69, 2338723.38, 2022275.98, 316447.40),
('Australia and Oceania', 'Australia', 'Cosmetics', 'Offline', 'L', '2016-02-22', 534574461, '2016-03-27', 7077, 437.20, 263.33, 3094114.00, 1863597.41, 1230516.59),
('Sub-Saharan Africa', 'Benin', 'Cosmetics', 'Online', 'L', '2016-07-01', 692597445, '2016-08-06', 4188, 437.20, 263.33, 1829721.60, 1102236.04, 727485.56),
('Middle East and North Africa', 'Kuwait', 'Personal Care', 'Online', 'M', '2013-08-15', 499269247, '2013-08-30', 6250, 81.73, 56.67, 510812.50, 354187.50, 156625.00),
('Europe', 'Montenegro', 'Household', 'Offline', 'C', '2012-04-13', 665095412, '2012-05-25', 9013, 668.27, 502.54, 6022724.51, 4527723.02, 1495001.49),
('Sub-Saharan Africa', 'Togo', 'Office Supplies', 'Online', 'C', '2011-12-01', 965610716, '2011-12-30', 4325, 651.21, 524.96, 2814713.25, 2269228.00, 545484.25),
('Middle East and North Africa', 'Israel', 'Beverages', 'Online', 'L', '2014-07-13', 994185800, '2014-08-25', 6250, 47.45, 31.79, 296562.50, 198687.50, 97875.00),
('Middle East and North Africa', 'Libya', 'Cosmetics', 'Offline', 'L', '2016-08-01', 536960045, '2016-09-12', 2228, 437.20, 263.33, 973121.60, 586419.24, 386702.36),
('Europe', 'Serbia', 'Vegetables', 'Online', 'L', '2015-01-13', 479038835, '2015-01-15', 3463, 154.06, 90.93, 532787.78, 314845.59, 217942.19),
('Australia and Oceania', 'Kiribati', 'Office Supplies', 'Online', 'L', '2015-09-13', 221861869, '2015-10-05', 3379, 651.21, 524.96, 2199338.59, 1774233.84, 425104.75),
('Europe', 'Moldova', 'Clothes', 'Online', 'C', '2014-10-24', 184406865, '2014-11-19', 2258, 109.28, 35.84, 246792.64, 80909.12, 165883.52),
('Europe', 'Montenegro', 'Clothes', 'Offline', 'C', '2010-11-15', 825976054, '2010-11-21', 3141, 109.28, 35.84, 343329.48, 112581.44, 230748.04),
('Europe', 'Bulgaria', 'Office Supplies', 'Offline', 'C', '2016-04-18', 215015494, '2016-05-25', 9775, 651.21, 524.96, 6368327.75, 5135596.00, 1232731.75),
('Middle East and North Africa', 'Somalia', 'Vegetables', 'Offline', 'L', '2014-07-08', 873365224, '2014-07-09', 5170, 154.06, 90.93, 796480.20, 470102.64, 326377.56),
('Sub-Saharan Africa', 'Lesotho', 'Baby Food', 'Offline', 'H', '2012-05-18', 577721949, '2012-06-22', 2069, 255.28, 159.42, 527315.32, 329938.98, 197376.34),
('Sub-Saharan Africa', 'South Sudan', 'Beverages', 'Online', 'M', '2014-01-01', 486408662, '2014-01-02', 6212, 47.45, 31.79, 294904.40, 197493.48, 97410.92),
('Sub-Saharan Africa', 'Niger', 'Personal Care', 'Offline', 'H', '2016-02-20', 731892835, '2016-03-11', 2770, 81.73, 56.67, 226392.10, 157995.90, 68396.20),
('Middle East and North Africa', 'Iraq', 'Cosmetics', 'Offline', 'C', '2014-12-24', 984301638, '2015-01-28', 4432, 437.20, 263.33, 1937344.00, 1166890.56, 770453.44),
('Europe', 'Iceland', 'Office Supplies', 'Online', 'L', '2013-01-19', 839978917, '2013-02-02', 8839, 651.21, 524.96, 5755624.19, 4636867.44, 1118756.75),
('Europe', 'Czech Republic', 'Cosmetics', 'Online', 'M', '2013-07-06', 451579974, '2013-08-07', 8355, 437.20, 263.33, 3653276.00, 2200195.15, 1453080.85),
('Central America and the Caribbean', 'Antigua and Barbuda', 'Household', 'Offline', 'L', '2015-02-01', 832401310, '2015-03-05', 2250, 668.27, 502.54, 1503667.50, 1120715.00, 382952.50),
('Sub-Saharan Africa', 'Rwanda', 'Household', 'Offline', 'L', '2010-05-19', 400449492, '2010-06-19', 1893, 668.27, 502.54, 1264632.11, 951308.22, 313323.89),
('Europe', 'Bulgaria', 'Office Supplies', 'Offline', 'H', '2016-03-25', 796465606, '2016-03-26', 9536, 651.21, 524.96, 6209928.32, 5003489.28, 1206439.04),
('Australia and Oceania', 'Australia', 'Office Supplies', 'Offline', 'L', '2010-12-04', 379845253, '2010-12-09', 3463, 651.21, 524.96, 2255149.23, 1817994.48, 437154.75),
('Europe', 'Greece', 'Beverages', 'Online', 'C', '2012-06-01', 318831755, '2012-07-12', 1422, 47.45, 31.79, 67458.90, 45180.18, 22278.72),
('Central America and the Caribbean', 'Dominican Republic', 'Beverages', 'Online', 'L', '2013-11-12', 250612196, '2013-11-13', 6499, 47.45, 31.79, 308677.55, 206675.21, 102002.34),
('Middle East and North Africa', 'Morocco', 'Cosmetics', 'Offline', 'M', '2012-12-23', 233263835, '2013-02-05', 5934, 437.20, 263.33, 2594392.80, 1561991.22, 1032401.58),
('Australia and Oceania', 'Australia', 'Clothes', 'Offline', 'H', '2016-03-26', 265764414, '2016-05-04', 6928, 109.28, 35.84, 756817.84, 248181.44, 508636.40),
('Australia and Oceania', 'Australia', 'Personal Care', 'Offline', 'L', '2010-11-25', 186686662, '2010-11-28', 2018, 81.73, 56.67, 164866.14, 114389.06, 50477.08),
('Australia and Oceania', 'Solomon Islands', 'Clothes', 'Offline', 'H', '2012-07-27', 891570692, '2012-07-30', 8964, 109.28, 35.84, 979561.92, 321284.16, 658277.76),
('Central America and the Caribbean', 'Panama', 'Cosmetics', 'Online', 'L', '2016-01-25', 390567484, '2016-02-28', 9268, 437.20, 263.33, 4050296.00, 2440476.44, 1609820.56),
('Middle East and North Africa', 'Bahrain', 'Cosmetics', 'Online', 'L', '2013-07-28', 207497027, '2013-08-11', 9556, 437.20, 263.33, 4178863.20, 2515861.48, 1630001.72),
('Australia and Oceania', 'Samoa ', 'Clothes', 'Online', 'H', '2013-01-09', 374897371, '2013-01-26', 7684, 109.28, 35.84, 839939.52, 275388.16, 564551.36),
('Sub-Saharan Africa', 'Angola', 'Office Supplies', 'Offline', 'H', '2010-04-12', 366099188, '2010-04-20', 7458, 651.21, 524.96, 4857815.18, 3916196.48, 941618.70),
('Central America and the Caribbean', 'Jamaica', 'Baby Food', 'Offline', 'C', '2014-02-11', 319166023, '2014-03-25', 2482, 255.28, 159.42, 633697.96, 395348.44, 238349.52),
('Sub-Saharan Africa', 'Togo', 'Personal Care', 'Offline', 'M', '2012-02-26', 839795287, '2012-03-10', 5290, 81.73, 56.67, 432351.70, 299914.30, 132437.40);

show tables;
select * from mytable;
SELECT COUNT(*) AS row_count 
FROM mytable;

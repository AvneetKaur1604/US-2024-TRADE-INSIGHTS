create database capstone_final;
use capstone_final;

show tables;

CREATE TABLE TariffData (
    Country VARCHAR(100),
    US_2024_Deficit DECIMAL(15,2),
    US_2024_Exports DECIMAL(15,2),
    US_2024_Imports_Customs_Basis DECIMAL(15,2),
    Trump_Tariffs DECIMAL(5,2), -- or FLOAT depending on your use case
    Alleged_Trump_Response DECIMAL(5,2), -- or FLOAT
    Population BIGINT
);


SELECT
  `Country`,
  CAST(REPLACE(`US 2024 Deficit`, ',', '') AS DECIMAL(15,2)) AS `US 2024 Deficit`,
  CAST(REPLACE(`US 2024 Exports`, ',', '') AS DECIMAL(15,2)) AS `US 2024 Exports`,
  CAST(REPLACE(`US 2024 Imports (Customs Basis)`, ',', '') AS DECIMAL(15,2)) AS `US 2024 Imports (Customs Basis)`,
  CAST(REPLACE(`Trump Tariffs Alleged`, '%', '') AS DECIMAL(5,2)) AS `Trump Tariffs Alleged`,
  CAST(REPLACE(`Trump Response`, '%', '') AS DECIMAL(5,2)) AS `Trump Response`,
  CAST(REPLACE(`Population`, ',', '') AS DECIMAL(15,0)) AS `Population`
FROM tariff_data;

INSERT INTO TariffData VALUES
('Afghanistan', -11.1, 11.4, 22.6, 49.0, 25.0, 4145476100.0),
('Albania', 13.4, 141.7, 128.3, 10.0, 10.0, 274597200.0),
('Algeria', -1447.1, 1014.5, 2461.6, 59.0, 29.0, 4616421900.0),
('Andorra', 1.5, 4.9, 3.4, 10.0, 10.0, 8085600.0),
('Angola', -1186.9, 682.4, 1869.2, 63.0, 32.0, 3674990600.0),
('Anguilla', 71.3, 72.5, 1.2, 10.0, 10.0, 1575300.0),
('Antigua and Barbuda', 550.0, 573.8, 23.8, 10.0, 10.0, 9331600.0),
('Argentina', 2078.8, 9171.0, 7092.2, 10.0, 10.0, 4553840100.0),
('Armenia', 39.2, 160.8, 121.6, 10.0, 10.0, 299090000.0),
('Aruba', 714.8, 725.5, 10.7, 10.0, 10.0, 10735900.0),
('Australia*', 17907.8, 34593.3, 16685.5, 10.0, 10.0, 2665894800.0),
('Azerbaijan', 97.3, 255.1, 157.8, 10.0, 10.0, 1015395800.0),
('Bahamas', 3847.4, 5639.7, 1792.4, 10.0, 10.0, 39944000.0),
('Bahrain*', 441.9, 1646.2, 1204.3, 10.0, 10.0, 157705900.0),
('Bangladesh', -6151.8, 2214.0, 8365.8, 74.0, 37.0, 17146699000.0),
('Barbados', 724.0, 772.6, 48.6, 10.0, 10.0, 28233600.0),
('Belarus', -9.4, 10.6, 20.0, 47.0, 24.0, 917829800.0),
('Belize', 509.3, 590.4, 81.1, 10.0, 10.0, 41110600.0),
('Benin', 167.8, 216.4, 48.6, 10.0, 10.0, 1411103400.0),
('Bermuda', 517.1, 540.4, 23.3, 10.0, 10.0, 6469800.0),
('Bhutan', 0.1, 3.4, 3.3, 10.0, 10.0, 78091400.0),
('Bolivia', -103.1, 401.0, 504.1, 20.0, 10.0, 1224415900.0),
('Bosnia and Herzegovina', -126.1, 53.0, 179.1, 70.0, 35.0, 318507300.0),
('Botswana', -300.8, 104.3, 405.1, 74.0, 37.0, 248024400.0),
('Brazil', 7350.7, 49667.0, 42316.3, 10.0, 10.0, 21114072900.0),
('British Indian Ocean Territories', 5.0, 5.5, 0.5, 10.0, 10.0, 400000.0),
('British Virgin Islands', 252.7, 312.9, 60.2, 10.0, 10.0, 3898500.0),
('Brunei', -111.6, 127.2, 238.8, 47.0, 23.0, 45894900.0),
('Burkina Faso', 49.8, 54.4, 4.5, 10.0, 10.0, 2302577600.0),
('Burma', -579.3, 77.2, 656.5, 88.0, 44.0, 5485064800.0),
('Burundi', 2.9, 6.6, 3.7, 10.0, 10.0, 1368945000.0),
('Cabo Verde', 7.8, 12.2, 4.5, 10.0, 10.0, 52233100.0),
('Cambodia', -12340.2, 321.6, 12661.8, 97.0, 49.0, 1742388000.0),
('Cameroon', -55.7, 193.1, 248.8, 22.0, 11.0, 2837268700.0),
('Canada**', -63335.8, 349359.9, 412695.7, 15.0, 10.0, 4009776100.0),
('Cayman Islands', 1237.1, 1286.5, 49.4, 10.0, 10.0, 7303800.0),
('Central African Republic', 33.6, 35.1, 1.4, 10.0, 10.0, 515242100.0),
('Chad', -20.9, 59.9, 80.8, 26.0, 13.0, 1931906400.0),
('Chile*', 1698.3, 18167.8, 16469.5, 10.0, 10.0, 1965883500.0),
('China', -295401.6, 143545.7, 438947.4, 67.0, 34.0, 141071000000.0),
('Christmas Island', 0.4, 2.1, 1.7, 10.0, 10.0, 169200.0),
('Cocos (Keeling) Islands', 1.5, 2.6, 1.1, 10.0, 10.0, 59300.0),
('Colombia*', 1347.3, 19037.6, 17690.3, 10.0, 10.0, 5232115200.0),
('Comoros', 2.9, 4.7, 1.8, 10.0, 10.0, 85038700.0),
('Congo (Brazzaville)', 196.9, 237.1, 40.2, 10.0, 10.0, 281348000.0),
('Congo (Kinshasa)', -69.8, 253.3, 323.1, 22.0, 11.0, 10907600000.0),
('Cook Islands', 6.0, 6.9, 0.9, 10.0, 10.0, 1326300.0),
('Costa Rica**', -1958.1, 9676.8, 11634.9, 17.0, 10.0, 515295000.0),
('Cote d''Ivoire', -418.1, 596.6, 1014.7, 41.0, 21.0, 3116565400.0),
('Cuba', 581.6, 586.5, 4.9, 10.0, 10.0, 1101993100.0),
('Curacao', 791.6, 823.5, 31.9, 10.0, 10.0, 14786200.0),
('Djibouti', 104.9, 145.0, 40.1, 10.0, 10.0, 115294400.0),
('Dominica', 56.5, 58.8, 2.3, 10.0, 10.0, 6651000.0),
('Dominican Republic**', 5576.2, 13081.7, 7505.4, 10.0, 10.0, 1133126500.0),
('Ecuador', -992.7, 7531.7, 8524.3, 12.0, 10.0, 1798008300.0),
('Egypt', 3546.0, 6092.0, 2546.0, 10.0, 10.0, 11453577200.0),
('El Salvador**', 2245.1, 4556.4, 2311.2, 10.0, 10.0, 630962400.0),
('Equatorial Guinea', -32.3, 95.4, 127.6, 25.0, 13.0, 184754900.0),
('Eritrea (-)', 140.0, 185.0, 216.0, 10.0, 10.0, 347039000.0),
('Eswatini', 23.5, 46.1, 22.6, 10.0, 10.0, 123050600.0),
('Ethiopia', 551.9, 1017.7, 465.8, 10.0, 10.0, 12869169200.0),
('European Union', -235571.2, 370189.2, 605760.4, 39.0, 19.0, 44880404200.0),
('Falkland Islands (Islas Malvinas) (-)', 85.0, 209.0, 159.0, 10.0, 10.0, 347100.0),
('Faroe Islands', -248.1, 1.4, 249.5, 99.0, 50.0, 5448200.0),
('Fiji', -164.6, 94.7, 259.3, 63.0, 32.0, 92414500.0),
('French Guiana', 27.2, 29.0, 1.8, 10.0, 10.0, 31366600.0),
('French Polynesia', 104.8, 145.2, 40.4, 10.0, 10.0, 28111800.0),
('Gabon', -0.6, 171.1, 171.7, 10.0, 10.0, 248478900.0),
('Gambia', 78.6, 80.6, 2.0, 10.0, 10.0, 269784500.0),
('Gaza Strip Administered by Israel (-)', 107.0, 227.0, 223.0, 10.0, 10.0, 0.0),
('Georgia', 1571.0, 1736.5, 165.4, 10.0, 10.0, 371548300.0),
('Ghana', -204.4, 967.3, 1171.7, 17.0, 10.0, 3378791400.0),
('Gibraltar', 650.2, 650.6, 0.4, 10.0, 10.0, 3847100.0),
('Greenland', 15.8, 48.4, 32.6, 10.0, 10.0, 5686500.0),
('Grenada', 151.3, 165.3, 14.1, 10.0, 10.0, 11708100.0),
('Guadeloupe', 467.2, 470.6, 3.4, 10.0, 10.0, 10.0),
('Guatemala*', 4694.9, 9714.8, 5019.9, 10.0, 10.0, 1812483800.0),
('Guinea', 132.2, 138.3, 6.2, 10.0, 10.0, 1440546800.0),
('Guinea-Bissau', 3.3, 3.4, 0.1, 10.0, 10.0, 215333900.0),
('Guyana', -4060.6, 1314.9, 5375.5, 76.0, 38.0, 82635300.0),
('Haiti', 597.7, 1214.4, 616.8, 10.0, 10.0, 1163739800.0),
('Honduras**', 1524.9, 7057.5, 5532.6, 10.0, 10.0, 1064485100.0),
('Hong Kong', 21913.5, 27886.4, 5972.9, 10.0, 10.0, 753610000.0),
('Iceland', -86.8, 985.8, 1072.6, 10.0, 10.0, 39334900.0),
('India', -45663.8, 41752.7, 87416.4, 52.0, 26.0, 143806959600.0),
('Indonesia', -17882.6, 10202.1, 28084.7, 64.0, 32.0, 28119006700.0),
('Iran', 84.6, 90.8, 6.2, 10.0, 10.0, 9060870700.0),
('Iraq', -5761.7, 1660.6, 7422.3, 78.0, 39.0, 4507404900.0),
('Israel*', -7425.4, 14792.0, 22217.5, 33.0, 17.0, 975660000.0),
('Jamaica', 2282.8, 2644.1, 361.4, 10.0, 10.0, 283978600.0),
('Japan', -68467.7, 79740.8, 148208.6, 46.0, 23.0, 12451665000.0),
('Jordan*', -1334.1, 2030.8, 3364.9, 40.0, 20.0, 1143921300.0),
('Kazakhstan', -1253.7, 1077.1, 2330.7, 54.0, 27.0, 2033010400.0),
('Kenya', 45.2, 782.5, 737.3, 10.0, 10.0, 5533900300.0),
('Kiribati (-)', 121.0, 208.0, 217.0, 10.0, 10.0, 13253000.0),
('Korea, North (-)', 114.0, 219.0, 228.0, 10.0, 10.0, 2657103600.0),
('Korea, South*', -66007.4, 65541.8, 131549.2, 50.0, 25.0, 5166702900.0),
('Kosovo', 15.4, 49.4, 34.0, 10.0, 10.0, 175636600.0),
('Kuwait', 768.2, 2411.8, 1643.6, 10.0, 10.0, 485342000.0),
('Kyrgyzstan', 116.5, 133.1, 16.7, 10.0, 10.0, 729503400.0),
('Laos', -762.9, 40.4, 803.3, 95.0, 47.0, 787304600.0),
('Lebanon', 283.8, 541.4, 257.6, 10.0, 10.0, 577349300.0),
('Lesotho', -234.5, 2.8, 237.3, 99.0, 49.0, 231147200.0),
('Liberia', 147.9, 220.4, 72.5, 10.0, 10.0, 549303100.0),
('Libya', -898.3, 567.2, 1465.6, 61.0, 31.0, 730565900.0),
('Liechtenstein', -177.7, 66.0, 243.7, 73.0, 36.0, 3985000.0),
('Macau', 166.3, 275.1, 108.8, 10.0, 10.0, 72200700.0),
('Madagascar', -679.8, 53.4, 733.2, 93.0, 46.0, 3119593200.0),
('Malawi', -14.1, 26.9, 41.1, 34.0, 17.0, 2110448200.0),
('Malaysia', -24830.1, 27704.8, 52534.8, 47.0, 24.0, 3512629800.0),
('Maldives', 87.8, 92.6, 4.8, 10.0, 10.0, 52599400.0),
('Mali', 46.0, 51.5, 5.5, 10.0, 10.0, 2376912700.0),
('Marshall Islands', 107.0, 127.4, 20.4, 10.0, 10.0, 3882700.0),
('Martinique', 196.4, 199.2, 2.8, 10.0, 10.0, 34043900.0),
('Mauritania', 136.9, 139.8, 2.9, 10.0, 10.0, 502244100.0),
('Mauritius', -186.5, 48.0, 234.5, 80.0, 40.0, 126104100.0),
('Mayotte', -0.1, 1.8, 1.9, 10.0, 10.0, 33701100.0),
('Mexico**', -171809.2, 334041.4, 505850.6, 34.0, 17.0, 12973975900.0),
('Micronesia', 48.0, 50.5, 2.4, 10.0, 10.0, 11263000.0),
('Moldova', -82.9, 53.6, 136.5, 61.0, 30.0, 245778300.0),
('Monaco', 115.2, 162.8, 47.6, 10.0, 10.0, 3895600.0),
('Mongolia', 369.6, 396.6, 27.0, 10.0, 10.0, 348114500.0),
('Montenegro', 12.3, 27.7, 15.4, 10.0, 10.0, 61617700.0),
('Montserrat', 6.4, 12.1, 5.6, 10.0, 10.0, 437300.0),
('Morocco*', 3363.8, 5268.6, 1904.9, 10.0, 10.0, 3771250500.0),
('Mozambique', -66.4, 149.7, 216.1, 31.0, 15.0, 3363516000.0),
('Namibia', -114.7, 160.5, 275.2, 42.0, 21.0, 296309500.0),
('Nauru', -1.3, 0.9, 2.2, 59.0, 30.0, 1187500.0),
('Nepal', 0.4, 120.9, 120.5, 10.0, 10.0, 2969461400.0),
('New Caledonia', -4.5, 29.4, 33.8, 13.0, 10.0, 28987000.0),
('New Zealand', -1117.6, 4499.4, 5617.0, 20.0, 10.0, 522310000.0),
('Nicaragua**', -1681.3, 2941.0, 4622.3, 36.0, 18.0, 682361300.0),
('Niger', 34.9, 43.3, 8.3, 10.0, 10.0, 2615986700.0),
('Nigeria', -1524.9, 4174.3, 5699.2, 27.0, 13.0, 22788294500.0),
('Niue', -3.7, 0.6, 4.3, 86.0, 43.0, 182200.0),
('Norfolk Island (-)', 100.0, 230.0, 224.0, 10.0, 10.0, 218800.0),
('North Macedonia', -113.1, 60.6, 173.7, 65.0, 33.0, 182781600.0),
('Norway', -1991.3, 4592.0, 6583.3, 30.0, 15.0, 551959400.0),
('Oman*', 634.3, 1954.3, 1320.0, 10.0, 10.0, 504926900.0),
('Pakistan', -2988.5, 2135.1, 5123.7, 58.0, 29.0, 24750449500.0),
('Palau', 18.8, 21.0, 2.2, 10.0, 10.0, 1772700.0),
('Panama*', 10146.3, 10702.1, 555.8, 10.0, 10.0, 445875900.0),
('Papua New Guinea', -12.0, 67.2, 79.2, 15.0, 10.0, 1038963500.0),
('Paraguay', 2802.3, 3158.4, 356.2, 10.0, 10.0, 684414600.0),
('Peru*', 1860.6, 11223.8, 9363.2, 10.0, 10.0, 3384561700.0),
('Philippines', -4880.3, 9297.3, 14177.6, 34.0, 17.0, 11489119900.0),
('Pitcairn Islands (-)', 113.0, 221.0, 233.0, 10.0, 10.0, 5000.0),
('Qatar', 1970.1, 3804.2, 1834.2, 10.0, 10.0, 265603200.0),
('Reunion', -32.2, 11.9, 44.1, 73.0, 37.0, 88240500.0),
('Russia', -2481.4, 526.1, 3007.5, 83.0, 41.0, 14382613000.0),
('Rwanda', 14.5, 44.8, 30.2, 10.0, 10.0, 1395447100.0),
('Samoa', 48.7, 54.4, 5.7, 10.0, 10.0, 21666300.0),
('San Marino', 54.8, 80.0, 25.2, 10.0, 10.0, 3386000.0),
('Sao Tome and Principe (-)', 111.0, 222.0, 219.0, 10.0, 10.0, 23087100.0),
('Saudi Arabia', 443.3, 13177.0, 12733.7, 10.0, 10.0, 3326429200.0),
('Senegal', 115.7, 350.9, 235.1, 10.0, 10.0, 1807757300.0),
('Serbia', -604.5, 209.9, 814.4, 74.0, 37.0, 662318300.0),
('Seychelles', 9.4, 16.5, 7.2, 10.0, 10.0, 11977300.0),
('Sierra Leone', 91.1, 119.9, 28.7, 10.0, 10.0, 846051200.0),
('Singapore*', 2828.9, 46032.6, 43203.7, 10.0, 10.0, 591764800.0),
('Sint Maarten', 652.4, 753.9, 101.5, 10.0, 10.0, 4274900.0),
('Solomon Islands', 11.8, 13.1, 1.3, 10.0, 10.0, 542674000.0),
('Somalia', 46.6, 49.1, 2.5, 10.0, 10.0, 1835861500.0),
('South Africa', -8836.8, 5819.0, 14655.8, 60.0, 30.0, 6321238400.0),
('South Sudan', 58.5, 59.3, 0.8, 10.0, 10.0, 1148337400.0),
('Sri Lanka', -2647.4, 368.2, 3015.6, 88.0, 44.0, 2203700000.0),
('St Helena', -1.6, 9.0, 10.6, 15.0, 10.0, 519700.0),
('St Kitts and Nevis', 140.6, 160.2, 19.6, 10.0, 10.0, 4675800.0),
('St Lucia', 1036.6, 1043.6, 7.0, 10.0, 10.0, 17928500.0),
('St Pierre and Miquelon (-)', 95.0, 232.0, 194.0, 10.0, 10.0, 557400.0),
('St Vincent and the Grenadines', 135.0, 143.2, 8.3, 10.0, 10.0, 10132300.0),
('Sudan', 43.5, 56.6, 13.1, 10.0, 10.0, 5004279100.0),
('Suriname', 292.6, 383.5, 90.9, 10.0, 10.0, 62888600.0),
('Svalbard, Jan Mayen Island (-)', 108.0, 228.0, 229.0, 10.0, 10.0, 259600.0),
('Switzerland', -38463.3, 24962.0, 63425.3, 61.0, 30.0, 888809300.0),
('Syria (-)', 90.0, 217.0, 173.0, 10.0, 10.0, 2359462300.0),
('Taiwan', -73927.2, 42336.9, 116264.0, 64.0, 32.0, 2311279300.0),
('Tajikistan', 52.2, 56.8, 4.6, 10.0, 10.0, 1038979900.0),
('Tanzania', 368.7, 573.4, 204.7, 10.0, 10.0, 7054586500.0),
('Thailand', -45608.9, 17719.2, 63328.2, 72.0, 36.0, 7170243500.0),
('Timor-Leste', 13.1, 19.0, 5.9, 10.0, 10.0, 138428600.0),
('Togo', 193.6, 283.6, 90.0, 10.0, 10.0, 930433700.0),
('Tokelau (-)', 104.0, 229.0, 225.0, 10.0, 10.0, 256000.0),
('Tonga', 17.1, 19.9, 2.8, 10.0, 10.0, 10459700.0),
('Trinidad and Tobago', -386.2, 2939.7, 3325.9, 12.0, 10.0, 136751000.0),
('Tunisia', -619.6, 503.6, 1123.2, 55.0, 28.0, 1220043100.0),
('Turkey', -1452.7, 15293.0, 16745.7, 10.0, 10.0, 8532596500.0),
('Turkmenistan', 67.6, 82.2, 14.6, 10.0, 10.0, 736443800.0),
('Turks and Caicos Islands', 702.6, 713.6, 11.0, 10.0, 10.0, 4619800.0),
('Tuvalu (-)', 106.0, 226.0, 222.0, 10.0, 10.0, 981600.0),
('Uganda', -26.3, 106.3, 132.6, 20.0, 10.0, 4865660100.0),
('Ukraine', 497.0, 1683.5, 1186.5, 10.0, 10.0, 3773283600.0),
('United Arab Emirates', 19494.9, 26969.3, 7474.4, 10.0, 10.0, 1048375100.0),
('United Kingdom', 11856.9, 79941.3, 68084.5, 10.0, 10.0, 6835000000.0),
('Uruguay', 420.2, 1649.0, 1228.8, 10.0, 10.0, 338808100.0),
('Uzbekistan', 338.4, 380.8, 42.4, 10.0, 10.0, 3565230700.0),
('Vanuatu', -6.1, 7.6, 13.7, 45.0, 22.0, 32040900.0),
('Vatican City (-)', 112.0, 223.0, 226.0, 10.0, 10.0, 76400.0),
('Venezuela', -1755.8, 4232.0, 5987.9, 29.0, 15.0, 2830085400.0),
('Vietnam', -123463.0, 13098.2, 136561.2, 90.0, 45.0, 10035219200.0),
('West Bank Administered by Israel', -2.3, 3.7, 6.0, 38.0, 19.0, 45000000.0),
('Yemen', 125.2, 134.1, 8.9, 10.0, 10.0, 3939079900.0),
('Zambia', -55.3, 113.8, 169.1, 33.0, 16.0, 2072396500.0),
('Zimbabwe', -24.1, 43.8, 67.8, 36.0, 18.0, 1634082200.0);

select * from TariffData;

# ques 1. Total countries
select 
count(distinct Country) as total_countries 
from TariffData;

# ques 2. Find the Total US Exports and Total US Imports across all countries.
select 
    sum(US_2024_Exports) as total_exports,
    avg(US_2024_Exports) as average_exports,
    sum(US_2024_Imports_Customs_Basis) as total_imports,
    avg(US_2024_Imports_Customs_Basis) as average_imports
from TariffData;

# ques 3. Find the country with the highest exports and the country with the highest imports.
select country
from (
    select country
    from TariffData
    order by US_2024_Exports desc
    limit 1
) as exports
union
select country
from (
    select country
    from TariffData
    order by US_2024_Imports_Customs_Basis desc
    limit 1
) as imports;

#4. Find the country with the highest trade deficit.
select country, US_2024_Deficit
from TariffData
where US_2024_Deficit = (select min(US_2024_Deficit) from TariffData);

# 5. Find the top 5 countries with the highest exports and top 5 with the highest imports.
select country, US_2024_Exports
from TariffData
order by US_2024_Exports desc
limit 5;

# 6. Which countries have a trade surplus with the USA?
select country, US_2024_Exports, US_2024_Imports_Customs_Basis
from TariffData
where US_2024_Exports > US_2024_Imports_Customs_Basis;

# 7. Calculate the average deficit value for all countries, and find out which countries are above and below the average deficit.
select country, US_2024_Deficit,
case
when US_2024_Deficit < ( select avg(US_2024_Deficit) from TariffData ) then "Below Average"
else "Above Average"
end as "Deficit_Status"
from TariffData;

# 8. Correlation Between Population and Trade Volume
select 
    sum((Population - pop_avg) * (Trade_Volume - tv_avg)) / 
    (sqrt(sum(power(Population - pop_avg, 2))) * sqrt(sum(power(Trade_Volume - tv_avg, 2)))) as correlation
from (
    select 
        Population,
        US_2024_Exports + US_2024_Imports_Customs_Basis as Trade_Volume,
        (select avg(Population) from TariffData) as pop_avg,
        (select avg(US_2024_Exports + US_2024_Imports_Customs_Basis) from TariffData) as tv_avg
    from TariffData
) as sub;

# 9. Calculate trade volume per capita and analyze the top 5 and bottom 5 countries.
select country, US_2024_Exports, US_2024_Imports_Customs_Basis, Population, 
(US_2024_Exports + US_2024_Imports_Customs_Basis) as TotalTrade, 
(US_2024_Exports + US_2024_Imports_Customs_Basis) / Population as Per_Capital_Trade
from TariffData
order by Per_Capital_Trade
limit 5;


SELECT 
    country,
    US_2024_Exports,
    US_2024_Imports_Customs_Basis,
    Population,
    (US_2024_Exports + US_2024_Imports_Customs_Basis) AS TotalTrade,
    CAST(Population AS DECIMAL(20,2)) AS Pop_Cast,
    (US_2024_Exports + US_2024_Imports_Customs_Basis) / NULLIF(CAST(Population AS DECIMAL(20,2)), 0) AS Per_Capital_Trade
FROM TariffData
ORDER BY Per_Capital_Trade
LIMIT 5;

# 10. Which countries have below-average deficits and high population (top 25%)?
with avg_deficit as (select avg(`US 2024 Deficit`) as avg_val from TariffData), 
high_pop as (select Country, `US 2024 Deficit`, Population from TariffData, avg_deficit
where `US 2024 Deficit` < avg_val)
select * from high_pop
where Population > (select percentile_cont(0.75) within group (order by Population) from TariffData);


-- Generate a trade efficiency score and rank countries ( top 10 ). 
WITH trade_efficiency_cte AS (SELECT Country,
        CAST(`US_2024_Exports` AS DECIMAL(15,2)) AS Exports,
        CAST(`US_2024_Imports_Customs_Basis` AS DECIMAL(15,2)) AS Imports,
        Population,
        ((CAST(`US_2024_Exports` AS DECIMAL(15,2)) - CAST(`US_2024_Imports_Customs_Basis` AS DECIMAL(15,2))) / Population) * 1000 AS trade_efficiency_score
    FROM TariffData
    WHERE Population > 0
)
SELECT *
FROM trade_efficiency_cte
ORDER BY trade_efficiency_score DESC
LIMIT 10;

WITH RankedImports AS (SELECT Country,
    (`US_2024_Imports_Customs_Basis`) AS Imports,
    SUM(`US_2024_Imports_Customs_Basis`) OVER () AS TotalImports,
    SUM(`US_2024_Imports_Customs_Basis`) OVER (
      ORDER BY `US_2024_Imports_Customs_Basis` DESC
      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
    ) AS CumulativeImports
  FROM TariffData
),
CumulativePercent AS (
  SELECT
    Country,
    Imports,
    TotalImports,
    CumulativeImports,
    CAST(CumulativeImports AS FLOAT) / TotalImports AS CumulativePercentage
  FROM RankedImports
)
SELECT
  Country,
  Imports,
  CumulativePercentage
FROM CumulativePercent
WHERE CumulativePercentage <= 0.8
ORDER BY Imports DESC;







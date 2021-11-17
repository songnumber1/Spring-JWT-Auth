-- 카테고리 --
INSERT INTO menucategory (categorySort, categoryTitle, isActive) VALUES (0, 'PROFILE', 1);
INSERT INTO menucategory (categorySort, categoryTitle, isActive) VALUES (1, 'DATA', 1);
INSERT INTO menucategory (categorySort, categoryTitle, isActive) VALUES (2, 'SUMMARY', 1);

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ONE DEPT (PROFILE)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Personal', '',  1, 'fas fa-user', 0, categoryId FROM menucategory WHERE categoryTitle = 'PROFILE';

-- ONE DEPT (DATA)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Program', '',  1, 'fas fa-th-list', 0, categoryId FROM menucategory WHERE categoryTitle = 'DATA';
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Storage', '/jwtauth/storage/',  1, 'fas fa-database', 1, categoryId FROM menucategory WHERE categoryTitle = 'DATA';

-- ONE DEPT (SUMMARY)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Oddment', '/jwtauth/oddment/',  1, 'fa fa-bars', 0, categoryId FROM menucategory WHERE categoryTitle = 'SUMMARY';  
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Git', '/jwtauth/git/',  1, 'fa fa-code', 1, categoryId FROM menucategory WHERE categoryTitle = 'SUMMARY';  
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Windows', '/jwtauth/windows/',  1, 'fas fa-desktop', 2, categoryId FROM menucategory WHERE categoryTitle = 'SUMMARY';
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId) SELECT 'Movie', '/jwtauth/movie/',  1, 'fas fa-film', 3, categoryId FROM menucategory WHERE categoryTitle = 'SUMMARY';

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TWO DEPT (PROFILE)--
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId) SELECT 'Info', '/jwtauth/profile/',  1, '', 0, menuonedeptId FROM menuonedept WHERE menuOneDeptTitle = 'Personal';

-- TWO DEPT (DATA)--
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId) SELECT 'Database', '',  1, '', 0, menuonedeptId FROM menuonedept WHERE menuOneDeptTitle = 'Program';
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId) SELECT 'Software', '',  1, '', 1, menuonedeptId FROM menuonedept WHERE menuOneDeptTitle = 'Program';

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- THREE DEPT (DATA)--
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'MS-Sql', '',  1, '', 0, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Oracle', '',  1, '', 1, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Postgre', '',  1, '', 2, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Android', '',  1, '', 0, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'C#', '',  1, '', 1, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Java', '',  1, '', 2, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Java Script', '',  1, '', 3, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'MFC', '',  1, '', 4, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'React', '',  1, '', 5, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Vue.js', '',  1, '', 6, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'WPF', '',  1, '', 7, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId) SELECT 'Xamarin', '',  1, '', 8, menuTwodeptId FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
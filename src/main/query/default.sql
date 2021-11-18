-- 사용자 권한 --
INSERT INTO user_role (role, securityrole, roleno) VALUES ('Admin', 'ROLE_ADMIN', 0);
INSERT INTO user_role (role, securityrole, roleno) VALUES ('Manager', 'ROLE_MANAGER', 1);
INSERT INTO user_role (role, securityrole, roleno) VALUES ('User', 'ROLE_USER', 2);
INSERT INTO user_role (role, securityrole, roleno) VALUES ('Guest', 'ROLE_GUEST', 3);

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- 카테고리 --
INSERT INTO menucategory (categorySort, categoryTitle, isActive, userRoleid) SELECT 0, 'PROFILE', 1, userroleid FROM user_role WHERE UPPER(role) = 'ADMIN';
INSERT INTO menucategory (categorySort, categoryTitle, isActive, userRoleid) SELECT 1, 'DATA', 1, userroleid FROM user_role WHERE UPPER(role) = 'ADMIN';
INSERT INTO menucategory (categorySort, categoryTitle, isActive, userRoleid) SELECT 2, 'SUMMARY', 1, userroleid FROM user_role WHERE UPPER(role) = 'ADMIN';

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- ONE DEPT (PROFILE)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Personal', '',  1, 'fas fa-user', 0, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'PROFILE';

-- ONE DEPT (DATA)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Program', '',  1, 'fas fa-th-list', 0, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'DATA';
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Storage', '/jwtauth/storage/',  1, 'fas fa-database', 1, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'DATA';

-- ONE DEPT (SUMMARY)--
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Oddment', '/jwtauth/oddment/',  1, 'fa fa-bars', 0, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'SUMMARY';  
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Git', '/jwtauth/git/',  1, 'fa fa-code', 1, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'SUMMARY';  
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Windows', '/jwtauth/windows/',  1, 'fas fa-desktop', 2, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'SUMMARY';
INSERT INTO menuonedept (menuOneDeptTitle, menuOneDeptUrl, isActive, menuOneDeptIcon, menuOneDeptSort, categoryId, userRoleid) SELECT 'Movie', '/jwtauth/movie/',  1, 'fas fa-film', 3, categoryId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menucategory WHERE categoryTitle = 'SUMMARY';

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TWO DEPT (PROFILE)--
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId, userRoleid) SELECT 'Info', '/jwtauth/profile/',  1, '', 0, menuonedeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menuonedept WHERE menuOneDeptTitle = 'Personal';

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- TWO DEPT (DATA)--
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId, userRoleid) SELECT 'Database', '',  1, '', 0, menuonedeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menuonedept WHERE menuOneDeptTitle = 'Program';
INSERT INTO menutwodept (menuTwoDeptTitle, menuTwoDeptUrl, isActive, menuTwoDeptIcon, menuTwoDeptSort, menuonedeptId, userRoleid) SELECT 'Software', '',  1, '', 1, menuonedeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menuonedept WHERE menuOneDeptTitle = 'Program';

-- --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- THREE DEPT (DATA)--
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'MS-Sql', '',  1, '', 0, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Oracle', '',  1, '', 1, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Postgre', '',  1, '', 2, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Database';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Android', '',  1, '', 0, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'C#', '',  1, '', 1, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Java', '',  1, '', 2, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Java Script', '',  1, '', 3, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'MFC', '',  1, '', 4, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'React', '',  1, '', 5, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Vue.js', '',  1, '', 6, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'WPF', '',  1, '', 7, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO menuthreedept (menuThreeDeptTitle, menuThreeDeptUrl, isActive, menuThreeDeptIcon, menuThreeDeptSort, menuTwodeptId, userRoleid) SELECT 'Xamarin', '',  1, '', 8, menuTwodeptId, (SELECT userroleid FROM user_role WHERE UPPER(role) = 'ADMIN') AS userroleid  FROM menutwodept WHERE menuTwoDeptTitle = 'Software';
INSERT INTO activitytype (ActivityTypeId, ActivityTypeName)
VALUES (1, 'Program'), (2, 'Sub Program'), (3, 'Project'), (4, 'Contract'), (5, 'Point');
INSERT INTO activity (ActivityId, ParentId, ActivityTypeId)
VALUES (1, NULL, 1),
       (2, NULL, 1),
       (3, 1, 2),
       (4, 1, 2),
       (5, 3, 3),
       (6, 3, 3),
       (7, 5, 4),
       (8, 5, 4),
       (9, 7, 5),
       (10, 7, 5),
       (11, 8, 5),
       (12, 9, 4),
       (13, 9, 4),
       (14, 11, 4),
       (15, 11, 4),
       (16, 12, 5),
       (17, 12, 5),
       (18, 13, 5),
       (19, 13, 5),
       (20, 14, 5),
       (21, 14, 5);
INSERT INTO program (programid, programname)
VALUES ( 1,'program1'),
       ( 2,'program2');
INSERT INTO subprogram (subprogramid, programid, subprogramname)
VALUES (1,1, 'subprogram1'),
       (2,2,'subprogram2');
INSERT INTO project(projectid, subprogramid, projectname)
VALUES (1,1,'project11'),
       (2,2,'project12');
INSERT INTO contract(contractid, projectid, areaid, contractname)
VALUES (1,1,3,'contract1'),
       (2,2,2,'contract2');
INSERT INTO point(pointid, contractid, pointname)
VALUES (1,1,'point1'),
       (2,2,'contract2')



CREATE TABLE Program (
    ProgramId int PRIMARY KEY,
    ProgramName varchar(256)
);

CREATE TABLE SubProgram (
    SubProgramId int PRIMARY KEY,
    ProgramId int,
    SubProgramName varchar(256),
    FOREIGN KEY (ProgramId) REFERENCES Program(ProgramId)
);

CREATE TABLE Project (
    ProjectId int PRIMARY KEY,
    SubProgramId int,
    ProjectName varchar(256),
    FOREIGN KEY (SubProgramId) REFERENCES SubProgram(SubProgramId)
);

CREATE TABLE Contract (
    ContractId int PRIMARY KEY,
    ProjectId int,
    AreaId int,
    ContractName varchar(255),
    FOREIGN KEY (ProjectId) REFERENCES Project(ProjectId)
);

CREATE TABLE Point (
    PointId int PRIMARY KEY,
    ContractId int,
    PointName varchar(255),
    FOREIGN KEY (ContractId) REFERENCES Contract(ContractId)
);

CREATE TABLE ActivityType (
    ActivityTypeId int PRIMARY KEY,
    ActivityTypeName varchar(255)
);

CREATE TABLE Activity (
    ActivityId int PRIMARY KEY,
    ParentId int,
    ActivityTypeId int,
    FOREIGN KEY (ParentId) REFERENCES Activity(ActivityId),
    FOREIGN KEY (ActivityTypeId) REFERENCES ActivityType(ActivityTypeId)
);

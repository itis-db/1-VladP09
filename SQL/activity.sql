SELECT p.ProgramName, sp.SubProgramName, pr.ProjectName, c.ContractName
FROM Program p
         LEFT JOIN SubProgram sp ON p.ProgramId = sp.ProgramId
         LEFT JOIN Project pr ON sp.SubProgramId = pr.SubProgramId
         LEFT JOIN Contract c ON pr.ProjectId = c.ProjectId;

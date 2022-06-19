
USE DB_pilote
GO
-- Create table 

IF OBJECT_ID(N'T_employer', N'U') IS NULL BEGIN

    CREATE TABLE T_employer(
        id INT IDENTITY(1,1)
        ,nom NVARCHAR(100)
        ,prenom NVARCHAR(100)
        ,pays NVARCHAR(100)
        ,poste NVARCHAR(100)
        CONSTRAINT PK_employer_id PRIMARY KEY CLUSTERED(id)
    );

END;

IF OBJECT_ID(N'T_poste', N'U') IS NULL BEGIN

    CREATE TABLE T_poste(
        id INT IDENTITY(1,1)
        ,libelle_poste NVARCHAR(100)
        ,salaire INTEGER
        CONSTRAINT PK_poste_id PRIMARY KEY CLUSTERED(id)
    );

END;
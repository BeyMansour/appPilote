
USE DB_pilote
GO
-- Create table 

IF OBJECT_ID(N'Employe', N'U') IS NULL BEGIN

    CREATE TABLE Employe(
        id INT IDENTITY(1,1)
        ,nom NVARCHAR(100)
        ,prenom NVARCHAR(100)
        ,pays NVARCHAR(100)
        ,poste NVARCHAR(100)
        CONSTRAINT K_employer_id PRIMARY KEY CLUSTERED(id)
    );

END;

IF OBJECT_ID(N'Poste', N'U') IS NULL BEGIN

    CREATE TABLE Poste(
        id INT IDENTITY(1,1)
        ,libelle_poste NVARCHAR(100)
        ,salaire INTEGER
        CONSTRAINT K_poste_id PRIMARY KEY CLUSTERED(id)
    );

END;
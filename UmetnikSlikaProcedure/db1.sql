CREATE PROCEDURE Insert_Ucenik (
    @ime VARCHAR2(50),
    @prezime VARCHAR2(50),
    @adresa VARCHAR2(50),
    @ocena int
)

AS 
    BEGIN 
    IF EXISTS
        (SELECT id FROM Ucenik)
        WHERE ime=@ime and prezime=@prezime
        RETURN 1
    ELSE
        BEGIN
            INSERT INTO Ucenik(ime, prezime, adresa, ocena)
                VALUES(@ime, @prezime, @adresa, @ocena)
                RETURN 0
    END
END
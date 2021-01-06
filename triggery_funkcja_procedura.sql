DELIMITER $$
CREATE TRIGGER sprawdzenie_id BEFORE INSERT ON zamowienia FOR EACH ROW BEGIN 
IF(new.id_pracownika>10) 
THEN
signal sqlstate '45000' SET message_text = 'Nie ma takiego pracownika';
END IF;
END$$



DELIMITER $$
CREATE TRIGGER data_aktualizacji_rekordu BEFORE UPDATE ON produkty FOR EACH ROW BEGIN SET new.data_aktualizacji=current_date();
END$$



SET GLOBAL log_bin_trust_function_creators = 1;
DELIMITER $$
CREATE FUNCTION `produkt_o_najmniejszej_cenie`() 
RETURNS VARCHAR(64)
BEGIN DECLARE x VARCHAR(64);
(SELECT nazwa FROM produkty ORDER BY cena ASC LIMIT 1) 
INTO x;
RETURN x;
END



DELIMITER $$
CREATE PROCEDURE dodanie_danych(klient INT,produkt INT,kurier INT,pracownik INT,data_z date) BEGIN 
INSERT INTO zamowienia(ID_klienta,ID_produktu,ID_kuriera,ID_pracownika,data_zamowienia) VALUES (klient,produkt,kurier,pracownik,data_z);
END$$
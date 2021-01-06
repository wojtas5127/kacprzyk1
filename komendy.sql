use sklep;
CREATE table klienci (
ID_klienta INT auto_increment primary key,
Imie varchar(20),
Nazwisko varchar(40),
PESEL VARCHAR(11)
);

INSERT INTO klienci (Imie,Nazwisko,PESEL) VALUES 
('Jan','Kowalski','43567845345'),
('Marek','Nowak','29537434478'),
('Jacek','Martyniuk','56723467890'),
('Mateusz','Szczypczuk','65467243567'),
('Marcin','Jakubiak','87572348974'),
('Michał','Majkut','73654837473'),
('Mikołaj','Szczypczuk','24356987457'),
('Piotrek','Stoch','97863458672'),
('Paweł','Rozenek','6731245645'),
('Wojciech','Skrzypczak','00876342345'),
('Patryk','Mateczak','99232348683')


use sklep;
CREATE table produkty (
ID_produktu INT auto_increment primary key,
Nazwa varchar(80),
Typ varchar(20),
Cena INT,
Producent VARCHAR(30)
);

INSERT INTO produkty (Nazwa,Typ,Cena,Producent) VALUES 
('Procesor Intel Core i5-10400F','Procesor','699','Intel'),
('Procesor AMD Ryzen 5 3600','Procesor','1099','AMD'),
('Karta graficzna Gigabyte GeForce GTX 1050Ti Windforce OC 4GB','Karta graficzna','759','Gigabyte'),
('Karta graficzna Gigabyte Radeon RX 570 Gaming 8GB','Karta garficzna','1199','Gigabyte'),
('Płyta główna MSI B450M PRO-VDH MAX','Płyta główna','355','MSI'),
('Płyta główna Gigabyte X570 GAMING X','Płyta główna','769','Gigabyte'),
('Pamięć Corsair Vengeance RGB PRO, DDR4, 16 GB, 3200MHz, CL16','Pamięć RAM','404','Corsair'),
('Pamięć HyperX Fury RGB, DDR4, 16 GB, 3200MHz, CL16','Pamięć RAM','369','HyperX'),
('Zasilacz SilentiumPC Vero L3 500W','Zasilacz','207','SilentiumPC'),
('Zasilacz be quiet! SYSTEM POWER 9 500W','Zasilacz','249','be quiet!'),
('Obudowa Genesis Irid 400 ARGB','Obudowa','308','Genesis')



use sklep;
CREATE table kurierzy (
ID_kuriera INT auto_increment primary key,
Nazwa varchar(80),
Cena INT
);

INSERT INTO kurierzy (Nazwa,Cena) VALUES 
('UPS','24'),
('DHL','22'),
('InPost','19'),
('Pocztex','23'),
('DHL Parcel','22'),
('TNT','27'),
('FedEx','22')



use sklep;
CREATE table pracownicy  (
ID_pracownika INT auto_increment primary key,
Imie varchar(40),
Nazwisko varchar(40),
numer_pracownika INT
);

INSERT INTO pracownicy (Imie,Nazwisko,numer_pracownika) VALUES 
('Adam','Spychalski','43562'),
('Bartek','Milewski','63217'),
('Andrzej','Wrocławski','95643'),
('Mariusz','Poznański','14598'),
('Dariusz','Obuchowski','43278'),
('Kamil','Suchodolski','99876'),
('Damian','Garczewski','37846'),
('Adrian','Barczewski','76543'),
('Oliwier','Patecki','42136')



use sklep;
CREATE table zamowienia (
ID_zamowienia INT auto_increment primary key,
ID_klienta INT,
ID_produktu INT,
ID_kuriera INT,
ID_pracownika INT,
data_zamowienia DATE,
CONSTRAINT fk_ID_klient FOREIGN KEY (ID_klienta) REFERENCES klienci(ID_klienta),
CONSTRAINT fk_ID_produkt FOREIGN KEY (ID_produktu) REFERENCES produkty(ID_produktu),
CONSTRAINT fk_ID_kurier FOREIGN KEY (ID_kuriera) REFERENCES kurierzy(ID_kuriera),
CONSTRAINT fk_ID_pracownik FOREIGN KEY (ID_pracownika) REFERENCES pracownicy(ID_pracownika)
);

use sklep;
INSERT INTO zamowienia (ID_klienta,ID_produktu,ID_kuriera,ID_pracownika,data_zamowienia) VALUES 
('3','6','1','4','2019-01-18'),
('1','7','1','2','2019-09-26'),
('2','1','3','3','2019-09-29'),
('3','11','7','4','1019-08-16'),
('5','5','6','5','2020-03-19'),
('7','8','3','5','2020-01-23'),
('11','9','2','8','2019-05-05'),
('10','10','1','8','2019-07-14'),
('1','5','2','9','2019-12-19')
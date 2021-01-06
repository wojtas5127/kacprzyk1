Zapytanie1

CREATE VIEW zapytanie1 AS SELECT zamowienia.data_zamowienia,klienci.nazwisko,klienci.imie FROM klienci INNER JOIN zamowienia ON klienci.ID_klienta = zamowienia.ID_klienta ;

Zapytanie2

CREATE VIEW zapytanie2 AS SELECT
zamowienia.ID_zamowienia,zamowienia.ID_produktu,zamowienia.data_zamowienia,produkty.Nazwa,produkty.Typ,produkty.cena,produkty.Producent FROM zamowienia LEFT OUTER JOIN produkty ON zamowienia.id_produktu = produkty.id_produktu

Zapytanie3

CREATE VIEW zapytanie3 AS SELECT * FROM Produkty WHERE cena > (SELECT AVG(cena) FROM Produkty);

Zapytanie4

SELECT * FROM produkty ORDER BY cena

Zapytanie5

CREATE VIEW zapytanie5 AS SELECT klienci.ID_klienta,klienci.Imie,klienci.Nazwisko,zamowienia.id_zamowienia,zamowienia.data_zamowienia FROM klienci RIGHT OUTER JOIN zamowienia ON klienci.id_klienta = zamowienia.ID_klienta;

Zapytanie6

CREATE VIEW zapytanie6 AS SELECT COUNT(ID_kuriera) FROM zamowienia WHERE id_kuriera=1;

Zapytanie7

CREATE VIEW zapytanie7 AS SELECT * FROM kurierzy WHERE Cena = (SELECT MIN(cena) FROM kurierzy);

Zapytanie8

CREATE VIEW zapytanie8 AS SELECT COUNT(producent), typ FROM produkty GROUP BY typ ORDER BY COUNT(producent) DESC;

Zapytanie9

CREATE VIEW zapytanie9 AS SELECT DISTINCT zamowienia.ID_zamowienia,zamowienia.ID_pracownika,zamowienia.data_zamowienia,pracownicy.numer_pracownika,pracownicy.imie FROM zamowienia INNER JOIN pracownicy ON zamowienia.id_pracownika = pracownicy.id_pracownika

Zapytanie10

SELECT * FROM klienci WHERE imie LIKE 'M%' GROUP BY ID_klienta;

#zapytanie1 - wyświetla dane klientów i daty kiedy złożyli zamówienia
#zapytanie2 - wyświetla informacje o produktach i daty kiedy produkty zostały zamówione
#zapytanie3 - wyświetla produkty których cena jest większa od średniej ceny wszystkich produktów
#zapytanie4 - wyświetla wszystkie informacje o produktach i sortuje je rosnąco
#zapytanie5 - wyświetla dane klientów id zamówienia i datę złożenia zamówienia
#zapytanie6 - zlicza ilu kurierów o id=1 ma przywieźć zamówienie
#zapytanie7 - wyświetla kuriera o najniższej stawce za przewóz
#zapytanie8 - zlicza ilu producentów ma jaki typ produktów i sortuje malejąco po id producenta 
#zapytanie9 - wyświetla informacje o pracownikach którzy wysyłali dane zamówienia
#zapytanie10 - wyświetla wszystkich klientów których imię zaczyna się na litere M 
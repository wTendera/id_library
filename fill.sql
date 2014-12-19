BEGIN;
  \connect library

  SELECT add_new_category('Biografia/autobiografia/pamiętnik', 'Literatura piękna');
  SELECT add_new_category('Fantastyka, fantasy, science fiction', 'Literatura piękna');
  SELECT add_new_category('Historyczna', 'Literatura piękna');
  SELECT add_new_category('Horror', 'Literatura piękna');
  SELECT add_new_category('Klasyka', 'Literatura piękna');
  SELECT add_new_category('Literatura młodzieżowa', 'Literatura piękna');
  SELECT add_new_category('Literatura faktu', 'Literatura piękna');
  SELECT add_new_category('Literatura współczesna', 'Literatura piękna');
  SELECT add_new_category('Poezja', 'Literatura piękna');
  SELECT add_new_category('Przygodowa', 'Literatura piękna');
  SELECT add_new_category('Publicystyka literacka i eseje', 'Literatura piękna');
  SELECT add_new_category('Romans', 'Literatura piękna');
  SELECT add_new_category('Satyra', 'Literatura piękna');
  SELECT add_new_category('Thriller/sensacja/kryminał', 'Literatura piękna');
  SELECT add_new_category('Utwór dramatyczny (dramat, komedia, tragedia)', 'Literatura piękna');
  SELECT add_new_category('Psychologiczna', 'Literatura piękna');
  SELECT add_new_category('Astronomia, astrofizyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Biznes, finanse', 'Literatura popularnonaukowa');
  SELECT add_new_category('Encyklopedie i słowniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Ezoteryka, senniki, horoskopy', 'Literatura popularnonaukowa');
  SELECT add_new_category('Filozofia i etyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Flora i fauna', 'Literatura popularnonaukowa');
  SELECT add_new_category('Literatura podróżnicza', 'Literatura popularnonaukowa');
  SELECT add_new_category('Informatyka i matematyka', 'Literatura popularnonaukowa');
  SELECT add_new_category('Historia', 'Literatura popularnonaukowa');
  SELECT add_new_category('Językoznawstwo, nauka o literaturze', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki przyrodnicze (fizyka, chemia, biologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Nauki społeczne (psychologia, socjologia, itd.)', 'Literatura popularnonaukowa');
  SELECT add_new_category('Popularnonaukowa', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki', 'Literatura popularnonaukowa');
  SELECT add_new_category('Poradniki dla rodziców', 'Literatura popularnonaukowa');
  SELECT add_new_category('Technika', 'Literatura popularnonaukowa');
  SELECT add_new_category('Interaktywne, obrazkowe, edukacyjne', 'Literatura dziecięca');
  SELECT add_new_category('Opowieści dla młodszych dzieci', 'Literatura dziecięca');
  SELECT add_new_category('Bajki', 'Literatura dziecięca');
  SELECT add_new_category('Wierszyki, piosenki', 'Literatura dziecięca');
  SELECT add_new_category('Baśnie, legendy, podania', 'Literatura dziecięca');
  SELECT add_new_category('Historie biblijne', 'Literatura dziecięca');
  SELECT add_new_category('Opowiadania i powieści', 'Literatura dziecięca');
  SELECT add_new_category('Popularnonaukowe', 'Literatura dziecięca');
  SELECT add_new_category('Pozostałe', 'Literatura dziecięca');
  SELECT add_new_category('Albumy', 'Inne');
  SELECT add_new_category('Czasopisma', 'Inne');
  SELECT add_new_category('Film/kino/telewizja', 'Inne');
  SELECT add_new_category('Hobby', 'Inne');
  SELECT add_new_category('Komiksy', 'Inne');
  SELECT add_new_category('Kulinaria, przepisy kulinarne', 'Inne');
  SELECT add_new_category('Militaria, wojskowość', 'Inne');
  SELECT add_new_category('Motoryzacja', 'Inne');
  SELECT add_new_category('Muzyka', 'Inne');
  SELECT add_new_category('Religia', 'Inne');
  SELECT add_new_category('Rękodzieło', 'Inne');
  SELECT add_new_category('Rozrywka', 'Inne');
  SELECT add_new_category('Sport', 'Inne');
  SELECT add_new_category('Sztuka', 'Inne');
  SELECT add_new_category('Teatr', 'Inne');
  SELECT add_new_category('Turystyka, mapy, atlasy', 'Inne');
  SELECT add_new_category('Zdrowie, medycyna', 'Inne');


  INSERT INTO branches(branch_name, address, phone_num)
  VALUES
    ('Stare Miasto', 'ul. Rajska 1, 31-124 Kraków', '12 375 22 00'),
    ('Grzegórzki', 'ul. Masarska 14, 33-332 Kraków', '12 431 00 68'),
    ('Prądnik Czerwony', 'ul. Dobrego Pasterza 6, 31-416 Kraków', NULL),
    ('Prądnik Biały', 'ul. Ojcowska 27, 31-344 Kraków', '797 301 011'),
    ('Krowodrza', 'ul. Kazimierza Wielkiego 112/2, 30-074 Kraków', '012 636 9591'),
    ('Bronowice', 'ul. Zarzecze 2, 30-134 Kraków', '12 632 13 75'),
    ('Zwierzyniec', 'ul. Bolesława Prusa 8, 30-117 Kraków', '012 421 5667'),
    ('Dębniki', 'ul. Praska 50, 30-322 Kraków', '012 267 0303'),
    ('Łagiewniki', 'ul. Żywiecka 11, 30-427 Kraków', '012 268 1615'),
    ('Borek Fałęcki', 'ul. Niemcewicza 5, 30-590 Kraków', NULL),
    ('Swoszowice', 'ul. Inicjatywy Lokalnej 2, 30-499 Kraków', '12 264 9076'),
    ('Podgórze Duchackie', 'ul. Ks. Tischnera 14, 30-500 Kraków', NULL),
    ('Bieżanów', 'ul. Jana Kurczaba 4, 30-868 Kraków', '12 658 2612'),
    ('Prokocim', 'ul. Dygasińskiego 1, 30-901 Kraków', NULL),
    ('Podgórze', 'Rynek Podgórski 3, 30-533 Kraków', '12 656 6222'),
    ('Czyżyny', 'Osiedle Dywizjonu 303 24, 31-874 Kraków', '12 647 6264'),
    ('Mistrzejowice', 'ul. Miśnieńska 28, 31-612 Kraków', NULL),
    ('Bieńczyce', 'Osiedle Kalinowe 14, 31-812 Kraków', '12 641 4562'),
    ('Wzgórza Krzesławickie', 'Osiedle Na Stoku 5, 31-703 Kraków', '012 645 3002'),
    ('Nowa Huta', 'Osiedle Centrum B 2, 31-927 Kraków', '12 644 7840');

  INSERT INTO publishers(publisher_name, creation_date, address, phone_num)
  VALUES
    ('Apostolicum', NULL, NULL, NULL),
    ('BIBLOS', NULL, NULL, NULL),
    ('BookRage', NULL, NULL, NULL),
    ('Centrum Badań i Innowacji Pro-Akademia', NULL, NULL, NULL),
    ('Correspondance des Arts', NULL, NULL, NULL),
    ('Czytelnia dla wszystkich', NULL, NULL, NULL),
    ('Eduintegrator', NULL, NULL, NULL),
    ('ELAY', NULL, NULL, NULL),
    ('Fundacja Instytut Wydawniczy „Książka i Prasa”', NULL, NULL, NULL),
    ('Fundacja Nasza Przyszłość', NULL, NULL, NULL),
    ('Gdański Klub Fantastyki', NULL, NULL, NULL),
    ('Grupa kapitałowa PWN', NULL, NULL, NULL),
    ('Hanami', NULL, NULL, NULL),
    ('Hejnał', NULL, NULL, NULL),
    ('Grupa Wydawnicza Helion', NULL, NULL, NULL),
    ('Instytut Wydawniczy Agape', NULL, NULL, NULL),
    ('Instytut Wydawniczy SIMP', NULL, NULL, NULL),
    ('Jacek Music', NULL, NULL, NULL),
    ('Japonica Polonica Fantastica', NULL, NULL, NULL),
    ('Książnica-Atlas', NULL, NULL, NULL),
    ('Księgarnia św. Jacka', NULL, NULL, NULL),
    ('Lupus', NULL, NULL, NULL),
    ('Marpress', NULL, NULL, NULL),
    ('Wydawnictwo Michalineum', NULL, NULL, NULL),
    ('Niezależna Oficyna Wydawnicza', NULL, NULL, NULL),
    ('Noir sur Blanc', NULL, NULL, NULL),
    ('Officyna Liberałów', NULL, NULL, NULL),
    ('Oficyna Monos', NULL, NULL, NULL),
    ('Polskie Towarzystwo Astronomiczne', NULL, NULL, NULL),
    ('Polskie Wydawnictwo Encyklopedyczne', NULL, NULL, NULL),
    ('Rewasz', NULL, NULL, NULL),
    ('Wydawnictwo Solaris', NULL, NULL, NULL),
    ('Słowo Prawdy', NULL, NULL, NULL),
    ('Sport i Turystyka', NULL, NULL, NULL),
    ('Superpress', NULL, NULL, NULL),
    ('Tajne Wojskowe Zakłady Wydawnicze', NULL, NULL, NULL),
    ('TM-Semic', NULL, NULL, NULL),
    ('Wydawnictwo Altenberga', NULL, NULL, NULL),
    ('Wydawnictwo Armoryka', NULL, NULL, NULL),
    ('Wydawnictwo Czarne', NULL, NULL, NULL),
    ('Wydawnictwo Czerwone i Czarne', NULL, NULL, NULL),
    ('Wydawnictwo im. Konstytucji 3 Maja', NULL, NULL, NULL),
    ('Wydawnictwo Kirin', NULL, NULL, NULL),
    ('Wydawnictwo Muzyczne GAMMA', NULL, NULL, NULL),
    ('Wydawnictwo Pedagogiczne Operon', NULL, NULL, NULL),
    ('Wydawnictwo Piotra Marciszuka Stentor', NULL, NULL, NULL),
    ('Wydawnictwo Politechniki Śląskiej', NULL, NULL, NULL),
    ('Wydawnictwo Replika', NULL, NULL, NULL),
    ('Wydawnictwo WARTO', NULL, NULL, NULL),
    ('Wydawnictwo Zwiastun', NULL, NULL, NULL),
    ('Zakład Piller-Neumanna', NULL, NULL, NULL),
    ('Wydawnictwo „Znaki Czasu”', NULL, NULL, NULL);

  INSERT INTO clients(client_name, document_number, address, phone_num)
  VALUES
    ('Jan Nowak',          'AVU 123231', 'Kozia Wólka 23',                 '12354213'),
    ('Aleksander Nowak',   'AVU 321331', 'Piekry 53',                      '21737213'),
    ('Jan Bąk',            'ADS 156531', 'Szczyrk 15',                     '18721092'),
    ('Marian Paździoch',   'ACC 123531', 'Zakopane 1',                     '57387423'),
    ('Ferdynand Kiepski',  'AVV 909231', 'Kraków ul. Wrocławska 12',       '23480913'),
    ('Johny Bob',          'ALP 123325', 'Kraków ul. Łojasiewicza 6',      '47536191'),
    ('Johny Deep',         'ALL 901723', 'Kraków ul. Tyniecka 127',        '09546723'),
    ('Christina Aguillera','ALL 426112', 'Raciborowice 9',                 '13645781'),
    ('Kamil But',          'AQW 897324', 'Michałowice 128',                '43587231'),
    ('Jan Wipler',         'AVU 236542', 'Leśna Dolina 23',                '34284722'),
    ('Aleksander Wielki',  'AQW 098312', 'Mistrzejowice ul. krakowska 127','53478349'),
    ('Barbara Barbara',    'AME 284243', 'Raciborowice 12',                '37638932'),
    ('Agnieszka Szop',     'AAB 942342', 'Piekary 123',                    '48593789'),
    ('Maria Kita',         'ALP 231235', 'Zakopane 55',                    '13763244');


  SELECT add_new_specimen('Duma i uprzedzenie', '978-3-16-148410-0', 1, 5, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Drużyna Pierścienia', '123456789X', 2, 17, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Dwie Wieże', '1000000001', 2, 8, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca Pierścieni - Powrót Krola', '0000000000', 1, 5, 'soft', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jane Eyre', '2000000002', 1, 5, 'soft', '{Charlotte Bronte}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Kamień Filozoficzny', '3000000003', 4, 2, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Komnata Tajemnic', '4000000004', 5, 13, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Więzień Azkabanu', '5000000005', 7, 21, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Czara Ognia', '6000000006', 1, 12, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Zakon Feniksa', '7000000007', 2, 6, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Książe Półkrwi', '8000000008', 5, 4, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Harry Potter i Insygnia Śmierci', '9000000009', 7, 27, 'soft', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zabić drozda', '100000001X', 2, 17, 'soft', '{Harper Lee}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Biblia', '2000000010', 1, 5, 'hard', '{}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wichrowe Wzgórza', '3000000011', 2, 8, 'soft', '{Emily Bronte}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rok 1984', '4000000012', 1, 5, 'soft', '{George Orwell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Mroczne materie', '5000000013', 4, 2, 'soft', '{Philip Pullman}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wielkie nadzieje', '6000000014', 5, 13, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Małe kobietki', '7000000015', 7, 21, 'soft', '{Louisa M Alcott}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tessa D’Urberville', '8000000016', 1, 12, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Paragraf 22', '9000000017', 2, 6, 'soft', '{Joseph Heller}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dzieła zebrane Szekspira', '1000000028', 5, 4, 'soft', '{}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rebeka', '2000000029', 7, 27, 'soft', '{Daphne Du Maurier}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hobbit', '300000002X', 2, 17, 'soft', '{J.R.R. Tolkien}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Birdsong', '4000000020', 1, 5, 'soft', '{Sebastian Faulks}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Buszujący w zbożu', '5000000021', 2, 8, 'soft', '{J.D. Salinger}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Żona podróżnika w czasie', '6000000022', 1, 5, 'soft', '{Audrey Niffenegger}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miasteczko Middlemarch', '7000000023', 4, 2, 'soft', '{George Eliot}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Przeminęło z wiatrem', '8000000024', 5, 13, 'soft', '{Margaret Mitchell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wielki Gatsby', '9000000025', 7, 21, 'soft', '{Scott Fitzgerald}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Samotnia', '1000000036', 1, 12, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wojna i pokój', '2000000037', 2, 6, 'soft', '{Lew Tołstoj}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Autostopem przez Galaktykę', '3000000038', 5, 4, 'soft', '{Douglas Adams}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Znowu w Brideshead', '4000000039', 7, 27, 'soft', '{Evelyn Waugh}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zbrodnia i kara', '500000003X', 2, 17, 'soft', '{Fiodor Dostojewski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Grona gniewu', '6000000030', 1, 5, 'soft', '{John Steinbeck}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Alicja w Krainie Czarów', '7000000031', 2, 8, 'soft', '{Lewis Carroll}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('O czym szumią wierzby', '8000000032', 1, 5, 'soft', '{Kenneth Grahame}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Anna Karenina', '9000000033', 4, 2, 'soft', '{Lew Tołstoj}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('David Copperfield', '1000000044', 5, 13, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieści z Narnii', '2000000045', 7, 21, 'soft', '{C.S. Lewis}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Emma', '3000000046', 1, 12, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Perswazje', '4000000047', 2, 6, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Chłopiec z latawcem', '5000000048', 5, 4, 'soft', '{Khaled Hosseini}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kapitan Corelli (w innym tłumaczeniu: Mandolina kapitana Corellego)', '6000000049', 7, 27, 'soft', '{Louis De Bernieres}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wyznania Gejszy', '700000004X', 2, 17, 'soft', '{Arthur Golden}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kubuś Puchatek', '8000000040', 1, 5, 'soft', '{A.A. Milne}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Folwark zwierzęcy', '9000000041', 2, 8, 'soft', '{George Orwell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kod Da Vinci', '1000000052', 1, 5, 'soft', '{Dan Brown}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sto lat samotności', '2000000053', 4, 2, 'soft', '{Gabriel Garcia Marquez}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Modlitwa za Owena', '3000000054', 5, 13, 'soft', '{John Irving}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kobieta w bieli', '4000000055', 7, 21, 'soft', '{Wilkie Collins}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ania z Zielonego Wzgórza', '5000000056', 1, 12, 'soft', '{L.M. Montgomery}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Z dala od zgiełku', '6000000057', 2, 6, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść podręcznej', '7000000058', 5, 4, 'soft', '{Margaret Atwood}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Władca much', '8000000059', 7, 27, 'soft', '{William Golding}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pokuta', '900000005X', 2, 17, 'soft', '{Ian McEwan}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Życie Pi', '1000000060', 1, 5, 'soft', '{Yann Martel}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Diuna', '2000000061', 2, 8, 'soft', '{Frank Herbert}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Cold Comfort Farm', '3000000062', 1, 5, 'soft', '{Stella Gibbons}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Rozważna i romantyczna', '4000000063', 4, 2, 'soft', '{Jane Austen}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pretendent do ręki', '5000000064', 5, 13, 'soft', '{Vikram Seth}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Cień wiatru', '6000000065', 7, 21, 'soft', '{Carlos Ruiz Zafon}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść o dwóch miastach', '7000000066', 1, 12, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nowy wspaniały świat', '8000000067', 2, 6, 'soft', '{Aldous Huxley}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dziwny przypadek psa nocną porą', '9000000068', 5, 4, 'soft', '{Mark Haddon}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miłość w czasach zarazy', '1000000079', 7, 27, 'soft', '{Gabriel Garcia Marquez}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Myszy i ludzie', '200000007X', 2, 17, 'soft', '{John Steinbeck}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Lolita', '3000000070', 1, 5, 'soft', '{Vladimir Nabokov}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tajemna historia', '4000000071', 2, 8, 'soft', '{Donna Tartt}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nostalgia anioła', '5000000072', 1, 5, 'soft', '{Alice Sebold}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hrabia Monte Christo', '6000000073', 4, 2, 'soft', '{Alexandre Dumas}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('W drodze', '7000000074', 5, 13, 'soft', '{Jack Kerouac}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Juda nieznany', '8000000075', 7, 21, 'soft', '{Thomas Hardy}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dziennik Bridget Jones', '9000000076', 1, 12, 'soft', '{Helen Fielding}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dzieci północy', '1000000087', 2, 6, 'soft', '{Salman Rushdie}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Moby Dick', '2000000088', 5, 4, 'soft', '{Herman Melville}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Oliver Twist', '3000000089', 7, 27, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Dracula', '400000008X', 2, 17, 'soft', '{Bram Stoker}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Tajemniczy ogród', '5000000080', 1, 5, 'soft', '{Frances Hodgson Burnett}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Zapiski z małej wyspy', '6000000081', 2, 8, 'soft', '{Bill Bryson}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ulisses', '7000000082', 1, 5, 'soft', '{James Joyce}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Szklany klosz', '8000000083', 4, 2, 'soft', '{Sylvia Plath}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jaskółki i Amazonki', '9000000084', 5, 13, 'soft', '{Arthur Ransome}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Germinal', '1000000095', 7, 21, 'soft', '{Emile Zola}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Targowisko próżności', '2000000096', 1, 12, 'soft', '{William Makepeace Thackeray}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opętanie', '3000000097', 2, 6, 'soft', '{A.S. Byatt}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Opowieść wigilijna', '4000000098', 5, 4, 'soft', '{Charles Dickens}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Atlas chmur', '5000000099', 7, 27, 'soft', '{David Mitchell}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Kolor purpury', '600000009X', 2, 17, 'soft', '{Alice Walker}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Okruchy dnia', '7000000090', 1, 5, 'soft', '{Kazuo Ishiguro}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pani Bovary', '8000000091', 2, 8, 'soft', '{Gustave Flaubert}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('A Fine Balance', '9000000092', 1, 5, 'soft', '{Rohinton Mistry}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pajęczyna Szarloty', '6000000103', 4, 2, 'soft', '{E.B. White}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pięć osób, które spotykamy w niebie', '7000000104', 5, 13, 'soft', '{Mitch Albom}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Przygody Sherlocka Holmesa', '8000000105', 7, 21, 'soft', '{Sir Arthur Conan Doyle}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('The Faraway Tree Collection', '9000000106', 1, 12, 'soft', '{Enid Blyton}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Jądro ciemności', '1000000117', 2, 6, 'soft', '{Joseph Conrad}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Mały Książę', '2000000118', 5, 4, 'soft', '{Antoine De Saint-Exupery}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Fabryka os', '3000000119', 7, 27, 'soft', '{Iain Banks}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wodnikowe Wzgórze', '400000011X', 2, 17, 'soft', '{Richard Adams}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sprzysiężenie głupców', '5000000110', 1, 5, 'soft', '{John Kennedy Toole}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miasteczko jak Alece Springs', '6000000111', 2, 8, 'soft', '{Nevil Shute}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Trzej muszkieterowie', '7000000112', 1, 5, 'soft', '{Alexandre Dumas}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Hamlet', '8000000113', 4, 2, 'soft', '{William Shakespeare}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Charlie i fabryka czekolady', '9000000114', 5, 13, 'soft', '{Roald Dahl}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Nędznicy', '1000000125', 7, 21, 'soft', '{Victor Hugo}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('W pustyni i w puszczy', '2000000126', 1, 12, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Krzyżacy', '3000000127', 2, 6, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Potop', '4000000128', 5, 4, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ogniem i mieczem', '5000000129', 7, 27, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pan Wołodyjowski', '600000012X', 2, 17, 'soft', '{Henryk Sienkiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pan Tadeusz, czyli ostatni zajazd na Litwie', '7000000120', 1, 5, 'soft', '{Adam Mickiewicz}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ten obcy', '8000000121', 2, 8, 'soft', '{Irena Jurgielewiczowa}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Krew elfów', '9000000122', 1, 5, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wieża jaskółki', '1000000133', 4, 2, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Ostatnie życzenie', '2000000134', 5, 13, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Pani jeziora', '3000000135', 7, 21, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Miecz przeznaczenia', '4000000136', 1, 12, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Czas pogardy', '5000000137', 2, 6, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Chrzest ognia', '6000000138', 5, 4, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Sezon burz', '7000000139', 7, 27, 'soft', '{Andrzej Sapkowski}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Seria niefortunnych zdarzeń', '800000013X', 2, 17, 'soft', '{Lemony Snicket}', '{}', 'Wydanie pierwsze', 'Apostolicum');
  SELECT add_new_specimen('Wprowadzenie do algorytmów', '9000000130', 1, 5, 'soft', '{Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein}', '{Informatyka i matematyka}', 'Wydanie pierwsze', 'Apostolicum');




COMMIT;
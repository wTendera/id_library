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



  SELECT add_new_book('Duma i uprzedzenie', '{Jane Austen}');
  SELECT add_new_book('Władca Pierścieni - Drużyna Pierścienia', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Władca Pierścieni - Dwie Wieże', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Władca Pierścieni - Powrót Krola', '{J.R.R. Tolkien}', '{"Fantastyka, fantasy, science fiction"}');
  SELECT add_new_book('Jane Eyre', '{Charlotte Bronte}');
  SELECT add_new_book('Harry Potter i Kamień Filozoficzny', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Komnata Tajemnic', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Więzień Azkabanu', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Czara Ognia', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Zakon Feniksa', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Książe Półkrwi', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Harry Potter i Insygnia Śmierci', '{J.K. Rowling}', '{"Fantastyka, fantasy, science fiction", Literatura współczesna}');
  SELECT add_new_book('Zabić drozda', '{Harper Lee}');
  SELECT add_new_book('Biblia');
  SELECT add_new_book('Wichrowe Wzgórza', '{Emily Bronte}');
  SELECT add_new_book('Rok 1984', '{George Orwell}');
  SELECT add_new_book('Mroczne materie', '{Philip Pullman}');
  SELECT add_new_book('Wielkie nadzieje', '{Charles Dickens}');
  SELECT add_new_book('Małe kobietki', '{Louisa M Alcott}');
  SELECT add_new_book('Tessa D’Urberville', '{Thomas Hardy}');
  SELECT add_new_book('Paragraf 22', '{Joseph Heller}');
  SELECT add_new_book('Dzieła zebrane Szekspira');
  SELECT add_new_book('Rebeka', '{Daphne Du Maurier}');
  SELECT add_new_book('Hobbit', '{J.R.R. Tolkien}');
  SELECT add_new_book('Birdsong', '{Sebastian Faulks}');
  SELECT add_new_book('Buszujący w zbożu', '{J.D. Salinger}');
  SELECT add_new_book('Żona podróżnika w czasie', '{Audrey Niffenegger}');
  SELECT add_new_book('Miasteczko Middlemarch', '{George Eliot}');
  SELECT add_new_book('Przeminęło z wiatrem', '{Margaret Mitchell}');
  SELECT add_new_book('Wielki Gatsby', '{Scott Fitzgerald}');
  SELECT add_new_book('Samotnia', '{Charles Dickens}');
  SELECT add_new_book('Wojna i pokój', '{Lew Tołstoj}');
  SELECT add_new_book('Autostopem przez Galaktykę', '{Douglas Adams}');
  SELECT add_new_book('Znowu w Brideshead', '{Evelyn Waugh}');
  SELECT add_new_book('Zbrodnia i kara', '{Fiodor Dostojewski}');
  SELECT add_new_book('Grona gniewu', '{John Steinbeck}');
  SELECT add_new_book('Alicja w Krainie Czarów', '{Lewis Carroll}');
  SELECT add_new_book('O czym szumią wierzby', '{Kenneth Grahame}');
  SELECT add_new_book('Anna Karenina', '{Lew Tołstoj}');
  SELECT add_new_book('David Copperfield', '{Charles Dickens}');
  SELECT add_new_book('Opowieści z Narnii', '{C.S. Lewis}');
  SELECT add_new_book('Emma', '{Jane Austen}');
  SELECT add_new_book('Perswazje', '{Jane Austen}');
  SELECT add_new_book('Chłopiec z latawcem', '{Khaled Hosseini}');
  SELECT add_new_book('Kapitan Corelli (w innym tłumaczeniu: Mandolina kapitana Corellego)', '{Louis De Bernieres}');
  SELECT add_new_book('Wyznania Gejszy', '{Arthur Golden}');
  SELECT add_new_book('Kubuś Puchatek', '{A.A. Milne}');
  SELECT add_new_book('Folwark zwierzęcy', '{George Orwell}');
  SELECT add_new_book('Kod Da Vinci', '{Dan Brown}');
  SELECT add_new_book('Sto lat samotności', '{Gabriel Garcia Marquez}');
  SELECT add_new_book('Modlitwa za Owena', '{John Irving}');
  SELECT add_new_book('Kobieta w bieli', '{Wilkie Collins}');
  SELECT add_new_book('Ania z Zielonego Wzgórza', '{L.M. Montgomery}');
  SELECT add_new_book('Z dala od zgiełku', '{Thomas Hardy}');
  SELECT add_new_book('Opowieść podręcznej', '{Margaret Atwood}');
  SELECT add_new_book('Władca much', '{William Golding}');
  SELECT add_new_book('Pokuta', '{Ian McEwan}');
  SELECT add_new_book('Życie Pi', '{Yann Martel}');
  SELECT add_new_book('Diuna', '{Frank Herbert}');
  SELECT add_new_book('Cold Comfort Farm', '{Stella Gibbons}');
  SELECT add_new_book('Rozważna i romantyczna', '{Jane Austen}');
  SELECT add_new_book('Pretendent do ręki', '{Vikram Seth}');
  SELECT add_new_book('Cień wiatru', '{Carlos Ruiz Zafon}');
  SELECT add_new_book('Opowieść o dwóch miastach', '{Charles Dickens}');
  SELECT add_new_book('Nowy wspaniały świat', '{Aldous Huxley}');
  SELECT add_new_book('Dziwny przypadek psa nocną porą', '{Mark Haddon}');
  SELECT add_new_book('Miłość w czasach zarazy', '{Gabriel Garcia Marquez}');
  SELECT add_new_book('Myszy i ludzie', '{John Steinbeck}');
  SELECT add_new_book('Lolita', '{Vladimir Nabokov}');
  SELECT add_new_book('Tajemna historia', '{Donna Tartt}');
  SELECT add_new_book('Nostalgia anioła', '{Alice Sebold}');
  SELECT add_new_book('Hrabia Monte Christo', '{Alexandre Dumas}');
  SELECT add_new_book('W drodze', '{Jack Kerouac}');
  SELECT add_new_book('Juda nieznany', '{Thomas Hardy}');
  SELECT add_new_book('Dziennik Bridget Jones', '{Helen Fielding}');
  SELECT add_new_book('Dzieci północy', '{Salman Rushdie}');
  SELECT add_new_book('Moby Dick', '{Herman Melville}');
  SELECT add_new_book('Oliver Twist', '{Charles Dickens}');
  SELECT add_new_book('Dracula', '{Bram Stoker}');
  SELECT add_new_book('Tajemniczy ogród', '{Frances Hodgson Burnett}');
  SELECT add_new_book('Zapiski z małej wyspy', '{Bill Bryson}');
  SELECT add_new_book('Ulisses', '{James Joyce}');
  SELECT add_new_book('Szklany klosz', '{Sylvia Plath}');
  SELECT add_new_book('Jaskółki i Amazonki', '{Arthur Ransome}');
  SELECT add_new_book('Germinal', '{Emile Zola}');
  SELECT add_new_book('Targowisko próżności', '{William Makepeace Thackeray}');
  SELECT add_new_book('Opętanie', '{A.S. Byatt}');
  SELECT add_new_book('Opowieść wigilijna', '{Charles Dickens}');
  SELECT add_new_book('Atlas chmur', '{David Mitchell}');
  SELECT add_new_book('Kolor purpury', '{Alice Walker}');
  SELECT add_new_book('Okruchy dnia', '{Kazuo Ishiguro}');
  SELECT add_new_book('Pani Bovary', '{Gustave Flaubert}');
  SELECT add_new_book('A Fine Balance', '{Rohinton Mistry}');
  SELECT add_new_book('Pajęczyna Szarloty', '{E.B. White}');
  SELECT add_new_book('Pięć osób, które spotykamy w niebie', '{Mitch Albom}');
  SELECT add_new_book('Przygody Sherlocka Holmesa', '{Sir Arthur Conan Doyle}');
  SELECT add_new_book('The Faraway Tree Collection', '{Enid Blyton}');
  SELECT add_new_book('Jądro ciemności', '{Joseph Conrad}');
  SELECT add_new_book('Mały Książę', '{Antoine De Saint-Exupery}');
  SELECT add_new_book('Fabryka os', '{Iain Banks}');
  SELECT add_new_book('Wodnikowe Wzgórze', '{Richard Adams}');
  SELECT add_new_book('Sprzysiężenie głupców', '{John Kennedy Toole}');
  SELECT add_new_book('Miasteczko jak Alece Springs', '{Nevil Shute}');
  SELECT add_new_book('Trzej muszkieterowie', '{Alexandre Dumas}');
  SELECT add_new_book('Hamlet', '{William Shakespeare}');
  SELECT add_new_book('Charlie i fabryka czekolady', '{Roald Dahl}');
  SELECT add_new_book('Nędznicy', '{Victor Hugo}');
  SELECT add_new_book('W pustyni i w puszczy', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Krzyżacy', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Potop', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Ogniem i mieczem', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Pan Wołodyjowski', '{Henryk Sienkiewicz}');
  SELECT add_new_book('Pan Tadeusz, czyli ostatni zajazd na Litwie', '{Adam Mickiewicz}');
  SELECT add_new_book('Ten obcy', '{Irena Jurgielewiczowa}');
  SELECT add_new_book('Krew elfów', '{Andrzej Sapkowski}');
  SELECT add_new_book('Wieża jaskółki', '{Andrzej Sapkowski}');
  SELECT add_new_book('Ostatnie życzenie', '{Andrzej Sapkowski}');
  SELECT add_new_book('Pani jeziora', '{Andrzej Sapkowski}');
  SELECT add_new_book('Miecz przeznaczenia', '{Andrzej Sapkowski}');
  SELECT add_new_book('Czas pogardy', '{Andrzej Sapkowski}');
  SELECT add_new_book('Chrzest ognia', '{Andrzej Sapkowski}');
  SELECT add_new_book('Sezon burz', '{Andrzej Sapkowski}');
  SELECT add_new_book('Seria niefortunnych zdarzeń', '{Lemony Snicket}');
  SELECT add_new_book('Wprowadzenie do algorytmów', '{Thomas H. Cormen, Charles E. Leiserson, Ronald L. Rivest, Clifford Stein}', '{Informatyka i matematyka}');



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

COMMIT;
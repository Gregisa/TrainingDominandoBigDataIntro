IMPORT $;

// 4. Filtre e conte todas as pessoas que moram no estado da Flórida. Sua contagem esperada é 40854.
Persons := $.File_Persons.File;

OnlyFl := COUNT(Persons(Persons.state='FL'));

OUTPUT((Persons), NAMED('All_Persons'));
OUTPUT((OnlyFl), NAMED('Florida_Persons'));

// 5. Filtre e conte todas as pessoas que vivem no estado da Flórida e na cidade de Miami. Sua contagem esperada é
// agora 2438.
PersonsFlMia := COUNT(Persons(Persons.state='FL',Persons.city='MIAMI'));

OUTPUT((PersonsFlMia), NAMED('Miami_Flo_Persons'));

// 6. Filtre e conte todas as pessoas que moram no estado da Flórida, na cidade de Miami, e tenham um código postal
// 33102. Sua contagem esperada é agora 40.
PersonsFlMia_Zip := COUNT(Persons(Persons.state='FL',Persons.city='MIAMI',Persons.zipcode='33102'));

OUTPUT((PersonsFlMia_Zip), NAMED('Zip_Miami_Flo_Persons'));

// 7. Filtre e conte todas as pessoas cujo nome começa com a letra 'B'. Use várias condições de filtro nesta consulta. Sua
// contagem esperada é 31193.
BegginWithB := COUNT(Persons(Persons.firstname>='B',Persons.firstname<'C'));

OUTPUT((BegginWithB), NAMED('Persons_W_B'));

// 8. Filtre e conte todas as pessoas cujo ano de data do arquivo é posterior a 2000. Sua contagem esperada é 687.
Before_2000 := COUNT(Persons(Persons.filedate[..4]>'2000'));

OUTPUT((Before_2000), NAMED('Files_Before_2000'));
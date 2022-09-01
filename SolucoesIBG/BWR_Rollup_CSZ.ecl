IMPORT $;

//Aula 5/ Exc. 6a e 6b 
Layout_Table_Persons := RECORD
	UNSIGNED4 czd_id := $.STD_Persons.File.recID;
	$.STD_Persons.File.city;
	$.STD_Persons.File.state;
	$.STD_Persons.File.zipcode;
END;
//"fatiando" e retornando uma tabela com nome, sobrenome, cisade, estado, zipcode e id
Table_Persons := TABLE($.STD_Persons.File,Layout_Table_Persons);
Table_Persons;
//ordenando para achar duplicidades
Sort_Persons := SORT(Table_Persons,zipcode,city,state);

Layout_T_recs RollCSV(Layout_T_recs L, Layout_T_recs R) := TRANSFORM
 SELF.CSZ_ID := IF(L.CSZ_ID < R.CSZ_ID,L.CSZ_ID,R.CSZ_ID);
 SELF := L;
END;
Rollup_CSZ := ROLLUP(S_Recs,
 LEFT.Zipcode=RIGHT.Zipcode AND
 LEFT.State=RIGHT.State AND
 LEFT.City=RIGHT.City,
 RollCSV(LEFT,RIGHT));
OUTPUT(Rollup_CSZ,,'~CLASS::BMF::OUT::LookupCSZ',OVERWRITE)

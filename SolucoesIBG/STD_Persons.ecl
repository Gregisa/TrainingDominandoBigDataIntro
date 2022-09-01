IMPORT $, STD;

Table_Persons := TABLE($.File_Persons.File, {FirstName, LastName});
Tabe_Persons;

Upper_Names := RECORD
  UNSIGNED   recId;  
  STRING     Firstname;
  STRING     Lastname;
END;

Upper_Names tranformPersons(tbl Le, UNISGNED cnt) := TRANSFORM
    SELF.recId := cnt;
    SELF.FirstName := STD.Str.ToUpperCase(Le.FirstName);
    SELF.LastName := STD.Str.ToUpperCase(Le.FirstName);
    SELF := Le;
END;

New_Persons := PROJECT(tbl, transformpersons(LEFT, COUNTER)) : PERSIST('~CLASS::IBG::PERSIST::STD_Persons');
New_Persons;
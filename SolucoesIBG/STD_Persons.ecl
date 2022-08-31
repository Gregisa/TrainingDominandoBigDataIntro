IMPORT $, STD;

Persons := $.File_Persons.File;

Layout_Name_State := RECORD
Persons.LastName;
Persons.FirstName;
Persons.State;
END;

EXPORT STD_Persons := TABLE(Persons, Layout_Name_State);
// :PERSIST('~CLASS::IBG::PERSIST::STD_Persons');
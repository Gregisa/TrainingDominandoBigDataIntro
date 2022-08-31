IMPORT $;

People_With_ID := RECORD
UNSIGNED4 RecID;
$.File_Persons.Layout;
END;

People_With_ID RecId($.File_Persons.Layout L,INTEGER C) := TRANSFORM
SELF.RecID := C;
SELF := L;
END;

EXPORT UID_Persons := PROJECT($.File_Persons.File,RecId(LEFT,COUNTER));
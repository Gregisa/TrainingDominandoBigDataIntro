IMPORT $;

People_With_ID := RECORD
UNSIGNED4 recID;
$.File_Persons.Layout;
END;

People_With_ID recID($.File_Persons.Layout L,INTEGER C) := TRANSFORM
SELF.recID := C;
SELF := L;
END;

EXPORT UID_Persons := PROJECT($.File_Persons.File,recID(LEFT,COUNTER));
IMPORT $;

Crimes_With_ID := RECORD
UNSIGNED4 RecID;
$.File_Crimes.Layout;
END;

Crimes_With_ID RecId($.File_Crimes.Layout L,INTEGER C) := TRANSFORM
SELF.RecID := C;
SELF := L;
END;

EXPORT UID_Crimes := PROJECT($.File_Crimes.File,RecId(LEFT,COUNTER))

:PERSIST('~class::ibg::persist::crimes_-_2001_to_present');
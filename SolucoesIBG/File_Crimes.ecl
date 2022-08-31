EXPORT File_Crimes := MODULE

EXPORT Layout := RECORD 
    STRING8 ID;
    STRING11 Case_Number;
    STRING22 Date;
    STRING38 Block;
    STRING4 IUCR;
    STRING33 Primary_Type;
    STRING60 Description;
    STRING53 Location_Description;
    STRING6 Arrest;
    STRING8 Domestic;
    STRING4 Beat;
    STRING8 District;
    STRING4 Ward;
    STRING14 Community_Area;
    STRING8 FBI_Code;
    STRING12 X_Coordinate;
    STRING12 Y_Coordinate;
    STRING4 Year;
    STRING22 Updated_On;
    STRING12 Latitude;
    STRING13 Longitude;
    STRING29 Location;
END;

EXPORT File := DATASET('~class::ibg::intro::crimes_-_2001_to_present.csv', Layout, CSV (heading(1)));

END;
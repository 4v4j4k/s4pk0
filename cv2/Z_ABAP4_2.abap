REPORT Z_ABAP4_2.

PARAMETERS: Name TYPE string,
            Surname TYPE string,
            Street TYPE string,
            City TYPE string.

WRITE: / sy-vline,
       10 'Meno' COLOR COL_KEY INVERSE ON,
       35 'Priezvisko' COLOR COL_POSITIVE INVERSE ON,
       60 'Ulica' COLOR COL_NEGATIVE INVERSE ON,
       85 'Mesto' COLOR COL_HEADING INVERSE ON.

WRITE: / sy-uline.

WRITE: / sy-vline,
  10 Name COLOR COL_KEY INVERSE ON,
  35 Surname COLOR COL_POSITIVE INVERSE ON,
  60 Street COLOR COL_NEGATIVE INVERSE ON,
  85 City COLOR COL_HEADING INVERSE ON.
WRITE: / sy-uline.
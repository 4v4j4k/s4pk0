*&---------------------------------------------------------------------*
*& Report  Z_ABAP_KAP_6_1
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  Z_ABAP_KAP_6_1.

* Define strings
DATA: gender TYPE c length 1 VALUE 'F',
      phone TYPE n LENGTH 8 VALUE '887766',
      area_code TYPE n LENGTH 5 VALUE '09876',
      international_area_code TYPE c LENGTH 5 VALUE '+41',
      phone_international TYPE c LENGTH 25.

WRITE / 'original field content'.
WRITE:   30 phone,
         40 area_code,
         50 international_area_code,
         60 phone_international.
ULINE.

* SHIFT statement
WRITE / 'Shift'.
SHIFT phone LEFT DELETING LEADING '0'.
WRITE 30 phone.
SHIFT phone BY 2 PLACES RIGHT.
WRITE /30 phone.
ULINE.

phone_international = '  887766'.
WRITE: / 'Initial phone_international:  ',  phone_international.

REPLACE '' IN phone_international WITH area_code.
REPLACE '0' IN phone_international WITH '+41-(0)'.
WRITE: / 'truncated phone_international with `0` changed to `+41-(0)`:  ',  phone_international, /.

phone_international = '+41 -(0)9876 887766'.
CONDENSE phone_international.
WRITE: / 'after CONDENSE phone_international:   ', phone_international, /.

phone = '887766'.
phone_international = space.
WRITE: / 'phone:  ', phone.
WRITE: / 'phone_international:  ', phone_international, /.


CONCATENATE international_area_code area_code phone INTO phone_international SEPARATED BY '-'.
WRITE: / 'phone_international after concatenating international_area_code, area_code and phone with `-` separator:   ', phone_international, /.

SPLIT phone_international AT '-' INTO international_area_code area_code phone.
WRITE: 'after splitting them back through `-` separator:  ', / international_area_code, / area_code, / phone, /.

phone_international = '+41-(0)9876-887766'.
WRITE: / phone_international, /.
area_code = phone_international+4(7).
WRITE: / 'after assigning from 4th character for the next 7 characters into area_code from phone_international:   ', area_code.

REPLACE '41' IN phone_international WITH '33'.
WRITE: / 'after replaceing 41 with 33 in phone_international:   ', phone_international.
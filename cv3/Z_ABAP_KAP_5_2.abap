*&---------------------------------------------------------------------*
*& Report  Z_ABAP_KAP_5_2
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  Z_ABAP_KAP_5_2.

TYPES: ty_char TYPE c LENGTH 10.

TYPES: ty_number TYPE n LENGTH 7.

DATA: lv_char TYPE ty_char VALUE 'Hello ABAP'.

CONSTANTS: lc_name TYPE c LENGTH 30 VALUE 'John Doe'.

DATA: lv_result TYPE i.
lv_result = 2 + 3 * 5.

DATA: lv_text TYPE string.

CASE sy-langu.
  WHEN 'EN'.
    lv_text = 'English Text'.
  WHEN 'DE'.
    lv_text = 'German Text'.
  WHEN OTHERS.
    lv_text = 'Other Language Text'.
ENDCASE.

START-OF-SELECTION.

  WRITE: / 'Character Variable:', lv_char.
  WRITE: / 'Calculation Result:', lv_result.
  WRITE: / 'System Date:', sy-datum.
  WRITE: / 'User Login Name:', sy-uname.
  WRITE: / 'Text:', lv_text.
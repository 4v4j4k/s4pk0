*&---------------------------------------------------------------------*
*& Report  Z_ABAP_KAP_5
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  Z_ABAP_KAP_5.

DATA: gv_result TYPE p LENGTH 16 DECIMALS 2.

PARAMETERS: pa_int1 TYPE i,
            pa_int2 TYPE i,
            pa_op   TYPE c.

  CASE pa_op.
    WHEN '+'.
      gv_result = pa_int1 + pa_int2.
    WHEN '-'.
      gv_result = pa_int1 - pa_int2.
    WHEN '*'.
      gv_result = pa_int1 * pa_int2.
    WHEN '^'.
      gv_result = pa_int1 ** pa_int2.
    WHEN '/'.
      IF pa_int2 = 0.
        WRITE: / 'Error: Division by zero is not allowed.'.
        EXIT.
      ELSE.
        gv_result = pa_int1 / pa_int2.
      ENDIF.
    WHEN OTHERS.
      WRITE: / 'Error: Invalid arithmetic operator specified.'.
      EXIT.
  ENDCASE.

  WRITE: / 'Result:', gv_result.
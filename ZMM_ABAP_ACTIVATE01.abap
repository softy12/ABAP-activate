REPORT zmm_abap_activate01.

PARAMETERS: p_prg  TYPE e071-obj_name,
            p_otyp TYPE sewor_working_area-object DEFAULT 'REPS'. "REPS=report, METH=method

CALL FUNCTION 'REPS_OBJECT_ACTIVATE'
  EXPORTING
    object_name = p_prg
    object_type = p_otyp
 EXCEPTIONS
   not_executed = 1
   others       = 2.

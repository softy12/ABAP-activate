REPORT zmm_abap_activate02.

PARAMETERS: p_prgsrc TYPE sy-repid, "report where source code is read from
            p_prgtgt TYPE sy-repid. "target report that will be created

DATA: lt_source  TYPE TABLE OF string,
      ls_type(1) TYPE c VALUE '1'. "1=Executable program

READ REPORT p_prgsrc INTO lt_source.

INSERT REPORT p_prgtgt FROM lt_source PROGRAM TYPE '1' UNICODE ENABLING 'X'.

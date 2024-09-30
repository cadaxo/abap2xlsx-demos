*&---------------------------------------------------------------------*
*& Report  ZDEMO_EXCEL23
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT zdemo_excel23.

DATA lo_excel TYPE REF TO zcl_excel.

CONSTANTS: gc_save_file_name TYPE string VALUE '23_Sheets_with_and_without_grid_lines.xlsx'.
INCLUDE zdemo_excel_outputopt_incl.


START-OF-SELECTION.
  lo_excel = zcl_excel_demo23=>zif_excel_demo_output~run( ).

*** Create output
  lcl_output=>output( lo_excel ).
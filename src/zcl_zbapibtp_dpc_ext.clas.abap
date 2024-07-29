class ZCL_ZBAPIBTP_DPC_EXT definition
  public
  inheriting from ZCL_ZBAPIBTP_DPC
  create public .

public section.
protected section.

  methods BAPIRETSET_CREATE_ENTITY
    redefinition .
  methods BAPIRETSET_DELETE_ENTITY
    redefinition .
  methods BAPIRETSET_GET_ENTITY
    redefinition .
  methods BAPIRETSET_GET_ENTITYSET
    redefinition .
  methods MENSAGEMSET_CREATE_ENTITY
    redefinition .
  methods MENSAGEMSET_DELETE_ENTITY
    redefinition .
  methods MENSAGEMSET_GET_ENTITY
    redefinition .
  methods MENSAGEMSET_GET_ENTITYSET
    redefinition .
  methods MENSAGEMSET_UPDATE_ENTITY
    redefinition .
  methods BAPIRETSET_UPDATE_ENTITY
    redefinition .
private section.
ENDCLASS.



CLASS ZCL_ZBAPIBTP_DPC_EXT IMPLEMENTATION.


  method BAPIRETSET_CREATE_ENTITY.

  endmethod.


  method BAPIRETSET_DELETE_ENTITY.

  endmethod.


  METHOD bapiretset_get_entity.

    DATA: wa_addr TYPE bapiaddr3,
          it_ret  TYPE TABLE OF bapiret2.

    DATA(lo_msg) = me->/iwbep/if_mgw_conv_srv_runtime~get_message_container( ).

    CALL FUNCTION 'BAPI_USER_GET_DETAIL'
      EXPORTING
        username = 'DEVELOPER'
      IMPORTING
        address  = wa_addr
      TABLES
        return   = it_ret.

    er_entity-fullname = wa_addr-fullname.

  ENDMETHOD.


  method BAPIRETSET_GET_ENTITYSET.

  endmethod.


  method BAPIRETSET_UPDATE_ENTITY.

  endmethod.


  method MENSAGEMSET_CREATE_ENTITY.

  endmethod.


  method MENSAGEMSET_DELETE_ENTITY.
  endmethod.


  method MENSAGEMSET_GET_ENTITY.

  endmethod.


  method MENSAGEMSET_GET_ENTITYSET.

  endmethod.


  method MENSAGEMSET_UPDATE_ENTITY.

  endmethod.
ENDCLASS.

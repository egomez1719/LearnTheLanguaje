// PERSONAS.sl
// PERSONAS Lookup List

Use DFClient.pkg
Use cDbCJGridPromptList.pkg
Use cDbCJGridColumn.pkg
Use Windows.pkg

Use PERSONAS.dd

CD_Popup_Object PERSONAS_sl is a dbModalPanel
    Set Location to 5 5
    Set Size to 134 392
    Set Label To "PERSONAS Lookup List"
    Set Border_Style to Border_Thick
    Set Minimize_Icon to False


    Object oPERSONAS_DD is a cPERSONAS_DD
    End_Object 

    Set Main_DD To oPERSONAS_DD
    Set Server  To oPERSONAS_DD



    Object oSelList is a cDbCJGridPromptList
        Set Size to 105 600
        Set Location to 5 5
        Set peAnchors to anNone
        Set psLayoutSection to "PERSONAS_sl_oSelList"
        Set Ordering to 1
        Set pbAutoServer to True

        Object oPERSONAS_Recnum is a cDbCJGridColumn
            Entry_Item PERSONAS.Recnum
            Set piWidth to 50
            Set psCaption to "Recnum"
        End_Object

        Object oPERSONAS_CLAVE is a cDbCJGridColumn
            Entry_Item PERSONAS.CLAVE
            Set piWidth to 70
            Set psCaption to "Clave"
        End_Object 

        Object oPERSONAS_PRIMER_NOMBRE is a cDbCJGridColumn
            Entry_Item PERSONAS.PRIMER_NOMBRE
            Set piWidth to 99
            Set psCaption to "Primer Nombre"
        End_Object 

        Object oPERSONAS_SEGUNDO_NOMBRE is a cDbCJGridColumn
            Entry_Item PERSONAS.SEGUNDO_NOMBRE
            Set piWidth to 112
            Set psCaption to "Segundo Nombre"
        End_Object 

        Object oPERSONAS_PRIMER_APELLIDO is a cDbCJGridColumn
            Entry_Item PERSONAS.PRIMER_APELLIDO
            Set piWidth to 104
            Set psCaption to "Primer Apellido"
        End_Object 

        Object oPERSONAS_SEGUNDO_APELLIDO is a cDbCJGridColumn
            Entry_Item PERSONAS.SEGUNDO_APELLIDO
            Set piWidth to 117
            Set psCaption to "Segundo Apellido"
        End_Object 

        Object oPERSONAS_APELLIDO_CASADA is a cDbCJGridColumn
            Entry_Item PERSONAS.APELLIDO_CASADA
            Set piWidth to 448
            Set psCaption to "Apellido Casada"
        End_Object 


    End_Object 

    Object oOk_bn is a Button
        Set Label to "&Ok"
        Set Location to 115 229
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send OK of oSelList
        End_Procedure

    End_Object 

    Object oCancel_bn is a Button
        Set Label to "&Cancel"
        Set Location to 115 283
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Cancel of oSelList
        End_Procedure

    End_Object 

    Object oSearch_bn is a Button
        Set Label to "&Search..."
        Set Location to 115 337
        Set peAnchors to anBottomRight

        Procedure OnClick
            Send Search of oSelList
        End_Procedure

    End_Object 

    On_Key Key_Alt+Key_O Send KeyAction of oOk_bn
    On_Key Key_Alt+Key_C Send KeyAction of oCancel_bn
    On_Key Key_Alt+Key_S Send KeyAction of oSearch_bn


CD_End_Object // PERSONAS_sl

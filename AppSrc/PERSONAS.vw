Use Windows.pkg
Use DFClient.pkg
Use PERSONAS.dd
Use DFEntry.pkg

Use MonthCalendarPrompt.dg
Use dfcentry.pkg
Use dfLine.pkg

Deferred_View Activate_oPERSONAS for ;
Object oPERSONAS is a dbView
    Object oPERSONAS_DD is a cPERSONAS_DD
        
        Procedure Relate_main_file
            String sNCompleto
            
            Forward Send Relate_main_file            
            
            Move '' to sNCompleto
            If PERSONAS.Recnum Ne 0 Move  (fNombreCompleto(PERSONAS.CLAVE)) to sNCompleto  
            Set Value of oDbNombre Item 0 to sNCompleto

        End_Procedure  //  Relate_main_file
              
    End_Object

    Procedure Request_Clear
        Set Value of oDbNombre Item 0 to ''
        Forward Send Request_Clear
    End_Procedure
    
    Procedure Request_Clear_All
        Set Value of oDbNombre Item 0 to ''
        Forward Send Request_Clear_All
    End_Procedure
    
    Procedure Creating
        Set Value of oDbNombre Item 0 to ''
        Forward Send Creating
    End_Procedure


    Set Main_DD to oPERSONAS_DD
    Set Server to oPERSONAS_DD
    Set Size to 101 342
    Set Location to 13 5
    Set Label to "PERSONAS"

    Object oDbContainer3d1 is a dbContainer3d
        Set Size to 80 340
        Set Location to 3 2

        Object oPERSONAS_CLAVE is a dbForm
            Entry_Item PERSONAS.CLAVE
            Set Location to 6 59
            Set Size to 12 80
            Set Label to "Clave:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object

        Object oPERSONAS_PRIMER_NOMBRE is a dbForm
            Entry_Item PERSONAS.PRIMER_NOMBRE
            Set Location to 20 59
            Set Size to 12 80
            Set Label to "Primer Nombre:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object

        Object oPERSONAS_SEGUNDO_NOMBRE is a dbForm
            Entry_Item PERSONAS.SEGUNDO_NOMBRE
            Set Location to 21 252
            Set Size to 12 80
            Set Label to "Segundo Nombre:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object

        Object oPERSONAS_PRIMER_APELLIDO is a dbForm
            Entry_Item PERSONAS.PRIMER_APELLIDO
            Set Location to 34 59
            Set Size to 12 80
            Set Label to "Primer Apellido:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object

        Object oPERSONAS_SEGUNDO_APELLIDO is a dbForm
            Entry_Item PERSONAS.SEGUNDO_APELLIDO
            Set Location to 35 252
            Set Size to 12 80
            Set Label to "Segundo Apellido:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object

        Object oPERSONAS_APELLIDO_CASADA is a dbForm
            Entry_Item PERSONAS.APELLIDO_CASADA
            Set Location to 48 59
            Set Size to 12 80
            Set Label to "Apellido Casada:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            Set peAnchors to anNone
        End_Object
        
        Object oDbNombre is a dbForm
            Set Size to 12 182
            Set Location to 6 150
            Set Enabled_State to False
            Set peAnchors to anNone
            Set Label_FontWeight to fw_Bold
            Set Label_Color to clDefault
            Set Form_Justification_Mode to Form_DisplayCenter
            
            //Mostrar Nombre Completo
            
            String sClave sNCompleto
            
            Move PERSONAS.CLAVE to sClave
            
            Move (fNombreCompleto(sClave)) to sNCompleto
            Set Value of oDbNombre Item 0 to sNCompleto
            
        End_Object

        Object oPERSONAS_FECHA_NACIMIENTO is a dbForm
            Entry_Item PERSONAS.FECHA_NACIMIENTO
            Set Location to 49 252
            Set Size to 12 66
            Set Label to "Fecha de Nacimiento:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
            //Mostrar un calendario gr fico
            Set Prompt_Object to oMonthCalendarPrompt
        End_Object

        Object oPERSONAS_SEXO is a dbComboForm
            Entry_Item PERSONAS.SEXO
            Set Location to 62 59
            Set Size to 12 57
            Set Label to "Sexo:"
            Set Label_Col_Offset to 2
            Set Label_Justification_Mode to JMode_Right
        End_Object

        Object oLineControl1 is a LineControl
            Set Size to 53 8
            Set Location to 21 158
            Set Horizontal_State to False
        End_Object
    End_Object

    Object oBoton_Grabar is a Button
        Set Location to 85 233
        Set Label to "Grabar"
        Set psImage to "ActionSave.ico"
    
        // fires when the button is clicked
        Procedure OnClick
//            Find ge PERSONAS by 1
//            If (Found) Begin
//                Reread PERSONAS
//                Move sClave to PERSONAS.CLAVE
//                SaveRecord PERSONAS
//                Unlock
//            End         
        End_Procedure
    
    End_Object
    Object oBoton_Borrar is a Button
        Set Location to 85 288
        Set Label to "Borrar"
        Set psImage to "ActionDelete.ico"
        
        // fires when the button is clicked
        Procedure OnClick
            
            
        End_Procedure
    
    End_Object

Cd_End_Object

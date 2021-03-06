CLOSE DATABASES all
CLOSE TABLES all
RELEASE ALL EXTENDED
CLEAR ALL
PUSH MENU _MSYSMENU

SET ENGINEBEHAVIOR 70
SET EXACT ON

SET SAFETY OFF
SET NOTIFY OFF

SET REPROCESS TO AUTOMATIC
SET MULTILOCKS ON
SET TALK OFF
SET DELETED ON

ON SHUTDOWN QUIT
POP MENU _MSYSMENU

DO FORM "c:\users\iboz\documents\visual foxpro projects\buh_obl\forms\f_result.scx" NAME FOBOROT LINKED 
READ EVENTS

*-----------------------------
PROCEDURE p_error
	MESSAGEBOX(PROGRAM())
ENDPROC

*-------------------------------------
PROCEDURE P_FILL_GRID(loGrid,lsCursor)
*-------------------------------------
*��������� ����
	loGrid.RecordSource = lsCursor
	FOR EACH loCl IN loGrid.Columns
		loCl.ControlSource=lsCursor + "." + SUBSTR(loCl.Name,3)
	ENDFOR
ENDPROC

**************************************************************
FUNCTION WriteIniFile (lsIniFileName, cTask, cValName, cValue)
**************************************************************
 * ������ � ini. ����
  IF File(lsIniFileName) 
    DECLARE INTEGER WritePrivateProfileString IN Win32API AS WritePrivStr ;
      String cSection, String cKey, String cValue, String cINIFile
    WritePrivStr(cTask, cValName, cValue, lsIniFileName)
    CLEAR DLLS WritePrivStr
  ENDIF 
ENDFUNC 

****************************************************
FUNCTION ReadIniFile(lsIniFileName, cTask, cValName)
****************************************************
* ������ �� ini. �����
  LOCAL vRetValue,lcBuffer,lnSumbol
  vRetValue=""
  IF File(lsIniFileName) 
    DECLARE INTEGER GetPrivateProfileString IN Win32API  AS GetPrivStr ;
      String cSection, String cKey, String cDefault, String @cBuffer, ;
      Integer nBufferSize, String cINIFile
    lcBuffer = SPACE(300)   && ������������ ������ ������
    lnSumbol = GetPrivStr(cTask, cValName, " ", @lcBuffer,;
      LEN(lcBuffer), lsIniFileName)
    vRetValue = SUBSTR(lcBuffer, 1, lnSumbol)
  ENDIF 
    CLEAR DLLS GetPrivStr
    RETURN vRetValue
ENDFUNC

*********************************
DEFINE CLASS menulib AS container
*********************************
  Width = 50
  Height = 15
  Visible = .F.
  BackColor = RGB(0,0,255)
  Name = "menulib"

******************
PROCEDURE showmenu
******************
	LPARAMETERS taMenu,nX,nY
		nX=IIF(EMPTY(nX),MCOL(),nX)
		nY=IIF(EMPTY(nY),MROW(),nY)

	LOCAL lnMenuCount,lnCount,lcMenuItem,lcPic,lcSkip,lcA
	EXTERNAL ARRAY taMenu

    IF PARAMETERS()=0 OR TYPE("taMenu")#"C"
      RETURN .F.
    ENDIF

    lnMenuCount=0
    lnMenuCount=ALEN(taMenu,1)

    IF lnMenuCount=0
      RETURN .F.
    ENDIF
    DEACTIVATE POPUP _popShortcutMenu
    DEFINE POPUP _popShortcutMenu ;
        FROM nY,nX ;
        MARGIN ;
        RELATIVE ;
        SHORTCUT

    FOR lnCount = 1 TO lnMenuCount
      lcMenuItem=taMenu[lnCount,1]
      
        lcPic=IIF(VARTYPE(taMenu[lnCount,3])="U" OR EMPTY(taMenu[lnCount,3]),""," PICTURE '"+ALLTRIM(taMenu[lnCount,3])+"'")
        lcSkip=IIF(VARTYPE(taMenu[lnCount,4])="U" OR EMPTY(taMenu[lnCount,4]),""," SKIP FOR "+ALLTRIM(taMenu[lnCount,4]))
     	lcA=lcPic+lcSkip
     	DEFINE BAR lnCount OF _popShortcutMenu PROMPT lcMenuItem &lcA

    ENDFOR

    ON SELECTION POPUP _popShortcutMenu DEACTIVATE POPUP _popShortcutMenu
    ACTIVATE POPUP _popShortcutMenu
    RELEASE POPUP _popShortcutMenu
    IF BAR()=0
      RETURN .F.
    ENDIF
ENDPROC

PROCEDURE deactivatemenu
  DEACTIVATE MENU _popShortcutMenu
ENDPROC

PROCEDURE Destroy
    
ENDPROC
ENDDEFINE


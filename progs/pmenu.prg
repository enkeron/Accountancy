**
PROCEDURE mainMenu

 DEFINE MENU mmymenu BAR IN WINDOW f_result
 DEFINE PAD mpfile OF mmymenu PROMPT "�������" COLOR SCHEME 3
 DEFINE PAD mpdocs OF mmymenu PROMPT "��������������" COLOR SCHEME 3
 DEFINE PAD mpreports OF mmymenu PROMPT "�������" COLOR SCHEME 3
 DEFINE PAD mpread OF mmymenu PROMPT "�������" COLOR SCHEME 3
 
 ON PAD mpfile OF mmymenu ACTIVATE POPUP "�������"
 ON PAD mpdocs OF mmymenu ACTIVATE POPUP "��������������"
 ON PAD mpreports OF mmymenu ACTIVATE POPUP "�������"
 ON PAD mpread OF mmymenu ACTIVATE POPUP "�������"
 
 
 DEFINE POPUP "�������" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "�������" PROMPT "\-"
 DEFINE BAR 2 OF "�������" PROMPT "�����"
  
 ON SELECTION BAR 2 OF "�������" DO mprexit

 DEFINE POPUP "��������������" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "��������������" PROMPT "\-"
 DEFINE BAR 2 OF "��������������" PROMPT "������� �� ������ ������" 
 DEFINE BAR 3 OF "��������������" PROMPT "\-"
 DEFINE BAR 4 OF "��������������" PROMPT "��������� ���������" 
 DEFINE BAR 5 OF "��������������" PROMPT "\-"
 
 ON SELECTION BAR 2 OF "��������������" DO form f_beg
 ON SELECTION BAR 4 OF "��������������" DO form f_oborot
 

 DEFINE POPUP "�������" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "�������" PROMPT "\-"
 DEFINE BAR 2 OF "�������" PROMPT "��������� ��������"
 DEFINE BAR 3 OF "�������" PROMPT "\-"
 DEFINE BAR 4 OF "�������" PROMPT "��������� ���������"
 DEFINE BAR 5 OF "�������" PROMPT "\-"
 DEFINE BAR 6 OF "�������" PROMPT "��� ���������" 
  DEFINE BAR 7 OF "�������" PROMPT "\-"

 ON SELECTION BAR 2 OF "�������" do delbeg
 ON SELECTION BAR 4 OF "�������" do deloborot
 ON SELECTION BAR 6 OF "�������" do delall
 
 DEFINE POPUP "�������" shadow MARGIN RELATIVE COLOR SCHEME 4
  DEFINE BAR 1 OF "�������" PROMPT "\-"
 DEFINE BAR 2 OF "�������" PROMPT "� ���������" 
  DEFINE BAR 3 OF "�������" PROMPT "\-"

ON SELECTION BAR 2 OF "�������" do form  f_about

 ACTIVATE MENU mmymenu NOWAIT
ENDPROC


PROCEDURE delbeg
	mesvar = MESSAGEBOX("�� ������������� ������ ������� ������ � ��������� ��������?",33,"��������")
IF mesvar = 1 THEN 
	DELETE FROM t_sc
	 
ENDIF 
ENDPROC 

PROCEDURE deloborot
	mesvar = MESSAGEBOX("�� ������������� ������ ������� ������ � ��������� ��������?",33,"��������")
IF mesvar = 1 THEN 
	DELETE FROM t_oborot
	 
ENDIF 
ENDPROC 

PROCEDURE delall
	mesvar = MESSAGEBOX("�� ������������� ������ ������� ������ � ��������� ��������?",33,"��������")
IF mesvar = 1 THEN 
	DELETE FROM t_sc
	 
ENDIF 
ENDPROC 
**
PROCEDURE MPREXIT
	 *f_result.Release()
	 
	mesvar = MESSAGEBOX("�� ������������� ������ �����?",33,"�����")
	IF mesvar = 1 THEN 
		RELEASE WINDOWS 
	ENDIF 
ENDPROC 

**

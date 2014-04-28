**
PROCEDURE mainMenu

 DEFINE MENU mmymenu BAR IN WINDOW f_result
 DEFINE PAD mpfile OF mmymenu PROMPT "Главаня" COLOR SCHEME 3
 DEFINE PAD mpdocs OF mmymenu PROMPT "Редактирование" COLOR SCHEME 3
 DEFINE PAD mpreports OF mmymenu PROMPT "Очистка" COLOR SCHEME 3
 DEFINE PAD mpread OF mmymenu PROMPT "Справка" COLOR SCHEME 3
 
 ON PAD mpfile OF mmymenu ACTIVATE POPUP "Главаня"
 ON PAD mpdocs OF mmymenu ACTIVATE POPUP "Редактирование"
 ON PAD mpreports OF mmymenu ACTIVATE POPUP "Очистка"
 ON PAD mpread OF mmymenu ACTIVATE POPUP "Справка"
 
 
 DEFINE POPUP "Главаня" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "Главаня" PROMPT "\-"
 DEFINE BAR 2 OF "Главаня" PROMPT "Выход"
  
 ON SELECTION BAR 2 OF "Главаня" DO mprexit

 DEFINE POPUP "Редактирование" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "Редактирование" PROMPT "\-"
 DEFINE BAR 2 OF "Редактирование" PROMPT "Остаток на начало месяца" 
 DEFINE BAR 3 OF "Редактирование" PROMPT "\-"
 DEFINE BAR 4 OF "Редактирование" PROMPT "Оборотная ведомость" 
 DEFINE BAR 5 OF "Редактирование" PROMPT "\-"
 
 ON SELECTION BAR 2 OF "Редактирование" DO form f_beg
 ON SELECTION BAR 4 OF "Редактирование" DO form f_oborot
 

 DEFINE POPUP "Очистка" SHADOW MARGIN RELATIVE COLOR SCHEME 4
 DEFINE BAR 1 OF "Очистка" PROMPT "\-"
 DEFINE BAR 2 OF "Очистка" PROMPT "Ведомость остатков"
 DEFINE BAR 3 OF "Очистка" PROMPT "\-"
 DEFINE BAR 4 OF "Очистка" PROMPT "Оборотную ведомость"
 DEFINE BAR 5 OF "Очистка" PROMPT "\-"
 DEFINE BAR 6 OF "Очистка" PROMPT "Все ведомости" 
  DEFINE BAR 7 OF "Очистка" PROMPT "\-"

 ON SELECTION BAR 2 OF "Очистка" do delbeg
 ON SELECTION BAR 4 OF "Очистка" do deloborot
 ON SELECTION BAR 6 OF "Очистка" do delall
 
 DEFINE POPUP "Справка" shadow MARGIN RELATIVE COLOR SCHEME 4
  DEFINE BAR 1 OF "Справка" PROMPT "\-"
 DEFINE BAR 2 OF "Справка" PROMPT "О Программе" 
  DEFINE BAR 3 OF "Очистка" PROMPT "\-"

ON SELECTION BAR 2 OF "Справка" do form  f_about

 ACTIVATE MENU mmymenu NOWAIT
ENDPROC


PROCEDURE delbeg
	mesvar = MESSAGEBOX("Вы действительно хотите удалить данные с ведомости остатков?",33,"Внимание")
IF mesvar = 1 THEN 
	DELETE FROM t_sc
	 
ENDIF 
ENDPROC 

PROCEDURE deloborot
	mesvar = MESSAGEBOX("Вы действительно хотите удалить данные с ведомости оборотов?",33,"Внимание")
IF mesvar = 1 THEN 
	DELETE FROM t_oborot
	 
ENDIF 
ENDPROC 

PROCEDURE delall
	mesvar = MESSAGEBOX("Вы действительно хотите удалить данные с ведомости остатков?",33,"Внимание")
IF mesvar = 1 THEN 
	DELETE FROM t_sc
	 
ENDIF 
ENDPROC 
**
PROCEDURE MPREXIT
	 *f_result.Release()
	 
	mesvar = MESSAGEBOX("Вы действительно хотите выйти?",33,"Выход")
	IF mesvar = 1 THEN 
		RELEASE WINDOWS 
	ENDIF 
ENDPROC 

**

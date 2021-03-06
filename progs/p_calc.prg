SET ENGINEBEHAVIOR 70

ldCurDate = DATE(2013,5,20) && ������� ����
ldBegin = DATE(YEAR(ldCurDate ),MONTH(ldCurDate ),1) - 1 && ���� ������ �������

* ������� �� ������
SELECT t_ostatok.sc,;
		IIF(t_ostatok.type_sc = 0,1,0) * t_ostatok.summa as dt_beg,;
		IIF(t_ostatok.type_sc = 0,0,1) * t_ostatok.summa as ct_beg,;
		CAST(0 as b(2)) as dt_ob,;
		CAST(0 as b(2)) as ct_ob,;
		CAST(0 as b(2)) as dt_end,;
		CAST(0 as b(2)) as ct_end;
	FROM t_ostatok;
	WHERE date_ost = ldBegin;
	INTO CURSOR tmpResult READWRITE 

* ������ �� ��������� ���� (sc)
INDEX on sc TAG sc

* ������� dt
SELECT ;
		sc_dt as sc,SUM(sum_op) as dt_ob;
	FROM t_oborot;
	WHERE BETWEEN(date_op,ldBegin + 1,ldCurDate);
	GROUP BY sc_dt;
	INTO CURSOR _tmpDt

* ������� dt
SELECT ;
		sc_ct as sc,SUM(sum_op) as ct_ob;
	FROM t_oborot;
	WHERE BETWEEN(date_op,ldBegin + 1,ldCurDate);
	GROUP BY sc_ct;
	INTO CURSOR _tmpCt

* �������� �����
SELECT _tmpDt
SCAN
	IF SEEK(_tmpDt.sc,"tmpResult","sc")
		replace dt_ob WITH _tmpDt.dt_ob IN tmpResult 
	ENDIF 
ENDSCAN

* �������� ������
SELECT _tmpCt
SCAN
	IF SEEK(_tmpCt.sc,"tmpResult","sc")
		REPLACE ct_ob WITH _tmpCt.ct_ob IN tmpResult 
	ENDIF 
ENDSCAN

* ���������� �������
SELECT tmpResult 
REPLACE ;
	dt_end WITH dt_beg + dt_ob - ct_ob FOR dt_beg>0; 
	
select tmpResult 
replace ;
	ct_end WITH ct_beg + ct_ob - dt_ob FOR ct_beg>0;	

* �� ������ ������
GO TOP
* ��������
BROWSE NOWAIT



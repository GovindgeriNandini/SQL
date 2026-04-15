DATE FUNCTIONS LIST

No	Function				What it does				Example
1	GETDATE()				Current date & time			GETDATE()

2	CURRENT_TIMESTAMP		Current date & time			CURRENT_TIMESTAMP

3	YEAR()					Extract year				YEAR('2020-05-10') → 2020

4	MONTH()					Extract month				MONTH('2020-05-10') → 5

5	DAY()/WEEKDAY()			Extract day					DAY('2020-05-10') → 10

6	DATENAME()				Month/Day name				DATENAME(MONTH,'2020-05-10') → May

7	DATEPART()				Specific part of date		DATEPART(YEAR,'2020-05-10')

8	DATEDIFF()				Difference between dates	DATEDIFF(YEAR,'2010','2020')

9	DATEADD()				Add/subtract time			DATEADD(YEAR,1,'2020-01-01')

10	EOMONTH()				End of month				EOMONTH('2020-02-10')
							next month end				EOMONTH('2020-02-10', 1)	
							previous month end          EOMONTH('2020-02-10', -1)  

11	ISDATE()				Check valid date			ISDATE('2020-01-01') → 1

12	FORMAT()				Format date					FORMAT(GETDATE(),'dd-MM-yyyy')
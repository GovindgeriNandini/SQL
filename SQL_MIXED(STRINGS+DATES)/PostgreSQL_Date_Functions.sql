No	Function								What it does							Example

1	CURRENT_TIMESTAMP / NOW()				Current date & time						NOW()

2	CURRENT_DATE							Current date only						CURRENT_DATE

3	EXTRACT(YEAR FROM date)					Extract year							EXTRACT(YEAR FROM DATE '2020-05-10') → 2020

4	EXTRACT(MONTH FROM date)				Extract month							EXTRACT(MONTH FROM DATE '2020-05-10') → 5

5	EXTRACT(DAY FROM date)					Extract day								EXTRACT(DAY FROM DATE '2020-05-10') → 10

6	TO_CHAR(date, 'Month')					Month name								TO_CHAR(DATE '2020-05-10','Month') → May

7	EXTRACT(field FROM date)				Specific part of date					EXTRACT(YEAR FROM date)

8	AGE() / date - date						Difference between dates				AGE('2020-01-01','2010-01-01')

9	date + INTERVAL							Add/subtract time						DATE '2020-01-01' + INTERVAL '1 year'

10	DATE_TRUNC()							Start of month/year etc					DATE_TRUNC('month', CURRENT_DATE)

11	TO_DATE()								Convert string to date					TO_DATE('2020-01-01','YYYY-MM-DD')

12	TO_CHAR()								Format date								TO_CHAR(NOW(),'DD-MM-YYYY')
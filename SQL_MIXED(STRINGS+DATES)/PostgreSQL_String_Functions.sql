SWITCHED TO POSTGRESQL FROM SSMS(SQL SERVER MANAGEMENT STUDIO)
-- NO MUCH DIFFERENCE, ONLY LEN() AND CHARINDEX ARE CHANGED

No	Function								What it does						Example

1	LENGTH()								Length of string					LENGTH('Arjun') → 5

2	UPPER()									Convert to uppercase				UPPER('arjun') → ARJUN

3	LOWER()									Convert to lowercase				LOWER('ARJUN') → arjun

4	TRIM()									Remove spaces both sides			TRIM(' Arjun ') → Arjun

5	LTRIM()									Remove left spaces					LTRIM(' Arjun') → Arjun

6	RTRIM()									Remove right spaces	      			RTRIM('Arjun ') → Arjun

7	SUBSTRING()								Extract part of string				SUBSTRING('Arjun',1,3) → Arj

8	REPLACE()								Replace text						REPLACE('arjun@gmail','gmail','yahoo')

9	POSITION()								Find position of substring			POSITION('@' IN 'arjun@gmail') → 6

10	CONCAT()								Join strings						CONCAT('Arjun',' ','Reddy')

11	LEFT()									Extract from left					LEFT('Arjun',3) → Arj

12	RIGHT()									Extract from right					RIGHT('Arjun',3) → jun
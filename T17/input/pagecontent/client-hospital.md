<div id="intro" dir="rtl" markdown="1">

## – הנחיות ל- Client

### בית החולים

1. בעת תישאול הקהילה אודות פרטי המטופלים (`GET Patient`), במידה ומדובר בכמות מטופלים גדולה, מומלץ להגביל את התישאול לקבוצות קטנות, למשל ל- 20 מטופלים בכל שאילתה, כדי להימנע מהעמסה על השרת וקו התקשורת.

2. לאחר תישאול הקהילה אודות פרטי המטופלים (`GET Patient`) ביה"ח יקבל Bundle עם 0 תוצאות או יותר (כתלות בכמות המטופלים שהוחזרו).
   בכדי לחלץ את ה- logical\_id מתוך ה- Bundle שהתקבל, יש לשלוף את הערכים שבנתיב הבא:  **entry[n].resource.id** עבור כל תוצאה, כלומר שליפה על פי כמות האיברים המוחזרים ב- Bundle.

3. **GET Patient** – שליפת פרטי המטופל לפי המזהה העסקי שלו. מבנה השאילתה, עבור מזהה עסקי מסוג תעודת זהות ישראלית:

`GET [BaseURL]/Patient?identifier=http://fhir.health.gov.il/identifier/il-national-id|[tz1],http://fhir.health.gov.il/identifier/il-national-id|[tz2],..http://fhir.health.gov.il/identifier/il-national-id|[tz20]&\_summary=true`

נקודה חשובה - יש לקודד את הערכים המועברים בפרמטרי החיפוש בשיטת URI encoding. לדוגמה:

`http://hapi-fhir.outburn.co.il/fhir/Patient?identifier=http%3A%2F%2Ffhir.health.gov.il%2Fidentifier%2Fil-national-id%7C000000018%2Chttp%3A%2F%2Ffhir.health.gov.il%2Fidentifier%2Fil-national-id%7C000000026%2C..%20http%3A%2F%2Ffhir.health.gov.il%2Fidentifier%2Fil-national-id%7C000000034&\_summary=true`

התשובה שתוחזר הינה Bundle מסוג searchset עם 0 תוצאות או יותר. שימו לב – מטופל שלא נמצא לא מהווה שגיאה (יוחזר קוד http 200).

4. אם בביה"ח מעוניינים לשלוף את ה- DiagnosticReport עם כל המידע הכלול בו (הפניות ותוצאות), ניתן לבצע שליפה על פי הפרמטרים הבאים:
   1. **identifier** 
   2. **\_include**  – צירוף משאבים מקושרים לתוצאת השאילתא.
    - **DiagnosticReport:based-on**
    - **DiagnosticReport:result**

כלומר, עבור חיפוש מסוג זה, שרת ביה"ח צריך לתמוך ביכולת לשלוף את הדוח המסכם על פי המזהה העסקי שלו, ולכלול בתוצאות גם את המידע הנוסף אודות ההפניה המאגדת (based-on) וגם את התוצאות עצמן (result).

לדוגמה:

`http://hapi-fhir.outburn.co.il/fhir/DiagnosticReport?identifier=urn:uuid:e70b1658-1686-466c-a79f-9bc2e88fee79&\_include=DiagnosticReport:based-on&\_include=DiagnosticReport:result`



</div>
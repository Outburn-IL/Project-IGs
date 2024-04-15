<div id="intro" dir="rtl" markdown="1">

## Search & Interactions

הסעיף הבא מתייחס לדרישות מצד ה- server, לצורך מימוש REST Interactions ומימוש SearchParameters (אפשרויות חיפוש), אשר בלעדיהן לא ניתן לקיים את התהליך במלואו.
בסעיף זה מוצגות טבלאות מרכזות, ובסעיפים הבאים מוצג פירוט של המתודות ופרמטרי החיפוש בחלוקה לפי Server רלוונטי (קהילה / בית חולים).


### Methods 

להלן ריכוז המתודות, בהתייחס לשלבי התהליך, לפרופיל הרלוונטי ולאיזה גורם מהווה Server באותו השלב.
יש לשים לב שסדר ההופעה אינו בהכרח כרונולוגי.

|**שלב בתהליך**|**מתודה**|**פרופיל**|**Server**|
| :-: | :-: | :-: | :-: |
|שאילתת מטופלים|**GET** Patient|ILCore Patient Profile|קהילה|
|יצירת הפניות אטומיות|**POST** ServiceRequest|LRC Lab Test Referral|קהילה|
|יצירת הפניה מאגדת|**POST** ServiceRequest|LRC Lab Test Referral Group|קהילה|
|יצירת דוח מסכם ראשוני|**POST** DiagnosticReport|LRC Lab Test Report|בית חולים|
|יצירת תוצאה בודדת|**POST** Observation|LRC Test Result|בית חולים|
|יצירת תוצאת סוללה בודדת|**POST** Observation|LRC Panel Lab Test Result|בית חולים|
|שליחת הפניה בודדת |**PUT** ServiceRequest \*|LRC Lab Test Referral|בית חולים|
|שליחת הפניה מאגדת |**PUT** ServiceRequest \*|LRC Lab Test Referral Group|בית חולים|
|שליחת תוצאה בודדת|**PUT** Observation \*|LRC Test Result|בית חולים|
|שליחת תוצאת סוללה|**PUT** Observation \*|LRC Panel Lab Test Result|בית חולים|
|שליחת דוח מסכם כולל תוכן |**PUT** DiagnosticReport \*|LRC Lab Test Report|בית חולים|

\* מבוצע באמצעות Conditional Update

### SearchParameters

להלן ריכוז SearchParameters, בהתייחס לשלב הרלוונטי בתהליך, לאיזה גורם מהווה Server באותו השלב והאם זה פרמטר שחובה לתמוך בו.

|**Resource Type**|**Supported Profiles**|**Supported Searches**|**includes\_ Supported**|**Server**|
| :-: | :-: | :-: | :-: | :-: |
|[Patient](https://hl7.org/fhir/R4/patient.html)|ILCore Patient Profile|identifier|-|קהילה|
|[Patient](https://hl7.org/fhir/R4/patient.html)|ILCore Patient Profile|summary\_|-|קהילה|
|[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html)|LRC Lab Test Referral|identifier|-|בית חולים|
|[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html)|LRC Lab Test Referral Group|identifier|-|בית חולים|
|[Observation](https://hl7.org/fhir/R4/observation.html)|LRC Test Result|identifier|-|בית חולים|
|[Observation](https://hl7.org/fhir/R4/observation.html)|LRC Panel Lab Test Result|identifier|-|בית חולים|
|[DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html)|LRC Lab Test Report|identifier|DiagnosticReport:based-on|בית חולים|
|[DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html)|LRC Lab Test Report|identifier|DiagnosticReport:result|בית חולים|



</div>
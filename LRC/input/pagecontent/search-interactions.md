<div id="intro" dir="rtl" markdown="1">

## Search & Interactions

הסעיף הבא מתייחס לדרישות מצד ה- server, לצורך מימוש REST Interactions ומימוש SearchParameters (אפשרויות חיפוש), אשר בלעדיהן לא ניתן לקיים את התהליך במלואו.
בתחילה מוצגות טבלאות מרכזות, ולאחריהן פירוט המתודות ופרמטרי החיפוש בחלוקה לפי Server רלוונטי (קהילה / בית חולים).


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

|**Resource Type**|**Supported Profiles**|**Supported Searches**|**Supported**<br>\_includes|**Server**|
| :-: | :-: | :-: | :-: | :-: |
|[Patient](https://hl7.org/fhir/R4/patient.html)|ILCore Patient Profile|<p>identifier</p><p>\_summary</p>|-|קהילה|
|[ServiceRequest](https://hl7.org/fhir/R4/servicerequest.html)|<p>LRC Lab Test Referral;</p><p>LRC Lab Test Referral Group</p>|identifier|-|בית חולים|
|[Observation](https://hl7.org/fhir/R4/observation.html)|<p>LRC Test Result;</p><p>LRC Panel Lab Test Result</p>|identifier|-|בית חולים|
|[DiagnosticReport](https://hl7.org/fhir/R4/diagnosticreport.html)|LRC Lab Test Report|identifier|<p>DiagnosticReport:based-on</p><p>DiagnosticReport:result</p>|בית חולים|



</div>
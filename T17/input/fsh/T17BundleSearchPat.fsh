Profile: T17BundleSearchPatient
Parent: Bundle
Id: t17-bundle-search-pat
Title: "T17 Bundle Search Obl"
Description: "מארז מטופלים המוחזרים לביה\"ח עם הפרטים והמזהה הלוגי של הקופה"
* ^url = $T17-bundle-search-pat
* type 1..1
* type = #searchset
* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry contains 
        patient 1..1
* entry[patient] obeys bundle-https
* entry[patient].fullUrl 1..1
* entry[patient].resource 1..1
* entry[patient].resource only il-core-patient

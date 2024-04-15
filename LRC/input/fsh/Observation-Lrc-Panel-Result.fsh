Profile: LrcPanelResult
Parent: ILCoreObservation
Id: lrc-panel-result
Title: "Lrc Panel Lab Test Result"
Description: "פאנל תוצאות, עבור מקרים בהם ServiceRequest אחד כולל בתוכו קוד אשר מייצג קבוצת בדיקות (פאנל\\סוללה).
פרופיל זה אינו כולל את התוצאות עצמן אלא מצביע עליהן."
* ^url = $lrc-panel-result
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* basedOn 0..1
* basedOn only Reference(LrcReferral)
* basedOn.reference 1..1
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "coding"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for hl7 category codes"
* category contains hl7-lab 1..1
* category[hl7-lab].coding ^slicing.discriminator.type = #pattern
* category[hl7-lab].coding ^slicing.discriminator.path = "$this"
* category[hl7-lab].coding ^slicing.rules = #open
* category[hl7-lab].coding ^slicing.description = "Slice for hl7 code for laboratory result"
* category[hl7-lab].coding contains hl7 1..1
* category[hl7-lab].coding[hl7]
  * ^patternCoding.system = $hl7-obs-category-cs
  * ^patternCoding.code = #laboratory
  * ^patternCoding.display = "Laboratory"
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Loinc Lab report"
* code.coding ^slicing.ordered = false
* code.coding contains loinc-lab 1..1
* code.coding[loinc-lab] from $vs-lrc-panel-result-codes (required)
* code.coding[loinc-lab] 1..1
  * system 1..1
  * code 1..1
* subject 1..1
* subject only Reference(ILCorePatient)
* performer 1..*
* hasMember 1..*
// * component ^slicing.discriminator.type = #value
// * component ^slicing.discriminator.path = "$this"
// * component ^slicing.rules = #open
// * component ^slicing.description = "Text"
// * component ^slicing.ordered = false
Profile: LrcReferralGroup
Parent: ILCoreServiceRequest
Id: lrc-referral-group
Title: "Lrc Lab Test Referral Group"
Description: "הפניה מרכזת. להפניה הזו אין קוד בדיקה, אלא היא כוללת קישורים לכל הבדיקות הספציפיות שיש לבצע.
פרופיל זה מהווה טריגר לתחילת הטיפול בתהליך מצד הארגון המבצע."
* ^url = $lrc-referral-group
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* basedOn 1..*
* basedOn only Reference(ILCoreServiceRequest)
* intent = #order (exactly)
// * category ^slicing.discriminator.type = #pattern
// * category ^slicing.discriminator.path = "coding"
// * category ^slicing.rules = #open
// * category ^slicing.description = "Slice for SNOMED category codes"
// * category contains snomed-lab 1..1
// * category[snomed-lab].coding ^slicing.discriminator.type = #pattern
// * category[snomed-lab].coding ^slicing.discriminator.path = "$this"
// * category[snomed-lab].coding ^slicing.rules = #open
// * category[snomed-lab].coding ^slicing.description = "Slice for SNOMED code for laboratory result"
// * category[snomed-lab].coding contains snomed 1..1
// * category[snomed-lab].coding[snomed]
//   * system = $sct 
//   * code = #108252007
//   * display = "Laboratory procedure"
* category[il-core]
  * ^patternCodeableConcept.coding.system = $sct
  * ^patternCodeableConcept.coding.code = #108252007
  * ^patternCodeableConcept.coding.display = "Laboratory procedure"
* priority = #urgent
* code.coding ^slicing.discriminator.type = #value
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Loinc Lab report"
* code.coding ^slicing.ordered = false
* code.coding contains loinc-lab 1..1
* code.coding[loinc-lab] 1..1
  * system 1..1
  * system = $loinc (exactly)
  * code 1..1
  * code = #11502-2 (exactly)
  * display = "Laboratory report" (exactly)
* subject 1..1
* subject only Reference(ILCorePatient)
* requester 1..1


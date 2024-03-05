Profile: LrcLabReport
Parent: ILCoreDiagnosticReport
Id: lrc-lab-report
Title: "Lrc Lab Test Report"
Description: "דוח מסכם עבור תוצאות הפניה מרכזת."
* ^url = $lrc-lab-report
* extension contains $ext-note named note 0..1 // is this caridnality correct?
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* basedOn 1..1
* basedOn only Reference(LrcReferralGroup)
* basedOn.reference 1..1
* category 1..*
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category ^slicing.description = "Slice for hl7 category code"
* category contains hl7-lab 1..1
* category[hl7-lab] ^patternCodeableConcept.coding.system = $hl7-diag-category-cs
* category[hl7-lab] ^patternCodeableConcept.coding.code = #LAB
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding ^slicing.description = "Loinc Lab report code"
* code.coding ^slicing.ordered = false
* code.coding contains loinc-lab 1..1
* code.coding[loinc-lab] 1..1
* code.coding[loinc-lab] ^patternCoding.system = $loinc
* code.coding[loinc-lab] ^patternCoding.code = #11502-2
  // * code[loinc-lab] ^patternCoding.code = #11502-2
* subject 1..1
* subject only Reference(ILCorePatient)
* performer 1..*
* result only Reference(ILCoreObservation)
// * category[hl7-lab].coding ^slicing.discriminator[0].type = #value
// * category[hl7-lab].coding ^slicing.discriminator[0].path = "system"
// * category[hl7-lab].coding ^slicing.discriminator[1].type = #value
// * category[hl7-lab].coding ^slicing.discriminator[1].path = "code"
// * category[hl7-lab].coding ^slicing.rules = #open
// * category[hl7-lab].coding ^slicing.description = "Slice for hl7 code for laboratory result"
// * category[hl7-lab].coding contains hl7 1..1
// * category[hl7-lab].coding[hl7]
//   * system = $hl7-diag-category-cs (exactly)
//   * code = #LAB (exactly)
//   * display = "Laboratory" 
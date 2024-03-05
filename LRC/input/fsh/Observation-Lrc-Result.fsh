Profile: LrcResult
Parent: ILCoreObservation
Id: lrc-result
Title: "Lrc Test Result"
Description: "תוצאת בדיקת מעבדה בודדת."
* ^url = $lrc-result
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* basedOn 0..1
* basedOn only Reference(LrcReferral)
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
  * system 1..1
  * ^patternCoding.system = $hl7-obs-category-cs
  * code 1..1
  * ^patternCoding.code = #laboratory
  * ^patternCoding.display = "Laboratory"
* code from $vs-lrc-result-codes (extensible)
* code ^binding.extension.url = $maxValueSet
* code ^binding.extension.valueCanonical = $loinc-vs
* code.coding 1..*
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
* subject only Reference(ILCorePatient)
* subject.reference 1..1
* performer 1..*
* referenceRange.low 1..1
* referenceRange.low from $ucum-common
* referenceRange.low.system = $ucum
* referenceRange.high 1..1
* referenceRange.high from $ucum-common
* referenceRange.high.system = $ucum 
* valueQuantity.system 1..1
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
// * component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component ^slicing.description = "Textual or Nominal"
* component ^slicing.ordered = false
* component contains textual 0..1 and nominal 0..1
* component[textual].code.coding 1..*
  * system = $sct (exactly)
  * code = #117444000 (exactly)
  * display = "Text value"
* component[textual].value[x] only string
* component[textual].valueString 1..1
* component[nominal].code.coding 1..*
  * system = $sct (exactly)
  * code = #117362005 (exactly)
  * display = "Nominal value"
* component[nominal].value[x] only CodeableConcept
* component[nominal].valueCodeableConcept.coding 1..*



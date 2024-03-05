Profile: LrcReferral
Parent: ILCoreServiceRequest
Id: lrc-referral
Title: "Lrc Lab Test Referral"
Description: "הפניה לבדיקת מעבדה, או לפאנל (סוללה) של בדיקות מעבדה.
משאב זה בפני עצמו אינו מהווה טריגר לתחילת הטיפול בהפניה, אלא יטופל רק במסגרת referral group."
* ^url = $lrc-referral
* identifier 1..*
* identifier.system 1..1
* identifier.value 1..1
* intent = #order (exactly)
* category[il-core]
  * ^patternCodeableConcept.coding.system = $sct
  * ^patternCodeableConcept.coding.code = #108252007
  * ^patternCodeableConcept.coding.display = "Laboratory procedure"
* code from $vs-lrc-referral-codes (extensible)
* code ^binding.extension.url = $maxValueSet
* code ^binding.extension.valueCanonical = $loinc-vs // ALL LOINC CODES
* code.coding
  * system 1..1
  * code 1..1
* subject 1..1
* subject only Reference(ILCorePatient)
* requester 1..1


Profile: NamerEncounterMovement
Parent: ILCoreEncounter
Id: namer-encounter-movement
Title: "Namer Encounter Movement"
Description: "Namer Encounter Movement"
* ^url = $EncounterNamerMovement
* id 1..1
* extension[paying-entity].url 1..1
* extension[paying-entity].url = $ext-encounter-paying-entity (exactly)
* extension[paying-entity].valueCodeableConcept.coding.system 1..1
* extension[paying-entity].valueCodeableConcept.coding.code 1..1
* extension[paying-entity].valueCodeableConcept.coding.display 1..1
* extension[movement-number].url 1..1
* extension[movement-number].url = $ext-movement-number (exactly)
* extension[movement-number].valueString 1..1
* identifier 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains nmr-movement 1..1 and nmr2cml-identifier 1..1
* identifier[nmr-movement].system 1..1
* identifier[nmr-movement].system from $HospitalsUrisNmrMovNumVS (required)
* identifier[nmr-movement].value 1..1
* identifier[nmr2cml-identifier].system 1..1
* identifier[nmr2cml-identifier].system from $HospitalsUrisNmrToCmlIdentVS (required)
* identifier[nmr2cml-identifier].value 1..1
* type 1..*
* type.coding 1..1
* type contains mvmnt-type 1..1
* type[mvmnt-type] from $vs-mvmnt-type (required)
// * type[mvmnt-type].coding.system 1..1
// * type[mvmnt-type].coding.code 1..1
// * type[mvmnt-type].coding.display 1..1
* serviceProvider.reference 1..1
* period 1..1
* period.start 1..1
* location.location.reference 1..1
* location.location.identifier 1..1
* location.location.identifier.system 1..1
* location.location.identifier.system from $HospitalsUrisNmrOrgIdVS (required)
* location.location.identifier.value 1..1
* serviceProvider.reference 1..1
* serviceProvider.identifier 1..1
* serviceProvider.identifier.system 1..1
* serviceProvider.identifier.system from $HospitalsUrisNmrOrgIdentVS (required)
* serviceProvider.identifier.value 1..1
* partOf.reference 1..1

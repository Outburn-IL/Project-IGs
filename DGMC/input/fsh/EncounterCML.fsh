Profile: CMLEncounter
Parent: ILCoreEncounter
Id: cml-encounter
Title: "CML Encounter"
Description: "CML Encounter"
* ^url = $EncounterCML
* id 1..1
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier contains cml-medical-record 1..1
* identifier[cml-medical-record].system 1..1
* identifier[cml-medical-record].system from $HospitalsUrisCmlMedRecVS (required)
* identifier[cml-medical-record].value 1..1
* identifier[cml-medical-record].type.coding.system = $cml-medical-record-type (exactly)
* type 1..*
* type.coding 1..1
* type contains cml-medical-record-type 1..1
* type[cml-medical-record-type] from $vs-cml-medical-record-type (required)
* type[cml-medical-record-type].coding.system 1..1
* type[cml-medical-record-type].coding.code 1..1
* type[cml-medical-record-type].coding.display 1..1
* serviceProvider.reference 1..1
* period 1..1
* period.start 1..1
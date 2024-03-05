Instance: lrc-panel-result-cbc
InstanceOf: lrc-panel-result
Usage: #example
* text.status = #generated
* meta.profile = $lrc-panel-result
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"> תוצאות מעבדה מאגדת של פאנל CBC של מטופל עבור אשפוז יום אונקולוגי</div>"
* identifier.system = "http://fhir.meuhedet.co.il/identifier/profile-lab-result"
* identifier.value = "1304421043-20230517-600-3231"
* basedOn = Reference(ServiceRequest/lrc-referral-group-example)
* basedOn.type = "ServiceRequest"
* status = #final
* category[hl7-lab] = $hl7-obs-category-cs#laboratory "Laboratory"
* code.coding[0] = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* code.coding[+] = $meuhedet-lab-result-code#600 "CBC"
* code.text = "CBC"
* subject = Reference(http://hapi-fhir.outburn.co.il/fhir/Patient/90)
* subject.type = "Patient"
* subject.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
* subject.identifier.value = "000000018"
* effectiveDateTime = "2023-08-02T13:15:32+03:00"
* issued = "2023-05-17T09:31:19.773+03:00"
* performer.type = "Organization"
* performer.identifier.system = "http://fhir.meuhedet.co.il/laboratories"
* performer.identifier.value = "73D01"
* performer.display = "קופת חולים מאוחדת"
* hasMember[0].type = "Observation"
* hasMember[=].identifier.system = "http://fhir.meuhedet.co.il/identifier/lab-result"
* hasMember[=].identifier.value = "CBC-1001"
* hasMember[+].type = "Observation"
* hasMember[=].identifier.system = "http://fhir.meuhedet.co.il/identifier/lab-result"
* hasMember[=].identifier.value = "CBC-1002"
* hasMember[+].type = "Observation"
* hasMember[=].identifier.system = "http://fhir.meuhedet.co.il/identifier/lab-result"
* hasMember[=].identifier.value = "CBC-1003"
* hasMember[+].type = "Observation"
* hasMember[=].identifier.system = "http://fhir.meuhedet.co.il/identifier/lab-result"
* hasMember[=].identifier.value = "CBC-1004"
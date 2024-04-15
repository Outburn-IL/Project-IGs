Instance: lrc-referral-automated-crc
InstanceOf: lrc-referral
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">הפניה אוטומטית לפאנל ספירת דם CBC משיבא עבור טיפול באשפוז יום אונקולוגי</div>"
* meta.profile = $lrc-referral
* identifier.system = "http://fhir.meuhedet.co.il/identifier/referral-id"
* identifier.value = "733-201"
* requisition.value = "51ecd763-209e-4681-b19e-e3fcc1f1d1e4"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #urgent
* code = $loinc#57021-8 "CBC W Auto Differential panel - Blood"
* subject = Reference(http://hapi-fhir.outburn.co.il/fhir/Patient/90)
* subject.type = "Patient"
* subject.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
* subject.identifier.value = "000000018"
* authoredOn = "2023-04-03T11:32:38+03:00"
* requester.type = "Organization"
* requester.identifier.system = "http://institutions.health.gov.il/Institutions"
* requester.identifier.value = "01101"
* requester.display = "מרכז רפואי ע\"ש ד\"ר ח. שיבא, תל-השומר"
* note.text = "הפניה אוטומטית משיבא לצורך טיפול באשפוז יום אונקולוגי"
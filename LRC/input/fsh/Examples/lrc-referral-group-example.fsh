Instance: lrc-referral-group
InstanceOf: lrc-referral-group
Usage: #example
* meta.profile = $lrc-referral-group
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:509dd6aa-27ce-48a3-ba4d-b675eab7213c"
* basedOn[0] = Reference(ServiceRequest/lrc-referral-automated-crc)
* basedOn[+] = Reference(ServiceRequest/lrc-referral-glucose)
* requisition.value = "51ecd763-209e-4681-b19e-e3fcc1f1d1e4"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #urgent
* code.coding[loinc-lab] = $loinc#11502-2 "Laboratory report"
* subject = Reference(http://hapi-fhir.outburn.co.il/fhir/Patient/90)
* subject.type = "Patient"
* subject.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
* subject.identifier.value = "000000018"
* authoredOn = "2023-04-03T11:32:40+03:00"
* requester.type = "Organization"
* requester.identifier.system = "http://institutions.health.gov.il/Institutions"
* requester.identifier.value = "01101"
* requester.display = "מרכז רפואי ע\"ש ד\"ר ח. שיבא, תל-השומר"
* note.text = "הפניה אוטומטית משיבא לצורך טיפול באשפוז יום אונקולוגי"
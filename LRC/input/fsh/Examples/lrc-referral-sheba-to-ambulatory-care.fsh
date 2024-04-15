Instance: lrc-referral-sheba-to-ambulatory-care
InstanceOf: lrc-referral
Usage: #example
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">הפניה אוטומטית משיבא עבור טיפול באשפוז יום אונקולוגי</div>"
* meta.profile = $lrc-referral
* identifier[0].system = "urn:ietf:rfc:3986"
* identifier[=].value = "urn:uuid:8b241910-061d-495b-b44e-43f8639c7433"
* identifier[+].system = "http://fhir.meuhedet.co.il/identifier/referral-id"
* identifier[=].value = "733-102"
* requisition.value = "51ecd763-209e-4681-b19e-e3fcc1f1d1e4"
* status = #active
* intent = #order
* category = $sct#108252007 "Laboratory procedure"
* priority = #urgent
* code = $loinc#3094-0 "Urea nitrogen [Mass/volume] in Serum or Plasma"
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
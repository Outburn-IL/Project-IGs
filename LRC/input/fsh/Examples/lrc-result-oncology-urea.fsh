Instance: lrc-result-oncology-urea
InstanceOf: lrc-result
Usage: #example
* meta.profile = $lrc-result
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">תוצאות בדיקת אוראה בסרום של מטופל עבור אשפוז יום אונקולוגי</div>"
* text.status = #generated
* identifier.system = "http://fhir.meuhedet.co.il/identifier/lab-result"
* identifier.value = "1304421043-20230802-1336-3231"
* basedOn = Reference(ServiceRequest/lrc-referral-glucose)
* status = #final
* category[hl7-lab] = $hl7-obs-category-cs#laboratory "Laboratory"
* code = $loinc#3094-0 "Urea nitrogen [Mass/volume] in Serum or Plasma"
* code.text = "Urea-blood (BUN)"
* subject = Reference(http://hapi-fhir.outburn.co.il/fhir/Patient/90)
* subject.type = "Patient"
* subject.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
* subject.identifier.value = "000000018"
* effectiveDateTime = "2023-04-03T11:32:38+03:00"
* issued = "2023-04-03T11:37:58.54+03:00"
* performer.type = "Organization"
* performer.identifier.system = "http://fhir.meuhedet.co.il/laboratories"
* performer.identifier.value = "73D01"
* performer.display = "קופת חולים מאוחדת"
* valueQuantity = 92 'mg/dL' "MG/DL"
* referenceRange.low = 8 'mg/dL'
* referenceRange.high = 23.5 'mg/dL'
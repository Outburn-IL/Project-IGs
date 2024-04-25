Profile: T17VisitSummary
Parent: il-core-document-reference
Id: t17-visit-summary
Title: "T17 Visit Summary"
Description: "מסמך המלצת המטפל בביה\"ח להמשך טיפול, כחלק מפרטי הבקשה להתחייבות"
* ^url = $T17-visit-summary
* extension contains $ext-doc-event-date named doc-event-date 1..1
* extension[doc-event-date].valueDateTime 1..1
* type 1..1
* type.coding ^slicing.discriminator.type = #value
* type.coding ^slicing.discriminator.path = "$this"
* type.coding ^slicing.rules = #open
* type.coding ^slicing.description = ""
* type.coding ^slicing.ordered = false
* type.coding contains oblig 1..*
* type.coding[oblig].system 1..1
* type.coding[oblig].system = $loinc (exactly)
* type.coding[oblig].code 1..1
* type.coding[oblig].code = #67781-5 (exactly)
* type.coding[oblig].display 1..1
* type.coding[oblig].display = "Summarization of encounter note Narrative"
* subject 1..1
* context.related.type 1..1
* context.related.type = #Coverage
* context.related.reference 1..1

// checked 21-4-24 Kippi
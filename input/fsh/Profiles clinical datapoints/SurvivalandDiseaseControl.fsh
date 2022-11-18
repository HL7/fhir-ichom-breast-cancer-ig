// SURIVAL AND DISEASE CONTROL
// Vital status
Profile: DeathAttributableBC
Parent: Observation 
Id: death-attr-bc
Title: "Death attributable to breast cancer"
Description: "Represents if breast cancer was the cause of death"
* insert PublicationProfileRuleset
* code = SCT#419620001:42752001=254837009 "Death where Due to = Malignant tumor of breast"
* value[x] only CodeableConcept 
* valueCodeableConcept from NoYesUnknownVS (required)
* code and status and valueCodeableConcept and subject MS

Instance: DeathAttributableBCPatient147
InstanceOf: DeathAttributableBC
Description: "Example of death attributable to breast cancer"
* code = SCT#419620001:42752001=254837009 "Death where Due to = Malignant tumor of breast"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = YesNoUnkCS#N

Mapping: DeathAttributableBCToICHOM
Source:	DeathAttributableBC
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: deathbcmapping
Title: "Death attributable to breast cancer to ICHOM set"
Description: "Mapping of death attributable to breast cancer to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Death attributable to breast cancer"

// Cancer recurrence
Profile: RecurrenceMethod
Parent: Observation 
Id: recr-method
Title: "Recurrence Method"
Description: "The method of confirming recurrence breast cancer"
* insert PublicationProfileRuleset
* focus only Reference(PrimaryBreastCancerCondition)
* code = SCT#103693007 "Diagnostic procedure"
* value[x] only CodeableConcept 
* valueCodeableConcept from RecurrenceMethodVS (required)
* code and status and focus and subject and valueCodeableConcept MS

Instance: RecurrenceMethodPatient147
InstanceOf: RecurrenceMethod
Description: "Example of method of confirming recurrence breast cancer"
* focus = Reference(PrimaryBreastCancerPatient147)
* code = SCT#103693007 "Diagnostic procedure"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#67151002 "Histologic"

Mapping: RecurrenceMethodToICHOM
Source:	RecurrenceMethod
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: recr-methodmapping
Title: "Recurrence method to ICHOM set"
Description: "Mapping of method of confirming recurrence breast cancer to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Recurrence method"

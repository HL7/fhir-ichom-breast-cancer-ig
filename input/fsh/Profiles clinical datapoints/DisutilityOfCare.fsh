Profile: InvolvedMarginsReoperation
Parent: Procedure 
Id: involved-margins-reoperation
Title: "Involved Margins Reoperation"
Description: "A reoperation due to involved margins after primary surgery"
* insert PublicationProfileRuleset
* code from InvolvedMarginsReoperationType (required)
* subject only Reference(BreastCancerPatient)
* partOf MS
  * ^short = "Original procedure that prompted the reoperation"
  * ^definition = "A larger event of which this particular procedure is a component or step. In this case, the original procedure that prompted the reoperation."
* performed[x] only dateTime 
* performedDateTime and code and subject MS
// TODO include a refence to the original procedure once treatment variables are modelled

Instance: ReoperationPatient147
InstanceOf: InvolvedMarginsReoperation
Description: "Example of a reoperation due to involved margins after primary surgery"
* status = ProcedureStatusCS#completed 
* code = IchomReoperation#4 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-07-09"

Mapping: InvolvedMarginsReoperationToICHOM
Source:	InvolvedMarginsReoperation
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reoperationmapping
Title: "Involved margins reoperation to ICHOM set"
Description: "Mapping of the involved margins reoperation procedure to the ICHOM breast cancer PCOM set." 	
* -> "Involved margins reoperation"
* performed[x] -> "Positive margins reoperation date"


// Complication
Profile: Complication
Parent: Observation 
Id: complication
Title: "Complication"
Description: "Represents the type and impact of a complication experienced by a patient"
* insert PublicationProfileRuleset
* code = SCT#116223007 "Complication"
* subject only Reference(BreastCancerPatient)
* subject MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

* component contains 
  ComplicationType 0..1 MS and ComplicationImpact 0..1 MS
* component[ComplicationType] ^short = "Indicates the impact of the complication"
* component[ComplicationType] ^definition = "Impact of complicatiion while on treatment or up to 90 days after initiation of treatment"
* component[ComplicationType].code = SCT#116223007 "Complication"
* component[ComplicationType].value[x] only CodeableConcept
* component[ComplicationType].valueCodeableConcept from ComplicationTypeVS (preferred)

* component[ComplicationImpact] ^short = "Indicates the type of complication"
* component[ComplicationImpact] ^definition = "Type of complication while on treatment or up to 90 days after initiation of treatment"
* component[ComplicationImpact].code = SCT#116223007 "Complication"
* component[ComplicationImpact].value[x] only CodeableConcept
* component[ComplicationImpact].valueCodeableConcept from ComplicationImpactVS (required)

* extension contains DueToEx named dueTo 0..* MS
// To do: add a reference that the complication can be due to any of the procedures


Instance: ComplicationPatient147
InstanceOf: Complication
Description: "Example of a complication in patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#116223007 "Complication"
* subject = Reference(BreastCancerPatient147)
* component[ComplicationType].valueCodeableConcept.coding = SCT#233604007 "Pneumonia"
* component[ComplicationImpact].valueCodeableConcept.coding = SCT#397945004 "Unexpected admission to intensive care unit"

Mapping: ComplicationToICHOM
Source:	Complication
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: complication-mapping
Title: "Complication to ICHOM set"
Description: "Mapping of the type and impact of a complication to the ICHOM breast cancer PCOM set" 	
* component[ComplicationType].code -> "Complication type"
* component[ComplicationImpact].code -> "Impact of complication"
* extension[dueTo] -> "Complication attributed to treatment"

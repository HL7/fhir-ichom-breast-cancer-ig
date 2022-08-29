Profile: InvolvedMarginsReoperation
Parent: Procedure 
Id: involved-margins-reoperation
Title: "Involved Margins Reoperation"
Description: "A reoperation due to involved margins after primary surgery"
* insert PublicationProfileRuleset
* code from InvolvedMarginsReoperationType (required)
* subject only Reference(BreastCancerPatient)
* performed[x] only dateTime 
* performedDateTime and code and subject MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* extension contains ProcedureCausedByEx named causedBy 0..* MS
* extension[causedBy] ^short = "Original procedure that prompted the reoperation"
* extension[causedBy].value[x] only Reference
* extension[causedBy].valueReference only Reference(Procedure)

Instance: ReoperationPatient147
InstanceOf: InvolvedMarginsReoperation
Description: "Example of a reoperation due to involved margins after primary surgery"
* status = ProcedureStatusCS#completed 
* code = IchomReoperation#4 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-07-09"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

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
Parent: Condition 
Id: complication
Title: "Complication"
Description: "Represents the type and impact of a complication experienced by a patient"
* insert PublicationProfileRuleset
* code from ComplicationTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* severity from ComplicationImpactVS (required)
* code and subject and severity MS
* extension contains DueToEx named dueTo 0..* MS

Instance: ComplicationPatient147
InstanceOf: Complication
Description: "Example of a complication in patient with breast cancer"
* clinicalStatus = ConditionStatusCS#active "Active"
* code = SCT#233604007 "Pneumonia"
* subject = Reference(BreastCancerPatient147)
* severity = SCT#397945004 "Unexpected admission to intensive care unit"

Mapping: ComplicationToICHOM
Source:	Complication
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: complication-mapping
Title: "Complication to ICHOM set"
Description: "Mapping of the type and impact of a complication to the ICHOM breast cancer PCOM set" 	
* code -> "Complication type"
* severity -> "Impact of complication"
* extension[dueTo] -> "Complication attributed to treatment"

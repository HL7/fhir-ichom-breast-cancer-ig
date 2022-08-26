Profile: ReoperationSurgery
Parent: Procedure 
Id: reoperation-surgery
Title: "Re-operation surgery"
Description: "Represents whether the patient has had a re-operation since their surgery for breast cancer and whether it was due to involved margins"
* insert PublicationProfileRuleset
* category = SCT#261554009 "Reoperation"
* code from ReoperationTypeVS (required)
* subject only Reference(BreastCancerPatient)
* partOf MS
  * ^short = "Original procedure that prompted the reoperation"
  * ^definition = "A larger event of which this particular procedure is a component or step. In this case, the original procedure that prompted the reoperation."
* performed[x] only dateTime 
* Reasoncode from ReoperationReasonVS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* category and code and subject and performedDateTime and reasonCode and reasonReference MS

Instance: ReoperationSurgeryPatient147
InstanceOf: ReoperationSurgery
Description: "Example of a reoperation due to involved margins after primary surgery"
* status = ProcedureStatusCS#completed 
* code = IchomReoperation#4 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-07-09"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: ReoperationSurgeryToICHOM
Source:	ReoperationSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reoperation-surgery-mapping
Title: "Reoperation surgery to ICHOM set"
Description: "Mapping of the reoperation surgery to the ICHOM breast cancer PCOM set" 	
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

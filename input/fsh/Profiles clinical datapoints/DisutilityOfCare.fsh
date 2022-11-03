Profile: ReoperationSurgery
Parent: Procedure 
Id: reoperation-surgery
Title: "Re-operation surgery"
Description: "Represents whether the patient has had a re-operation since their surgery for breast cancer and whether it was due to involved margins."
* insert PublicationProfileRuleset
* category = SCT#261554009 "Reoperation"
* code from ReoperationTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performed[x] only dateTime 
* reasonCode from ReoperationReasonVS (preferred)
  * ^short = "The reasonCode explains whether or not the reoperation was due to involved margins"
* reasonReference only Reference (PrimaryBreastCancerCondition)
* partOf MS
  * ^short = "Original procedure that prompted the reoperation"
  * ^definition = "A larger event of which this particular procedure is a component or step. In this case, the original procedure that prompted the reoperation."
* category and code and subject and performedDateTime and reasonCode and reasonReference MS

Instance: ReoperationSurgeryPatient147
InstanceOf: ReoperationSurgery
Description: "Example of a reoperation due to involved margins after primary surgery"
* status = ProcedureStatusCS#completed 
* category = SCT#261554009 "Reoperation"
* code = BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-07-09"
* reasonCode = SCT#1156344002 "Presence of primary malignant neoplasm of breast at surgical margin in excised specimen of breast"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* partOf = Reference(BreastCancerSurgeryPatient147)

Mapping: ReoperationSurgeryToICHOM
Source:	ReoperationSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reoperation-surgery-mapping
Title: "Reoperation surgery to ICHOM set"
Description: "Mapping of the reoperation surgery to the ICHOM breast cancer PCOM set" 	
* -> "Surgery"
* reasonCode -> "Involved margins reoperation"
* performed[x] -> "Positive margins reoperation date or surgery date"

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
* extension[dueTo] ^short = "Previous procedure that prompted this complication"
* extension[dueTo] ^definition = "This element indicates whether the complication was attributable to the breast cancer treatment the patient received"
* extension[dueTo].value[x] only Reference
* extension[dueTo].valueReference only Reference (Procedure)

Instance: ComplicationPatient147
InstanceOf: Complication
Description: "Example of a complication in patient with breast cancer"
* clinicalStatus = ConditionStatusCS#active "Active"
* code = SCT#233604007 "Pneumonia"
* subject = Reference(BreastCancerPatient147)
* severity = SCT#397945004 "Unexpected admission to intensive care unit"
* extension[dueTo].valueReference = Reference(BreastCancerSurgeryPatient147)

Mapping: ComplicationToICHOM
Source:	Complication
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: complication-mapping
Title: "Complication to ICHOM set"
Description: "Mapping of the type and impact of a complication to the ICHOM breast cancer PCOM set" 	
* code -> "Complication type"
* severity -> "Impact of complication"
* extension[dueTo] -> "Complication attributed to treatment"

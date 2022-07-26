Profile: PrimaryBreastCancerCondition
Parent: Condition 
Id: primary-breastcancer
Title: "Primary Breast Cancer Condition"
Description: "Represent the properties of the primary breast cancer diagnosis."
* insert PublicationProfileRuleset
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* subject only Reference(BreastCancerPatient)
* bodySite from LateralityVS (required)
* bodySite MS
* clinicalStatus MS
* recordedDate MS

Instance: ConditionPatient147
InstanceOf: PrimaryBreastCancerCondition
Description: "Example of the condition breast cancer diagnosed in a patient"
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* clinicalStatus = ConditionStatusCS#recurrence "Recurrence"
* bodySite = SCT#80248007 "Left breast"
* subject = Reference(BreastCancerPatient147)

Mapping: PrimaryBreastCancerConditionToICHOM
Source:	PrimaryBreastCancerCondition
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: primaryconditionmapping
Title: "Primary condition to ICHOM set"
Description: "Mapping of the primary breast cancer condition to the ICHOM breast cancer PCOM set. To ensure this is the first breast cancer diagnosed in a patient, the application can search for previous conditions." 	
* -> "First breast cancer"
* bodySite -> "Laterality"
* clinicalStatus -> "Recurrence" 



// Profile: SecondaryBreastCancerCondition
// Parent: Condition 
// Id: secondary-breastcancer
// Title: "Secondary Breast Cancer Condition"
// Description: "Represent the properties of the Secondary breast cancer diagnosis"
// * insert PublicationProfileRuleset
// * code = SCT#145501000119108 "Secondary malignant neoplasm of breast"
// * bodySite from LateralityVS
// * bodySite MS


// Profile: DeathBC
// Parent: Observation 
// Id: death-bc
// Title: "Death BC"
// Description: "Cause of death is breast cancer"
// * insert PublicationProfileRuleset
// * subject only Reference(BreastCancerPatient)
// * code = SCT#184305005 "Cause of death"
// * valueCodeableConcept = SCT#254838004 "Carcinoma of breast (disorder)"

Profile: DeathAttributableBC
Parent: Observation 
Id: death-attr-bc
Title: "Death BC"
Description: "Death attributable to breast cancer"
* insert PublicationProfileRuleset
* code = SCT#419620001:42752001=254838004 "Death due to carcinoma of breast (disorder)"
* value[x] only CodeableConcept 
* value[x] from NoYesUnknownValueSet (required)
* value[x] MS

Instance: DeathAttributableBCPatient147
InstanceOf: DeathAttributableBC
Description: "Example of death attributable to breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = #N

// Mapping: DeathAttributableBCToICHOM
// Source:	DeathAttributableBC
// Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
// Id: deathbcmapping
// Title: "Death attributable to breast cancer to to ICHOM set"
// Description: "Mapping of death attributable to breast cancer to the ICHOM breast cancer PCOM set." 	
// * valueCodeableConcept -> "Death attributable to breast cancer"

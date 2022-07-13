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




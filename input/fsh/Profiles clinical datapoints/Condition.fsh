// Primary Breast Cancer
Profile: PrimaryBreastCancerCondition
Parent: Condition 
Id: primary-breastcancer
Title: "Primary Breast Cancer Condition"
Description: "Represent the properties of the primary breast cancer diagnosis"
* insert PublicationProfileRuleset
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* subject only Reference(BreastCancerPatient)
* bodySite from LateralityVS (preferred)
* code and subject and bodySite and clinicalStatus MS

Instance: PrimaryBreastCancerPatient147
InstanceOf: PrimaryBreastCancerCondition
Description: "Example of the primary breast cancer diagnosis of a patient"
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* clinicalStatus = ConditionStatusCS#recurrence "Recurrence"
* subject = Reference(BreastCancerPatient147)
* bodySite = SCT#80248007 "Left breast"

Mapping: PrimaryBreastCancerConditionToICHOM
Source:	PrimaryBreastCancerCondition
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: primaryconditionmapping
Title: "Primary condition to ICHOM set"
Description: "Mapping of the primary breast cancer condition to the ICHOM breast cancer PCOM set. To ensure this is the first breast cancer diagnosed in a patient, the application can search for previous conditions." 	
* -> "First breast cancer"

// Secondary Breast Cancer
Profile: SecondaryBreastCancerCondition
Parent: Condition 
Id: secondary-breastcancer
Title: "Secondary Breast Cancer Condition"
Description: "Represent the properties of the secondary breast cancer diagnosis"
* insert PublicationProfileRuleset
* code = SCT#145501000119108 "Secondary malignant neoplasm of breast"
* subject only Reference(BreastCancerPatient)
* bodySite from LateralityNewCancerVS
* code and subject and bodySite and clinicalStatus MS

Instance: SecondaryBreastCancerPatient147
InstanceOf: SecondaryBreastCancerCondition
Description: "Example of the secondary condition breast cancer diagnosed in a patient"
* code = SCT#145501000119108 "Secondary malignant neoplasm of breast"
* clinicalStatus = ConditionStatusCS#active "Active"
* bodySite = SCT#255209002 "Contralateral"
* subject = Reference(BreastCancerPatient147)

Mapping: SecondaryBreastCancerConditionToICHOM
Source:	SecondaryBreastCancerCondition
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: secondaryconditionmapping
Title: "Secondary condition to ICHOM set"
Description: "Mapping of the secondary breast cancer condition to the ICHOM breast cancer PCOM set. To ensure this is secondary breast cancer diagnosed in a patient, the application can search for previous conditions." 	
* -> "New cancer"
* bodySite -> "New cancer"

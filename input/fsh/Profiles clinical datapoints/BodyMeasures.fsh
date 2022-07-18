// BODY HEIGHT
Profile: BodyHeight
Parent: StandardBodyHeight
Id: ichom-body-height
Title: "Body height"
Description: "Represents the height of a person diagnosed with breast cancer"
* insert PublicationProfileRuleset
* subject only Reference(BreastCancerPatient)
* valueQuantity.value MS
* valueQuantity.unit MS

Instance: BodyHeightPatient147
InstanceOf: BodyHeight
Description: "Example of the height of a patient diagnosed with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 48
* valueQuantity.unit = "inches"
* valueQuantity.code = UCUM#[in_i]
* effectiveDateTime = "2019-04-01" 

Mapping: BodyHeightToICHOM
Source:	BodyHeight
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: BodyHeightMapping
Title: "Body height to ICHOM set"
Description: "Mapping of the body height to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value -> "Body height"
* valueQuantity.code -> "Body height units"

// BODY WEIGHT
Profile: BodyWeight
Parent: StandardBodyWeight
Id: ichom-body-weight
Title: "Body weight"
Description: "Represents the weight of a person diagnosed with breastcancer"
* insert PublicationProfileRuleset
* subject only Reference(BreastCancerPatient)
* valueQuantity.value MS
* valueQuantity.unit MS

Instance: BodyWeightPatient147
InstanceOf: BodyWeight
Description: "Example of the weight of a patient diagnosed with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 482
* valueQuantity.unit = "lbs"
* valueQuantity.code = UCUM#[lb_av]
* effectiveDateTime = "2019-04-01"

Mapping: BodyWeightToICHOM
Source:	BodyWeight
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: BodyWeightMapping
Title: "Body weight mapping to ICHOM set"
Description: "Mapping of the body weight to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value -> "Body weight"
* valueQuantity.code -> "Body weight units"

// MENOPAUSAL STATUS
Profile: MenopausalStatus
Parent: Observation 
Id: menopausal-status
Title: "Menopausal status"
Description: "Represents the menopausal status of a patient"
* insert PublicationProfileRuleset
* code = SCT#161712005 "Menopause, function (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from MenopausalStatusVS (required)
* value[x] MS

Instance: MenopausalStatusPatient147
InstanceOf: MenopausalStatus 
Title: "Example of menopausal status"
Description: "Example of the menopausal status of a patient"
* status = ObservationStatusCS#unknown
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#309606002

Mapping: MenopausalStatusToICHOM
Source:	MenopausalStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: MenopausalStatusMapping
Title: "Observation of menopausal status to ICHOM set"
Description: "Mapping of the menopausal status to the ICHOM breast cancer PCOM set." 	
* value[x] -> "Menopause status"

// BODY HEIGHT
Profile: BodyHeight
Parent: StandardBodyHeight
Id: ichom-body-height
Title: "Body height"
Description: "Represents the height of a person diagnosed with breast cancer"
* insert PublicationProfileRuleset
* subject only Reference(BreastCancerPatient)
* code and status and valueQuantity MS

// Adjusted Observation.code.coding slice to fix error "The slice definition has min of 0 but add up to 1..."
* code.coding 1..* MS

Instance: BodyHeightPatient147
InstanceOf: BodyHeight
Description: "Example of the height of a patient diagnosed with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 48
* valueQuantity.unit = "in_i"
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
* valueQuantity.unit from BodyWeightVS
* code and status and valueQuantity MS

// Adjusted Observation.code.coding slice to fix error "The slice definition has min of 0 but add up to 1..."
* code.coding 1..* MS

Instance: BodyWeightPatient147
InstanceOf: BodyWeight
Description: "Example of the weight of a patient diagnosed with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 70
* valueQuantity.unit = "kg"
* valueQuantity.code = #kg
* valueQuantity.system = UCUM
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
* valueCodeableConcept from MenopausalStatusVS (required)
* code and status and subject and valueCodeableConcept MS

Instance: MenopausalStatusPatient147
InstanceOf: MenopausalStatus 
Title: "Example of menopausal status"
Description: "Example of the menopausal status of a patient"
* status = ObservationStatusCS#unknown
* code = SCT#161712005 "Menopause, function (observable entity)"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#309606002

Mapping: MenopausalStatusToICHOM
Source:	MenopausalStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: MenopausalStatusMapping
Title: "Observation of menopausal status to ICHOM set"
Description: "Mapping of the menopausal status to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Menopause status"

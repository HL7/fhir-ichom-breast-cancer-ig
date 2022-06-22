ValueSet: UnitsBodyWeightVS
Id: UnitsBodyWeight
Title: "Units of patient's body weight"
Description: "Valueset of the unit  of the patient's body weight"
* SCT#258683005 "kilogram"
* SCT#258693003 "pounds"

Profile: ClinicalFactorsBodyWeight
Parent: HL7BodyWeight
Id: ichom-body-weight
Title: "Body weight profile"
Description: "The weight of a person diagnosed with breastcancer"
* valueQuantity.unit 1..1
* valueQuantity.unit from UnitsBodyWeightVS

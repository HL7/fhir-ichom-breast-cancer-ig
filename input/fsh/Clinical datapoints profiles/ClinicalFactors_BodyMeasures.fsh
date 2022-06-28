ValueSet: UnitsBodyHeightVS
Id: UnitsBodyHeight
Title: "Units of patient's body height"
Description: "Valueset of the unit  of the patient's body height"
* SCT#258672001 "Centimeter" 
* SCT#258677007 "Inch"

ValueSet: UnitsBodyWeightVS
Id: UnitsBodyWeight
Title: "Units of patient's body weight"
Description: "Valueset of the unit  of the patient's body weight"
* SCT#258683005 "kilogram"
* SCT#258693003 "pounds"

Profile: ClinicalFactorsBodyHeight
Parent: HL7BodyHeight
Id: ichom-body-height
Title: "Body height profile"
Description: "The height of a person diagnosed with breastcancer"
* valueQuantity.unit from UnitsBodyHeightVS //problem: vital signs profile requires a different set of units, we need to create our own

Profile: ClinicalFactorsBodyWeight
Parent: HL7BodyWeight
Id: ichom-body-weight
Title: "Body weight profile"
Description: "The weight of a person diagnosed with breastcancer"
* valueQuantity.unit from UnitsBodyWeightVS //problem: vital signs profile requires a different set of units, we need to create our own

// Profile: ClinicalFactorsBodyHeight
// Parent: Observation
// Id: ichom-body-height
// Title: "Body height profile"
// Description: "The height of a person diagnosed with breastcancer"
// * valueQuantity.unit from UnitsBodyHeightVS 

// Profile: ClinicalFactorsBodyWeight
// Parent: Observation
// Id: ichom-body-weight
// Title: "Body weight profile"
// Description: "The weight of a person diagnosed with breastcancer"
// * valueQuantity.unit from UnitsBodyWeightVS 
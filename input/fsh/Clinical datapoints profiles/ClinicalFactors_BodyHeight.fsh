ValueSet: UnitsBodyHeightVS
Id: UnitsBodyHeight
Title: "Units of patient's body height"
Description: "Valueset of the unit  of the patient's body height"
* SCT#258672001 "Centimeter" 
* SCT#258677007 "Inch"

Profile: ClinicalFactorsBodyHeight
Parent: HL7BodyHeight
Id: ichom-body-Height
Title: "Body height profile"
Description: "The height of a person diagnosed with breastcancer"
* valueQuantity.unit 1..1
* valueQuantity.unit from UnitsBodyHeightVS

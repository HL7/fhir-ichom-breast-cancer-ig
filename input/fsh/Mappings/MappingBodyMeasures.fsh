Mapping: BodyHeightToICHOM
Source:	BodyHeight
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/"
Id: BodyHeightMapping
Title: "Body height to ICHOM set"
Description: "Mapping of the body height to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value -> "HeightValue" "Body height"
* valueQuantity.code -> "HeightUnit" "Body height units"

Mapping: BodyWeightToICHOM
Source:	BodyWeight
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/"
Id: BodyWeightMapping
Title: "Body weight mapping to ICHOM set"
Description: "Mapping of the body weight to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value -> "WeightValue" "Body weight"
* valueQuantity.code -> "WeightUnit" "Body weight units"

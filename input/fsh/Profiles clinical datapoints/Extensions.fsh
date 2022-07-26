Extension: EducationLevel
Id: EducationLevel
Title:  "Education Level Extension"
Description: "Represents the level of education of a patient."
* value[x] only CodeableConcept
* value[x] from EducationLevelVS (required)

Mapping: EducationLevelToICHOM
Source:	EducationLevel
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: EducationLevelMapping
Title: "Education level mapping to ICHOM set"
Description: "Mapping of the education level to the ICHOM breast cancer PCOM set." 	
* -> "Level of education"

Extension: Race
Id: Race
Title:  "Race Extension"
Description: "Represents the race of a patient. This extension is aligned with USCore."
* value[x] only CodeableConcept
* value[x] from RaceVS (example) 

Mapping: RaceToICHOM
Source:	Race
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: RaceMapping
Title: "Race mapping to ICHOM set"
Description: "Mapping of the race to the ICHOM breast cancer PCOM set." 	
* -> "Race"

Extension: Ethnicity
Id: Ethnicity
Title:  "Ethnicity Extension"
Description: "Represents the ethnicity of a patient. This extension is aligned with USCore"
* value[x] only CodeableConcept
* value[x] from EthnicityVS (example)

Mapping: EthnicityToICHOM
Source:	Ethnicity
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: EthnicityMapping
Title: "Ethnicity mapping to ICHOM set"
Description: "Mapping of the ethnicity to the ICHOM breast cancer PCOM set." 	
* -> "Ethnicity"

// Extension: DeathBC
// Id: DeathBC
// Title: "Death breast cancer Extension"
// Description: "Represents if death is attributable to breast cancer."
// * value[x] only CodeableConcept 
// * value[x] from NoYesUnknownValueSet (example)

// Mapping: DeathBCToICHOM
// Source:	DeathBC
// Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
// Id: DeathBCMapping
// Title: "DeathBC mapping to ICHOM set"
// Description: "Mapping of the death attributable to breast cancer to the ICHOM breast cancer PCOM set." 	
// * -> "Death attributable to breast cancer"
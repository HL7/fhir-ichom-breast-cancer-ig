// BREAST CANCER STAGING GROUP
ValueSet: TNMStageGroupVS
Id: tnm-stage-group-vs
Title: "Value Set of Staging Type for Stage Group"
Description: "Valueset indicating the type of staging, clinical or pathological, of breast cancer."
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"

Profile: BreastCancerStageGroup
Id: breast-cancer-stage-group
Parent: Observation
Title: "Cancer Stage Group"
Description: "A staging system to describe the amount and spread of breast cancer in a patient's body, using TNM staging (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code from TNMStageGroupVS (required)
* subject only Reference(BreastCancerPatient)
* hasMember MS
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #pattern  
* hasMember ^slicing.discriminator.path = "$this.resolve().code"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Slicing based on referenced resource code attribute."
* hasMember contains
    TNMPrimaryTumorStage 0..1 MS and
    TNMRegionalNodalStage 0..1 MS and
    TNMDistantMetastases 0..1 MS
* hasMember[TNMPrimaryTumorStage] only Reference(TNMPrimaryTumorStage)
* hasMember[TNMPrimaryTumorStage] ^short = "TNM Primary Tumor Stage"
* hasMember[TNMPrimaryTumorStage] ^definition = "Represents the stage of the primary tumor (per AJCC 5th - 7th Ed.)"
* hasMember[TNMRegionalNodalStage] only Reference(TNMRegionalNodalStage)
* hasMember[TNMRegionalNodalStage] ^short = "TNM Regional Nodal Stage"
* hasMember[TNMRegionalNodalStage] ^definition = "Represents the presence or absence of metastases in regional lymph nodes (per AJCC 5th - 7th Ed.)"
* hasMember[TNMDistantMetastases] only Reference(TNMDistantMetastases)
* hasMember[TNMDistantMetastases] ^short = "TNM Distant Metastases"
* hasMember[TNMDistantMetastases] ^definition = "Represents the extent of a tumor metastasis in remote anatomical locations (per AJCC 5th - 7th Ed.)"

// Instance: BreastCancerStageGroupPatient147
// InstanceOf: BreastCancerStageGroup
// Description: "Example showing TNM staging in patient with breast cancer"
// * status = #final "final"
// * code = LNC#21908-9 "Stage group.clinical Cancer"
// * subject = Reference(BreastCancerPatient147)
// * hasMember[+] = Reference(TNMPrimaryTumorStagePatient147)
// * hasMember[+] = Reference(TNMRegionalNodalStagePatient147)
// * hasMember[+] = Reference(TNMDistantMetastasesPatient147)

// TNM TUMOR STAGE
Profile:  TNMPrimaryTumorStage
Id: tnm-primary-tumor-stage
Parent: Observation
Title: "TNM Primary Tumor Stage"
Description: "Represents the stage of the primary tumor (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385356007 "Tumor stage finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

// Instance: TNMPrimaryTumorStagePatient147
// InstanceOf: TNMPrimaryTumorStage
// Description: "Extended example: example showing TNM staging (T)"
// * status = #final "final"
// * subject = Reference(BreastCancerPatient147)

Mapping: TNMPrimaryTumorStageToICHOM
Source:	TNMPrimaryTumorStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: TNMPrimaryTumorStageMapping
Title: "TNM primary tumor stage to ICHOM set"
Description: "Mapping of the TNM primary tumor stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical or pathological tumor stage"

// TNM NODAL STAGE
Profile:  TNMRegionalNodalStage
Id: tnm-regional-nodes-stage
Parent: Observation
Title: "TNM Regional Nodal Stage"
Description: "Represents the presence or absence of metastases in regional lymph nodes (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385382003 "Node stage finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

// Instance: TNMRegionalNodalStagePatient147
// InstanceOf: TNMRegionalNodalStage
// Description: "Extended example: example showing TNM staging (N)"
// * status = #final "final"
// * subject = Reference(BreastCancerPatient147)
// * valueCodeableConcept = AJCC#cN0

Mapping: TNMRegionalNodalStageToICHOM
Source:	TNMRegionalNodalStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: TNMRegionalNodalStageMapping
Title: "TNM regional nodal stage to ICHOM set"
Description: "Mapping of the TNM regional nodal stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical or pathological nodal stage"

// TNM DISTANT METASTASES
Profile:  TNMDistantMetastases
Id: tnm-distant-metastases
Parent: Observation
Title: "TNM Distant Metastases"
Description: "Represents the extent of a tumor metastasis in remote anatomical locations (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385380006 "Metastasis category finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

// Instance: TNMDistantMetastasesPatient147
// InstanceOf: TNMDistantMetastases
// Description: "Extended example: example showing TNM staging (M)"
// * status = #final "final"
// * subject = Reference(BreastCancerPatient147)
// * valueCodeableConcept = AJCC#cM0

Mapping: TNMDistantMetastasesToICHOM
Source:	TNMDistantMetastases
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: TNMDistantMetastasesMapping
Title: "TNM distant metastases to ICHOM set"
Description: "Mapping of the TNM distant metastases to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical or pathological  distant metastasis"

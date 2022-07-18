// CLINICAL TUMOR STAGE
Profile:  ClinicalTNMTumorStage
Id: clinical-tnm-tumor-stage
Parent: Observation
Title: "Clinical TNM tumor stage"
Description: "Represents the clinical stage of the tumor (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385356007 "Tumor stage finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMPrimaryTumorVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: ClinicalTNMTumorStagePatient147
InstanceOf: ClinicalTNMTumorStage
Description: "Example showing TNM staging for tumor stage"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#cTis
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Mapping: ClinicalTNMTumorStageToICHOM
Source:	ClinicalTNMTumorStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: ClinicalTNMTumorStageMapping
Title: "Clinical TNM tumor stage to ICHOM set"
Description: "Mapping of the clinical TNM tumor stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical tumor stage"

// PATHOLOGICAL TUMOR STAGE
Profile:  PathologicalTNMTumorStage
Id: pathological-tnm-tumor-stage
Parent: Observation
Title: "Pathological TNM tumor stage"
Description: "Represents the pathological stage of the tumor (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385356007 "Tumor stage finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMPrimaryTumorVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: PathologicalTNMTumorStagePatient147
InstanceOf: PathologicalTNMTumorStage
Description: "Example showing TNM staging for tumor stage"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#pTis
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"


Mapping: PathologicalTNMTumorStageToICHOM
Source:	PathologicalTNMTumorStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: PathologicalTNMTumorStageMapping
Title: "Pathological TNM tumor stage to ICHOM set"
Description: "Mapping of the pathological TNM tumor stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Pathological tumor stage"


// CLINICAL NODAL STAGE
Profile: ClinicalTNMNodalStage
Id: clinical-tnm-nodal-stage
Parent: Observation
Title: "Clinical TNM nodal stage"
Description: "Represents the clinical stage of the presence or absence of metastases in regional lymph nodes (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385382003 "nodal stage finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMRegionalNodesVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: ClinicalTNMNodalStagePatient147
InstanceOf: ClinicalTNMNodalStage
Description: "Example showing clinical TNM staging for nodal stage"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#cN1
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Mapping: ClinicalTNMNodalStageToICHOM
Source:	ClinicalTNMNodalStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: ClinicalTNMNodalStageMapping
Title: "Clinical TNM nodal stage to ICHOM set"
Description: "Mapping of the clinical TNM nodal stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical nodal stage"


// PATHOLOGICAL NODAL STAGE
Profile: PathologicalTNMNodalStage
Id: pathological-tnm-nodal-stage
Parent: Observation
Title: "Pathological TNM nodal stage"
Description: "Represents the pathological stage of the presence or absence of metastases in regional lymph nodes (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385382003 "nodal stage finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMRegionalNodesVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: PathologicalTNMNodalStagePatient147
InstanceOf: PathologicalTNMNodalStage
Description: "Example showing TNM staging for nodal stage"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#pN0
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Mapping: PathologicalTNMNodalStageToICHOM
Source:	PathologicalTNMNodalStage
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: PathologicalTNMNodalStageMapping
Title: "Pathological TNM nodal stage to ICHOM set"
Description: "Mapping of the pathological TNM nodal stage to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Pathological nodal stage"



// CLINICAL DISTANT METASTASES STAGE
Profile:  ClinicalTNMDistantMetastases
Id: clinical-tnm-distant-metastases
Parent: Observation
Title: "Clinical TNM distant metastases"
Description: "Represents the clinical stage of the extent of a tumor metastasis in remote anatomical locations (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385380006 "Metastasis category finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMDistantMetastasesVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: ClinicalTNMDistantMetastasesPatient147
InstanceOf: ClinicalTNMDistantMetastases
Description: "Example showing TNM staging for distant metastases"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#cMX
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Mapping: ClinicalTNMDistantMetastasesToICHOM
Source:	ClinicalTNMDistantMetastases
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: ClinicalTNMDistantMetastasesMapping
Title: "TNM score of clinical distant metastases to ICHOM set"
Description: "Mapping of the TNM score of the clinical distant metastases to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Clinical distant metastasis"

// PATHOLOGICAL DISTANT METASTASES STAGE
Profile:  PathologicalDistantMetastasesTNM
Id: pathological-tnm-distant-metastases
Parent: Observation
Title: "Pathological TNM distant metastases"
Description: "Represents the pathological stage of the extent of a tumor metastasis in remote anatomical locations (per AJCC 5th - 7th Ed.)"
* insert PublicationProfileRuleset
* code = SCT#385380006 "Metastasis category finding"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from TNMDistantMetastasesVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: PathologicalDistantMetastasesTNMPatient147
InstanceOf: PathologicalDistantMetastasesTNM
Description: "Example showing TNM staging for distant metastases"
* status = #final "final"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = AJCC#pMX
* method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

Mapping: PathologicalDistantMetastasesTNMToICHOM
Source:	PathologicalDistantMetastasesTNM
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: PathologicalDistantMetastasesTNMMapping
Title: "TNM score of pathological distant metastases to ICHOM set"
Description: "Mapping of the TNM score of the pathological distant metastases to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Pathological distant metastasis"

// HISTOTYPE
Profile: Histotype
Parent: Observation 
Id: histo-type
Title: "Histological type of the tumor"
Description: "Represents the histological type of the tumor"
* insert PublicationProfileRuleset
* code = SCT#396984004 "Histologic feature of neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from HistologicalTypeVS (preferred)
* value[x] MS
* effectiveDateTime MS

Instance: HistotypePatient147
InstanceOf: Histotype
Description: "Example of the histological type of the breast cancer tumor"
* status = ObservationStatusCS#final
* code = SCT#396984004 "Histologic feature of neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#722524005
* effectiveDateTime = "1921-01-30"

Mapping: HistotypeToICHOM
Source:	Histotype
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: histotypemapping
Title: "Histotype to ICHOM set"
Description: "Mapping of the histologival type of tumor to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept -> "Histological type"
* effectiveDateTime -> "Date of histological diagnosis"

// GERLINE MUTATION
Profile: GermlineMutation
Parent: Observation 
Id: germline-mutation
Title: "Germline mutation"
Description: "Represents if the patient carries a germline mutation predisposing breast cancer"
* insert PublicationProfileRuleset
* code = SCT#55446002 "Genetic mutation"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GermlineMutationVS (preferred)
* value[x] MS

Instance: GermlineMutationPatient147
InstanceOf: GermlineMutation
Description: "Example of whether a patient carries a germline mutation predisposing breast cancer"
* status = ObservationStatusCS#final
* code = SCT#55446002 "Genetic mutation"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#445180002 

Mapping: GermlineMutationToICHOM
Source:	GermlineMutation
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: GermlineMutationMapping
Title: "Germline mutation to ICHOM set"
Description: "Mapping of the germline mutation to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept -> "Germline mutation"

// TUMOR GRADING
Profile: TumorGrade
Parent: Observation 
Id: tumor-grade
Title: "Tumor grade"
Description: "Represents the grade of the breast cancer tumor"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GradingVS (required)
* value[x] MS

Instance: TumorGradePatient147
InstanceOf: TumorGrade
Description: "Example of the grade of a breast cancer tumor"
* status = ObservationStatusCS#final
* code = SCT#371469007 "Histologic grade of neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#399415002

Mapping: TumorGradeToICHOM
Source:	TumorGrade
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: tumorgrademapping
Title: "Tumor grade to ICHOM set"
Description: "Mapping of the tumor grade to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept ->  "Tumor grade"

//INVASION GRADE
Profile: InvasionGrade
Parent: Observation 
Id: invasion-grade
Title: "Invasion grade"
Description: "Represents the tumor grade of DCIS component of the breast cancer tumor"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GradingVS (required)
* value[x] MS

Instance: InvasionGradePatient147
InstanceOf: InvasionGrade
Description: "Example of the tumor grade of DCIS component of the breast cancer tumor"
* status = ObservationStatusCS#final
* code = SCT#371469007 "Histologic grade of neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#399415002

Mapping: InvasionGradeToICHOM
Source:	InvasionGrade
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: Invasiongrademapping
Title: "Invasion grade to ICHOM set"
Description: "Mapping of the invasion grade to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept ->  "Invasion grade"

// TUMOR SIZE
Profile: TumorSize
Parent: Observation 
Id: sizeinvasivetumor
Title: "Size of invasive tumor"
Description: "Represents the size of the invasive tumor"
* insert PublicationProfileRuleset
* code = SCT#384630000 "Tumor size, invasive component"
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS
* valueQuantity.unit = UCUM#mm "mm"

Instance: TumorSizePatient147
InstanceOf: TumorSize
Description: "Example of the size of the invasive tumor of a patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#384630000 "Tumor size, invasive component"
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 59
* valueQuantity.unit = UCUM#mm "mm"

Mapping: TumorSizeToICHOM
Source:	TumorSize
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: tumorsizemapping
Title: "Size of the invasive tumor to ICHOM set"
Description: "Mapping of the size of the invasive tumor to the ICHOM breast cancer PCOM set" 	
* valueQuantity.value -> "Size of the invasive tumor"


// LYMPH NODES RESECTED
Profile: LymphNodesResected
Parent: Observation 
Id: lymph-nodes-resected
Title: "Resected lymph nodes"
Description: "Represents the number of lymph nodes resected"
* insert PublicationProfileRuleset
* code = SCT#444025001 "Number of lymph nodes examined"
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS

Instance: LymphNodesResectedPatient147
InstanceOf: LymphNodesResected
Description: "Example of the number of resected lymph nodes in a patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#444025001 "Number of lymph nodes examined"
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value[+] = 11

Mapping: LymphNodesResectedToICHOM
Source:	LymphNodesResected
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: lymphnodesresectedmapping
Title: "Resected lymph nodes to ICHOM set"
Description: "Mapping of the resected lymph nodes to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value ->  "Number lymph nodes resected"


// LYMPH NODES INVOLVED
Profile: LymphNodesInvolved
Parent: Observation 
Id: lymph-nodes-involved
Title: "Lymph nodes involved"
Description: "Represents the number of lymph nodes involved"
* insert PublicationProfileRuleset
* code = SCT#443527007 "Number of lymph nodes involved by malignant neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS

Instance: LymphNodesInvolvedPatient147
InstanceOf: LymphNodesInvolved
Description: "Example of the number of involved lymph nodes in a patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#443527007 "Number of lymph nodes involved by malignant neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value[+] = 28

Mapping: LymphNodesInvolvedToICHOM
Source:	LymphNodesInvolved
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: lymphnodesinvolvedmapping
Title: "Involved lymph nodes to ICHOM set"
Description: "Mapping of the involved lymph nodes to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value ->  "Lymph nodes involved"

// ER STATUS
Profile: ERStatus
Parent: Observation 
Id: er-status
Title: "Estrogen receptor status"
Description: "Represents if the estrogen receptor status is positive in a patient with breast cancer"
* insert PublicationProfileRuleset
* code = SCT#445028008 "Status of estrogen receptors of neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from EstrogenStatusVS (required)
* value[x] MS

Instance: ERStatusPatient147
InstanceOf: ERStatus
Description: "Example of the estrogen receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#445028008 "Status of estrogen receptors of neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#416053008 "Estrogen receptor positive tumor"

Mapping: ERStatusToICHOM
Source:	ERStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: erstatusmapping
Title: "ER status to ICHOM set"
Description: "Mapping of the estrogen receptor status to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept -> "Estrogen receptor status"

// PR STATUS
Profile: PRStatus
Parent: Observation 
Id: pr-status
Title: "Progesterone receptor status"
Description: "Represents if the progesterone receptor status is positive in a patient with breast cancer"
* insert PublicationProfileRuleset
* code = SCT#445029000 "Status of progesterone receptors of neoplasm"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from ProgesteroneStatusVS (required)
* value[x] MS

Instance: PRStatusPatient147
InstanceOf: PRStatus
Description: "Example of the progesterone receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* code = SCT#445029000 "Status of progesterone receptors of neoplasm"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = NullFlavor#UNK "unknown"

Mapping: PRStatusToICHOM
Source:	PRStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: prstatusmapping
Title: "PR status to ICHOM set"
Description: "Mapping of the progesterone receptor status to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept -> "Progesterone receptor status"

// HER STATUS
Profile: HERStatus
Parent: Observation 
Id: her-status
Title: "HER2 receptor status"
Description: "Represents if the human epidermal growth factor receptor 2 (HER2) receptor status is positive in a patient with breast cancer"
* insert PublicationProfileRuleset
* code = LNC#48676-1 "HER2 [Interpretation] in tissue"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from HER2ReceptorStatusVS (required)
* value[x] MS

Instance: HERStatusPatient147
InstanceOf: HERStatus
Description: "Example of the human epidermal growth factor receptor 2 (HER2) status in a patient with breast cancer"
* status = ObservationStatusCS#final
* code = LNC#48676-1 "HER2 [Interpretation] in tissue"
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#431396003 "Human epidermal growth factor 2 negative carcinoma of breast"

Mapping: HERStatusToICHOM
Source:	HERStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: herstatusmapping
Title: "HER status to ICHOM set"
Description: "Mapping of the human epidermal growth factor receptor 2 (HER2) status to the ICHOM breast cancer PCOM set" 	
* valueCodeableConcept -> "HER2 receptor status"

// Mammaprint score
Profile: MammaprintScore
Parent: Observation 
Id: mammaprint-score
Title: "Mammaprint score"
Description: "Represents the mammaprintscore on a scale of 0.000 to 1.000"
* insert PublicationProfileRuleset
* code = MolecularProfilingCodeSystem#MammaP "Mammaprint Score"
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS

Instance: MammaprintPatient147
InstanceOf: MammaprintScore
Description: "Example of the mammaprint score"
* status = ObservationStatusCS#final
* code = MolecularProfilingCodeSystem#MammaP "Mammaprint Score"
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 0.761854476345979

Mapping: MammaprintToICHOM
Source:	MammaprintScore
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: Mammaprintmapping
Title: "Mammaprint score to ICHOM set"
Description: "Mapping of the mammaprint score to the ICHOM breast cancer PCOM set" 	
* code -> "Molecular Profiling"
* valueQuantity -> "Mammaprint Score"

// Oncotype score
Profile: OncotypeScore
Parent: Observation 
Id: oncotype-score
Title: "Oncotype Score"
Description: "Represents the oncotype score on a scale of 0 to 100"
* code = MolecularProfilingCodeSystem#OncoT "Oncotype Score" 
* insert PublicationProfileRuleset
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS

Instance: OncotypePatient147
InstanceOf: OncotypeScore
Description: "Example of the oncotype score"
* status = ObservationStatusCS#final
* code = MolecularProfilingCodeSystem#OncoT "Oncotype Score" 
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 92

Mapping: OncotypeToICHOM
Source:	OncotypeScore
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: Oncotypescoremapping
Title: "Oncotype score to ICHOM set"
Description: "Mapping of the Oncotype score to the ICHOM breast cancer PCOM set" 	
* code -> "Molecular Profiling"
* valueQuantity -> "Oncotype score"

// Endopredict Score
Profile: EndopredictonScore
Parent: Observation 
Id: endopredicton-score
Title: "Endopredict score"
Description: "Represents the endopredict score on a scale of 1.1 to 6.2"
* insert PublicationProfileRuleset
* code = MolecularProfilingCodeSystem#EndoP "Endopredict Score" 
* subject only Reference(BreastCancerPatient)
* value[x] only Quantity
* value[x] MS

Instance: EndopredictonPatient147
InstanceOf: EndopredictonScore
Description: "Example of the endopredict score"
* status = ObservationStatusCS#final
* code = MolecularProfilingCodeSystem#EndoP "Endopredict Score" 
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 1.86494098478133

Mapping: EndopredictonToICHOM
Source:	EndopredictonScore
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: Endopredictonmapping
Title: "Endopredict score to ICHOM set"
Description: "Mapping of the endopredict score to the ICHOM breast cancer PCOM set" 	
* code -> "Molecular Profiling"
* valueQuantity -> "Endopredict Score"

// Multidisciplinary meeting 
Profile: TreatmentPlan
Parent: CarePlan 
Id: treatment-plan 
Title: "Treatment recommended by a multidisciplinary team"
Description: "Represents the treatment that a multidisciplinary team recommended during a multidisciplinary meeting"
* insert PublicationProfileRuleset
* category = SCT#312384001 "Multidisciplinary assessment"
* subject only Reference(BreastCancerPatient)
* created MS
* activity.detail.code from RecommendedTreatmentTypeValueSet 
* activity.detail.code MS

Instance: TreatmentPlanPatient147
InstanceOf: TreatmentPlan
Description: "Example of the treatment that a multidisciplinary team recommended during a multidisciplinary meeting"
* status = CareplanStatusCS#active
* intent = CareplanIntentCS#plan 
* category = SCT#312384001 "Multidisciplinary assessment"
* subject = Reference(BreastCancerPatient147)
* activity.detail.code = SCT#387713003 "Surgical procedure"
* activity.detail.status = CareplanActivityStatusCS#unknown

Mapping: TreatmentPlanToICHOM
Source:	TreatmentPlan
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: TreatmentPlanMapping
Title: "Treatmentplan to ICHOM set"
Description: "Mapping of the treatment that a multidisciplinary team recommended to the ICHOM breast cancer PCOM set" 	
* -> "Multidisciplinary Meeting"
* activity.detail.code -> "Multidisciplinary Recommended Treatments"

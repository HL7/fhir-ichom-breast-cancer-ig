// HISTOTYPE
Profile: Histotype
Parent: Observation 
Id: histo-type
Title: "Histological type of the tumor"
Description: "Represents the histological type of the tumor"
* insert PublicationProfileRuleset
* code = SCT#396984004 "Histologic feature of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from HistologicalTypeVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: HistotypePatient147
InstanceOf: Histotype
Description: "Example of the histological type of the breast cancer tumor"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#722524005

Mapping: HistotypeToICHOM
Source:	Histotype
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: histotypemapping
Title: "Histotype to ICHOM set"
Description: "Mapping of the histologival type of tumor to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Histological type"

// GENETIC MUTATION
Profile: GeneticMutation
Parent: Observation 
Id: genetic-mutation
Title: "Genetic mutation"
Description: "Represents if the patient is a carrier of a genetic mutation predisposing breast cancer"
* insert PublicationProfileRuleset
* code = SCT#55446002 "Genetic mutation"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GeneticMutationVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: GeneticMutationPatient147
InstanceOf: GeneticMutation
Description: "Example of a genetic mutation predisposing breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#445180002 

Mapping: GeneticMutationToICHOM
Source:	GeneticMutation
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: geneticmutationmapping
Title: "Genetic mutation to ICHOM set"
Description: "Mapping of the genetic mutation to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Genetic mutation"

// TUMOR GRADING
Profile: TumorGrade
Parent: Observation 
Id: tumor-grade
Title: "Tumor grade"
Description: "Represents the grade of the breast cancer tumor"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GradingVS (required)
* value[x] MS

Instance: TumorGradePatient147
InstanceOf: TumorGrade
Description: "Example of the grade of a breast cancer tumor"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#399415002

Mapping: TumorGradeToICHOM
Source:	TumorGrade
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: tumorgrademapping
Title: "Tumor grade to ICHOM set"
Description: "Mapping of the tumor grade to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept ->  "Tumor grade"

//INVASION GRADE
Profile: InvasionGrade
Parent: Observation 
Id: invasion-grade
Title: "Invasion grade"
Description: "Represents the tumor grade of DCIS component of the breast cancer tumor"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GradingVS (required)
* value[x] MS

Instance: InvasionGradePatient147
InstanceOf: InvasionGrade
Description: "Example of the tumor grade of DCIS component of the breast cancer tumor"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#399415002

Mapping: InvasionGradeToICHOM
Source:	InvasionGrade
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: Invasiongrademapping
Title: "Invasion grade to ICHOM set"
Description: "Mapping of the invasion grade to the ICHOM breast cancer PCOM set." 	
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
* effectiveDateTime MS

Instance: TumorSizePatient147
InstanceOf: TumorSize
Description: "Example of the size of the invasive tumor of a patient with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 59

Mapping: TumorSizeToICHOM
Source:	TumorSize
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: tumorsizemapping
Title: "Size of the invasive tumor to ICHOM set"
Description: "Mapping of the size of the invasive tumor to the ICHOM breast cancer PCOM set." 	
* valueQuantity.value -> "Size of the invasive tumor"


// LYMPH NODES
Profile: LymphNodes
Parent: Observation 
Id: lymph-nodes
Title: "Lymph nodes"
Description: "Represents the number of lymph nodes resected and involved"
* insert PublicationProfileRuleset
* code = SCT#364108009 "Lymph node observable"
* subject only Reference(BreastCancerPatient)
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains 
    LymphNodesResected 0..1 MS and LymphNodesInvolved 0..1 MS
* component[LymphNodesResected] ^short = "Number lymph nodes resected"
* component[LymphNodesResected] ^definition = "Number of lymph nodes resected"
* component[LymphNodesResected].code = SCT#444025001 "Number of lymph nodes examined"
* component[LymphNodesResected].value[x] only Quantity
* component[LymphNodesInvolved] ^short = "Lymph nodes involved"
* component[LymphNodesInvolved] ^definition = "Number of lymph nodes involved according to the TNM stage AJCC 7th Ed"
* component[LymphNodesInvolved].code = SCT#443527007 "Number of lymph nodes involved by malignant neoplasm"
* component[LymphNodesInvolved].value[x] only Quantity

Instance: LymphNodesPatient147
InstanceOf: LymphNodes
Description: "Example of the number of resected lymph nodes and the number of involved lymph nodes"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* component[LymphNodesResected].valueQuantity.value[+] = 11
* component[LymphNodesInvolved].valueQuantity.value[+] = 28

Mapping: LymphNodesToICHOM
Source:	LymphNodes
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: lymphnodesmapping
Title: "Lymph nodes to ICHOM set"
Description: "Mapping of the lymph nodes to the ICHOM breast cancer PCOM set." 	
* component[LymphNodesResected].valueQuantity.value ->  "Inavasion grade"
* component[LymphNodesInvolved].valueQuantity.value ->  "Tumor grade"


// ER STATUS
Profile: ERStatus
Parent: Observation 
Id: er-status
Title: "Estrogen receptor status"
Description: "Represents if the estrogen receptor status is positive"
* insert PublicationProfileRuleset
* code = SCT#445028008 "Status of estrogen receptor of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from EstrogenStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: ERStatusPatient147
InstanceOf: ERStatus
Description: "Example of the estrogen receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#416237000

Mapping: ERStatusToICHOM
Source:	ERStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: erstatusmapping
Title: "ER status to ICHOM set"
Description: "Mapping of the estrogen receptor status to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Estrogen receptor status"

// PR STATUS
Profile: PRStatus
Parent: Observation 
Id: pr-status
Title: "Progesterone receptor status"
Description: "Represents if the progesterone receptor status is positive"
* insert PublicationProfileRuleset
* code = SCT#445029000 "Status of progesterone receptors of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from ProgesteroneStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: PRStatusPatient147
InstanceOf: PRStatus
Description: "Example of the progesterone receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = NullFlavor#UNK

Mapping: PRStatusToICHOM
Source:	PRStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: prstatusmapping
Title: "PR status to ICHOM set"
Description: "Mapping of the progesterone receptor status to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "Progesterone receptor status"

// HER STATUS
Profile: HERStatus
Parent: Observation 
Id: her-status
Title: "HER2 receptor status"
Description: "Represents if the HER2 receptor status is positive"
* insert PublicationProfileRuleset
* code = LNC#48676-1 "HER2 [Interpretation] in tissue"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from HER2ReceptorStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: HERStatusPatient147
InstanceOf: HERStatus
Description: "Example of the HER2 receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#416237000

Mapping: HERStatusToICHOM
Source:	HERStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: herstatusmapping
Title: "HER status to ICHOM set"
Description: "Mapping of the HER2 receptor status to the ICHOM breast cancer PCOM set." 	
* valueCodeableConcept -> "HER2 receptor status"

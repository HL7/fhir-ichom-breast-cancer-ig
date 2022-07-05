// Tumor factors
Profile: Histotype
Parent: Observation 
Id: histo-type
Title: "Histological type of the tumor"
Description: "The observation represents the histological type of the tumor"
* insert PublicationProfileRuleset
* code = SCT#396984004 "Histologic feature of neoplasm (observable entity)"
* value[x] only CodeableConcept 
* value[x] from HistologicalTypeVS (required)
* value[x] MS
* effectiveDateTime MS

Profile: GeneticMutation
Parent: Observation 
Id: genetic-mutation
Title: "Genetic mutation"
Description: "The observation represents if the patient is a carrier of a genetic mutation predisposing breast cancer"
* insert PublicationProfileRuleset
* code = SCT#55446002 "Genetic mutation (finding)"
* value[x] only CodeableConcept 
* value[x] from GeneticMutationVS (required)
* value[x] MS
* effectiveDateTime MS

//Need to make sure that both tumor grade and invasion grade fit in the same observation.
Profile: TumorGrading
Parent: Observation 
Id: tumor-grade
Title: "Tumor and invasion grade"
Description: "The observation represents if the tumor grade and the invasion grade"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm (observable entity)"
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains 
    InvasionGrade 0..1 MS and TumorGrade 0..1 MS
* component[InvasionGrade] ^short = "Invasion grade"
* component[InvasionGrade] ^definition = "The grade of invasive component of tumor"
* component[InvasionGrade].value[x] only CodeableConcept
* component[InvasionGrade].valueCodeableConcept from GradingVS (required)
* component[TumorGrade] ^short = "Tumor grade"
* component[TumorGrade] ^definition = "The grade of DCIS component of the tumor"
* component[TumorGrade].value[x] only CodeableConcept
* component[TumorGrade].valueCodeableConcept from GradingVS (required)

Profile: LymphNodes
Parent: Observation 
Id: lymph-nodes
Title: "Lymph nodes"
Description: "The observation represents the number of lymph nodes resected and involved"
* insert PublicationProfileRuleset
* code = SCT#364108009 "Lymph node observable"
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

Profile: ERStatus
Parent: Observation 
Id: er-status
Title: "Estrogen receptor status"
Description: "The observation represents if the estrogen receptor status is positive"
* insert PublicationProfileRuleset
* code = SCT#445028008 "Status of estrogen receptors of neoplasm (observable entity)"
* value[x] only CodeableConcept 
* value[x] from EstrogenStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Profile: PRStatus
Parent: Observation 
Id: pr-status
Title: "Progesterone receptor status"
Description: "The observation represents if the progesterone receptor status is positive"
* insert PublicationProfileRuleset
* code = SCT#445029000 "Status of progesterone receptors of neoplasm (observable entity)"
* value[x] only CodeableConcept 
* value[x] from ProgesteroneStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Profile: HERStatus
Parent: Observation 
Id: her-status
Title: "HER2 receptor status"
Description: "The observation represents if the HER2 receptor status is positive"
* insert PublicationProfileRuleset
* code = LNC#48676-1 "HER2 [Interpretation] in Tissue"
* value[x] only CodeableConcept 
* value[x] from HER2ReceptorStatusVS (required)
* value[x] MS
* effectiveDateTime MS
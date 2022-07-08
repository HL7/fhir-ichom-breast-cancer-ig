// Tumor factors
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
* value[x] = SCT#722524005

// GENETIC MUTATION
Profile: GeneticMutation
Parent: Observation 
Id: genetic-mutation
Title: "Genetic mutation"
Description: "Represents if the patient is a carrier of a genetic mutation predisposing breast cancer"
* insert PublicationProfileRuleset
* code = SCT#55446002 "Genetic mutation (finding)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from GeneticMutationVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: GeneticMutationPatient147
InstanceOf: GeneticMutation
Description: "Example of a genetic mutation predisposing breast cancer"
* status = ObservationStatusCS#final
* value[x] = SCT#445180002 

// TUMOR GRADING
//Need to make sure that both tumor grade and invasion grade fit in the same observation.
Profile: TumorGrading
Parent: Observation 
Id: tumor-grade
Title: "Tumor and invasion grade"
Description: "Represents if the tumor grade and the invasion grade"
* insert PublicationProfileRuleset
* code = SCT#371469007 "Histologic grade of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
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

Instance: TumorGradingPatient147
InstanceOf: TumorGrading
Description: "Example of the tumor and invasion grade of a breast cancer tumor"
* status = ObservationStatusCS#final
* component[InvasionGrade].valueCodeableConcept.coding = SCT#399415002 "Low grade histologic differentiation (finding)"
* component[TumorGrade].valueCodeableConcept.coding = SCT#399415002 "Low grade histologic differentiation (finding)"


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
* component[LymphNodesResected].valueQuantity.value[+] = 11
* component[LymphNodesInvolved].valueQuantity.value[+] = 28

// ER STATUS
Profile: ERStatus
Parent: Observation 
Id: er-status
Title: "Estrogen receptor status"
Description: "Represents if the estrogen receptor status is positive"
* insert PublicationProfileRuleset
* code = SCT#445028008 "Status of estrogen receptors of neoplasm (observable entity)"
* subject only Reference(BreastCancerPatient)
* value[x] only CodeableConcept 
* value[x] from EstrogenStatusVS (required)
* value[x] MS
* effectiveDateTime MS

Instance: ERStatusPatient147
InstanceOf: ERStatus
Description: "Example of the erstrogen receptor status in a patient with breast cancer"
* status = ObservationStatusCS#final
* value[x] = SCT#416237000

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
* value[x] = NullFlavor#UNK "unknown"

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
* value[x] = SCT#416237000 "Procedure not done"


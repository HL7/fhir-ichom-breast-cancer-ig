
Instance: HistotypePatient147
InstanceOf: Histotype
Description: "Example of the histological type of the breast cancer tumor"
* value[x] = SCT#722524005

Instance: GeneticMutationPatient147
InstanceOf: GeneticMutation
Description: "Example of a genetic mutation predisposing breast cancer"
* value[x] = SCT#445180002 

Instance: TumorGradingPatient147
InstanceOf: TumorGrading
Description: "Example of the tumor and invasion grade of a breast cancer tumor"
* component[InvasionGrade].value[x] = SCT#399415002  
SCT#399415002 grade 1

Instance: LymphNodesPatient147
InstanceOf: LymphNodes
Description: "Example of the number of resected lymph nodes and the number of involved lymph nodes"
* component[LymphNodesResected].value[x] = 11
* component[LymphNodesInvolved].value[x] = 28

Instance: ERStatusPatient147
InstanceOf: ERStatus
Description: "Example of the erstrogen receptor status in a patient with breast cancer"
* value[x] = SCT#416237000

Instance: PRStatusPatient147
InstanceOf: PRStatus
Description: "Example of the progesterone receptor status in a patient with breast cancer"
* value[x] = NullFlavor#UNK "unknown"

Instance: HERStatusPatient147
InstanceOf: HERStatus
Description: "Example of the HER2 receptor status in a patient with breast cancer"
* value[x] = SCT#416237000 "Procedure not done"


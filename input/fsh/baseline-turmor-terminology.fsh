CodeSystem: HistologicalTypeCodeSystem
Id: histological-type-codesystem
Title: "Histological Type"
Description: "Histologic type of the tumor"
* ^url = http://connect.ichom.org/fhir/CodeSystem/histological-type
* ^caseSensitive = true

* #0 "Ductal carcinoma in situ"
* #1 "Invasive ductal carcinoma"
* #2 "Invasive lobular carcinoma"
* #3 "Other"
* #999 "unknown"

ValueSet: HistologicalType
Id: historical-type
Title: "Historical Type"
Description: "Histologic type of the tumor"
* include codes from system HistologicalTypeCodeSystem


CodeSystem: GeneticMutationCodeSystem
Id: genetic-mutation-codesystem
Title: "Genetic Mutation"
Description: "A genetic mutation predisposing the patient to breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/genetic-mutation
* ^caseSensitive = true

* #0 "No mutation"
* #1 "BRCA 1"
* #2 "BRCA 2"
* #3 "Other mutation"
* #4 "Not tested"

ValueSet: GeneticMutation
Id: genetic-mutation
Title: "Genetic Mutation"
Description: "A genetic mutation predisposing the patient to breast cancer"
* include codes from system GeneticMutationCodeSystem


CodeSystem: InvasionGradeCodeSystem
Id: invasion-grade-codesystem
Title: "Invasion Grade CodeSystem"
Description: "Grade of invasive component of tumor"
* ^url = http://connect.ichom.org/fhir/CodeSystem/invasion-grade
* ^caseSensitive = true

* #0 "Grade 1"
* #1 "Grade 2"
* #2 "Grade 3"
* #3 "Not reported"

ValueSet: InvasionGrade
Id: invasion-grade
Title: "Invasion Grade"
Description: "Grade of invasive component of tumor"
* include codes from system InvasionGradeCodeSystem


CodeSystem: TumorGradeCodeSystem
Id: tumor-grade-codesystem
Title: "Tumor Grade Code System"
Description: "Tumor grade of DCIS component of tumor"
* ^url = http://connect.ichom.org/fhir/CodeSystem/tumor-grade
* ^caseSensitive = true

* #0 "Low"
* #1 "Intermediate"
* #2 "High"
* #3 "Not reported"

ValueSet: TumorGrade
Id: tumor-grade
Title: "Tumor Grade"
Description: "Tumor grade of DCIS component of tumor"
* include codes from system TumorGradeCodeSystem


CodeSystem: ClinicalTumorStageCodeSystem
Id: clinical-tumor-stage-codesystem
Title: "Clinical Tumor Stage Code System"
Description: "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/clinical-tumor-stage
* ^caseSensitive = true

* #0 "cTX"
* #1 "cT0"
* #2 "cTis"
* #3 "cT1"
* #4 "cT2"
* #5 "cT3"
* #6 "cT4"
* #999 "Unknown"

ValueSet: ClinicalTumorStage
Id: clinical-tumor-stage
Title: "Clinical Tumor Stage"
Description: "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
* include codes from system ClinicalTumorStageCodeSystem


CodeSystem: ClinicalNodalStageCodeSystem
Id: clinical-nodal-stage-codesystem
Title: "Clinical Nodal Stage Code System"
Description: "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/clinical-nodal-stage
* ^caseSensitive = true

* #0 "cNX"
* #1 "cN0"
* #2 "cN1"
* #3 "cN2"
* #4 "cN3"
* #999 "Unknown"

ValueSet: ClinicalNodalStage
Id: clinical-nodal-stage
Title: "Clinical Nodal Stage"
Description: "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
* include codes from system ClinicalTumorStageCodeSystem


CodeSystem: ClinicalDistantMetastasisCodeSystem
Id: clinical-distant-metastasis-codesystem
Title: "Clinical Distant Metastasis Code System"
Description: "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/clinical-distant-metastasis
* ^caseSensitive = true

* #0 "cMX"
* #1 "cM0"
* #2 "cM1"
* #999 "Unknown"

ValueSet: ClinicalDistantMetastasis
Id: clinical-distant-metastasis
Title: "Clinical Distant Metastasis"
Description: "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
* include codes from system ClinicalDistantMetastasisCodeSystem


CodeSystem: PathologicalTumorStageCodeSystem
Id: pathological-tumor-stage-codesystem
Title: "Pathological Tumor Stage Code System"
Description: "Pathological tumor stage (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/pathological-tumor-stage
* ^caseSensitive = true

* #0 "pTX"
* #1 "pT0"
* #2 "pTis"
* #3 "pT1"
* #4 "pT2"
* #5 "pT3"
* #6 "pT4"
* #999 "Unknown"

ValueSet: PathologicalTumorStage
Id: pathological-tumor-stage
Title: "Pathological Tumor Stage"
Description: "Pathological tumor stage (per AJCC 5th - 7th Ed.)"
* include codes from system PathologicalTumorStageCodeSystem


CodeSystem: PathologicalNodalStageCodeSystem
Id: pathological-nodal-stage-codesystem
Title: "Pathological Nodal Stage Code System"
Description: "Pathological nodal stage (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/pathological-nodal-stage
* ^caseSensitive = true

* #0 "pNX"
* #1 "pN0"
* #2 "pN1"
* #3 "pN2"
* #4 "pN3"
* #999 "Unknown"

ValueSet: PathologicalNodalStage
Id: pathological-nodal-stage
Title: "Pathological Nodal Stage"
Description: "Pathological nodal stage (per AJCC 5th - 7th Ed.)"
* include codes from system PathologicalNodalStageCodeSystem


CodeSystem: PathologicalDistantMetastasisCodeSystem
Id: pathological-distant-metastasis-codesystem
Title: "Pathological Distant Metastasis Code System"
Description: "Pathological distant metastasis (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/pathological-distant-metastasis
* ^caseSensitive = true

* #0 "pMx"
* #1 "pM0"
* #2 "pM1"
* #999 "Unknown"

ValueSet: PathologicalDistantMetastasis
Id: pathological-distant-metastasis
Title: "Pathological Distant Metastasis"
Description: "Pathological distant metastasis (per AJCC 5th - 7th Ed.)"
* include codes from system PathologicalDistantMetastasisCodeSystem


CodeSystem: ReceptorStatusCodeSystem
Id: receptor-status-positive-codesystem
Title: "Receptor Status Positive Code System"
Description: "Estrogen/progesterone receptor status"
* ^url = http://connect.ichom.org/fhir/CodeSystem/receptor-status
* ^caseSensitive = true

* #0 "No"
* #1 "Yes"
* #2 "Not performed"
* #999 "Unkown"

ValueSet: ReceptorStatus
Id: receptor-status-positive
Description: "Estrogen/progesterone receptor status"
* include codes from system ReceptorStatusCodeSystem


CodeSystem: HER2ReceptorStatusCodeSystem
Id: her2-receptor-status-codesystem
Title: "HER2 Receptor Status Code System"
Description: "HER2 receptor status"
* ^url = http://connect.ichom.org/fhir/CodeSystem/her2-receptor-status
* ^caseSensitive = true

* #0 "Negative"
* #1 "Positive"
* #2 "Equivocal"
* #3 "HER2 receptor status not tested"

ValueSet: HER2ReceptorStatus
Id: her2-receptor-status
Title: "HER2 Receptor Status"
Description: "HER2 receptor status"
* include codes from system HER2ReceptorStatusCodeSystem
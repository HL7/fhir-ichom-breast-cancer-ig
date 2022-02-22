Instance: DebugSACQComorbiditiesBundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to SACQComorbidities"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/SACQPatientComorbidityCodeSystem"
  * request.method = #PUT
  * resource = SACQPatientComorbidityCodeSystem

* entry[+]
  * request.url = "ValueSet/SACQ-patient-comorbidity-history"
  * request.method = #PUT
  * resource = SACQPatientComorbidityHistory

* entry[+]
  * request.url = "Questionnaire/SACQComorbidities"
  * request.method = #PUT
  * resource = SACQComorbidities

Instance: DebugDemographcisBundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to demographics"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/EducationLevel"
  * request.method = #PUT
  * resource = EducationLevelCodeSystem

* entry[+]
  * request.url = "CodeSystem/RelationshipStatusCodeSystem"
  * request.method = #PUT
  * resource = RelationshipStatusCodeSystem

* entry[+]
  * request.url = "CodeSystem/MenopausalStatusCodeSystem"
  * request.method = #PUT
  * resource = MenopausalStatusCodeSystem

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSex"
  * request.method = #PUT
  * resource = DemographicFactorsSex
  
* entry[+]
  * request.url = "ValueSet/DemographicCountry"
  * request.method = #PUT
  * resource = DemographicCountry
  
* entry[+]
  * request.url = "ValueSet/EducationLevel"
  * request.method = #PUT
  * resource = EducationLevel
  
* entry[+]
  * request.url = "ValueSet/MenopausalStatus"
  * request.method = #PUT
  * resource = MenopausalStatus
  
* entry[+]
  * request.url = "ValueSet/RelationshipStatus"
  * request.method = #PUT
  * resource = RelationshipStatus

* entry[+]
  * request.url = "Questionnaire/Demographics"
  * request.method = #PUT
  * resource = Demographics

Instance: DebugBaselineTumorFactorsBundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to BaselineTumorFactors"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/HistologicalTypeCodeSystem"
  * request.method = #PUT
  * resource = HistologicalTypeCodeSystem

* entry[+]
  * request.url = "CodeSystem/GeneticMutationCodeSystem"
  * request.method = #PUT
  * resource = GeneticMutationCodeSystem

* entry[+]
  * request.url = "CodeSystem/InvasionGradeCodeSystem"
  * request.method = #PUT
  * resource = InvasionGradeCodeSystem

* entry[+]
  * request.url = "CodeSystem/TumorGradeCodeSystem"
  * request.method = #PUT
  * resource = TumorGradeCodeSystem

* entry[+]
  * request.url = "CodeSystem/ClinicalTumorStageCodeSystem"
  * request.method = #PUT
  * resource = ClinicalTumorStageCodeSystem

* entry[+]
  * request.url = "CodeSystem/ClinicalNodalStageCodeSystem"
  * request.method = #PUT
  * resource = ClinicalNodalStageCodeSystem

* entry[+]
  * request.url = "CodeSystem/ClinicalDistantMetastasisCodeSystem"
  * request.method = #PUT
  * resource = ClinicalDistantMetastasisCodeSystem

* entry[+]
  * request.url = "CodeSystem/PathologicalTumorStageCodeSystem"
  * request.method = #PUT
  * resource = PathologicalTumorStageCodeSystem

* entry[+]
  * request.url = "CodeSystem/PathologicalNodalStageCodeSystem"
  * request.method = #PUT
  * resource = PathologicalNodalStageCodeSystem

* entry[+]
  * request.url = "CodeSystem/PathologicalDistantMetastasisCodeSystem"
  * request.method = #PUT
  * resource = PathologicalDistantMetastasisCodeSystem

* entry[+]
  * request.url = "CodeSystem/HER2ReceptorStatusCodeSystem"
  * request.method = #PUT
  * resource = HER2ReceptorStatusCodeSystem

* entry[+]
  * request.url = "CodeSystem/ReceptorStatusCodeSystem"
  * request.method = #PUT
  * resource = ReceptorStatusCodeSystem

* entry[+]
  * request.url = "ValueSet/HistologicalType"
  * request.method = #PUT
  * resource = HistologicalType

* entry[+]
  * request.url = "ValueSet/GeneticMutation"
  * request.method = #PUT
  * resource = GeneticMutation

* entry[+]
  * request.url = "ValueSet/InvasionGrade"
  * request.method = #PUT
  * resource = InvasionGrade

* entry[+]
  * request.url = "ValueSet/TumorGrade"
  * request.method = #PUT
  * resource = TumorGrade

* entry[+]
  * request.url = "ValueSet/ClinicalTumorStage"
  * request.method = #PUT
  * resource = ClinicalTumorStage

* entry[+]
  * request.url = "ValueSet/ClinicalNodalStage"
  * request.method = #PUT
  * resource = ClinicalNodalStage

* entry[+]
  * request.url = "ValueSet/ClinicalDistantMetastasis"
  * request.method = #PUT
  * resource = ClinicalDistantMetastasis

* entry[+]
  * request.url = "ValueSet/PathologicalTumorStage"
  * request.method = #PUT
  * resource = PathologicalTumorStage

* entry[+]
  * request.url = "ValueSet/PathologicalNodalStage"
  * request.method = #PUT
  * resource = PathologicalNodalStage

* entry[+]
  * request.url = "ValueSet/PathologicalDistantMetastasis"
  * request.method = #PUT
  * resource = PathologicalDistantMetastasis

* entry[+]
  * request.url = "ValueSet/ReceptorStatus"
  * request.method = #PUT
  * resource = ReceptorStatus

* entry[+]
  * request.url = "ValueSet/HER2ReceptorStatus"
  * request.method = #PUT
  * resource = HER2ReceptorStatus

* entry[+]
  * request.url = "Questionnaire/BaselineTumorFactors"
  * request.method = #PUT
  * resource = BaselineTumorFactors
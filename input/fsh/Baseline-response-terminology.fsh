Alias: $FHIRMS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

ValueSet: DemographicFactorsSex
Id: DemographicFactorsSex
Title: "Sex of patient"
Description: "Codes used in sex of patient"
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: DemographicCountry
Id: DemographicCountry
Title: "Country"
Description: "Country (e.g. of residence)"
* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3

CodeSystem: RelationshipStatusCodeSystem
Id: RelationshipStatusCodeSystem
Title: "RelationshipStatusCodeSystem"
Description: "Codes used in ICHOM relationship status that are not available yet in standard terminologies"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/relationship-status
* ^caseSensitive = true

* #not-married-partnered "Not married/partnered"
* #married-partnered "Married/partnered"
* #divorced-separated "Divorced/separated"
* #unknown "unknown"

ValueSet: RelationshipStatus
Id: RelationshipStatus
Title: "RelationshipStatus"
Description: "Relationship Status"
* RelationshipStatusCodeSystem#not-married-partnered
* RelationshipStatusCodeSystem#married-partnered
* RelationshipStatusCodeSystem#divorced-separated
* $FHIRMS#W "Widowed"
* RelationshipStatusCodeSystem#unknown

CodeSystem: EORTCQLQCodeSystem
Id: EORTCQLQCodeSystem
Title: "Codes used in EORTC-QLQ questionnaire response"
Description: "Codes used in the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* ^url = http://connect.ichom.org/fhir/CodeSystem/EORTC-QLQ
* ^caseSensitive = true

* #1 "Not at all"
* #2 "A little"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: EORTCQLQValueSet
Id: EORTCQLQValueSet
Title: "Values used in EORTC-QLQ questionnaire response"
Description: "Valueset used in the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* ^version  = 0.0.1
* include codes from system EORTCQLQCodeSystem


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
* ^version  = 0.0.1
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
* ^version  = 0.0.1
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
* ^version  = 0.0.1
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
* ^version  = 0.0.1
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
* ^version  = 0.0.1
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
* ^version  = 0.0.1
* include codes from system PathologicalDistantMetastasisCodeSystem

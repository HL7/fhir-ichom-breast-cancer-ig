// DEMOGRAPHICS CodeSystems

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

// BASELINE CLINICAL FACTORS CodeSystems
Alias: $SCT = http://snomed.info/sct // standard set is published separately for re-use in other IGs

CodeSystem: SACQPatientComorbidityCodeSystem
Id: SACQPatientComorbidityCodeSystem
Title: "SACQ patient's comorbidity history"
Description: "Codes used in SACQ patient's comorbidity history that are not available yet in standard terminologies"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history
* ^caseSensitive = true

* #no-other-diseases "No other diseases known"
* #cancer-within-5yrs "Cancer/other cancer (within last 5 years)"
* #other-medical-problems "Other medical problems"
  "Other medical problems affecting the patient, outside of those that have been asked explicitly"

ValueSet: SACQPatientComorbidityHistory
Id: SACQ-patient-comorbidity-history
Title: "SACQ Patient's comorbidity history"
Description: "Patient's documented history of comorbidities"
* SACQPatientComorbidityCodeSystem#no-other-diseases
* $SCT#56265001 "Heart disease (For example, angina, heart attack, or heart failure)"
* $SCT#38341003 "High blood pressure"
* $SCT#19829001 "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* $SCT#73211009 "Diabetes"
* $SCT#429040005 "Ulcer"
* $SCT#90708001 "Kidney disease"
* $SCT#235856003 "Liver disease"
* $SCT#271737000 "Anemia"
* SACQPatientComorbidityCodeSystem#cancer-within-5yrs
* $SCT#35489007 "Depression"
* $SCT#396275006 "Osteoarthritis"
* $SCT#161891005 "Back pain"
* $SCT#69896004 "Rheumatoid arthritis"
* SACQPatientComorbidityCodeSystem#other-medical-problems


// BASELINE TUMOR FACTORS CodeSystems
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


// DEGREE OF HEALTH - EORTC-QLQ CodeSystem
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

// DEGREE OF HEALTH - BreastQ Codesystem
CodeSystem: BreastQCodeSystem
Id: BreastQCodeSystem
Title: "Patient Reported Outcomes Instrument response (BreastQ)"
Description: "Codes used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q
* ^caseSensitive = true

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: BreastQValueSet 
Id: BreastQValueSet
Title: "Patient Reported Outcomes Instrument response (BreastQ)"
Description: "Valueset used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^version  = 0.0.1
* include codes from system BreastQCodeSystem

CodeSystem: BreastQSurgeryCodeSystem
Id: BreastQSurgeryCodeSystem
Title: "Type of surgery for BreastQ"
Description: "Type of surgery of the patient in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q-surgery
* ^caseSensitive = true

* #0 "Breast conserving surgery"
* #1 "Breast conserving surgery with mammoplasty" 
* #2 "Mastectomy without immediate reconstruction"
* #3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* #4 "Mastectomy with immediate reconstruction (autologous)"
* #5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"

ValueSet: BreastQSurgeryValueSet 
Id: BreastQSurgeryValueSet
Title: "Type of surgery for the Patient Reported Outcomes Instrument (BreastQ)"
Description: "Type of surgery of the patient in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^version  = 0.0.1
* include codes from system BreastQSurgeryCodeSystem


// DEGREE OF HEALTH - FACT-ES CodeSystem
CodeSystem: FACTESCodeSystem
Id: FACTESCodeSystem
Title: "Codesystem of FACT-ES questionnaire"
Description: "Codes used in the Functional Assessment of Cancer Therapy questionnare"
* ^url = http://connect.ichom.org/fhir/CodeSystem/FACT-ES
* ^caseSensitive = true

* #0 "Not at all"
* #1 "A little"
* #2 "Somewhat"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: FACTESValueSet
Id: FACTESValueSet
Title: "Valueset of FACT-ES questionnaire"
Description: "Valueset used in the Functional Assessment of Cancer Therapy questionnare"
* ^version  = 0.0.1
* include codes from system FACTESCodeSystem
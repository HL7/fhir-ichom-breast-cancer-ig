// DEMOGRAPHICS CodeSystems

Alias: $FHIRMS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

ValueSet: DemographicFactorsSex
Id: DemographicFactorsSex
Title: "Sex of patient"
Description: "Codes used in sex of patient"
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: DemographicFactorsCountry
Id: DemographicFactorsCountry
Title: "Country"
Description: "Country (e.g. of residence)"
* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3

ValueSet: DemographicFactorsEthnicity
Id: DemographicFactorsEthnicity
Title: "Ethnicity"
Description: "Codes used in ethnicity of patient"
* include codes from system http://terminology.hl7.org/CodeSystem/v3-Ethnicity

ValueSet: DemographicFactorsRace
Id: DemographicFactorsRace
Title: "Race"
Description: "Codes used in race of patient"
* include codes from  system http://terminology.hl7.org/CodeSystem/v3-Race


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
Id: SACQPatientComorbidityHistory
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


// TREATMENT VARIABLES
Alias: $treatment = http://connect.ichom.org/fhir/CodeSystem/treatment-variables

//TreatmentType
CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient undertook"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/treatment-variables
* ^caseSensitive = true

* #0 "No treatment"
* #1 "Surgery"
* #2 "Surgery to axilla"
* #3 "Delayed reconstruction"
* #4 "Radiotherapy"
* #5 "Chemotherapy"
* #6 "Hormonal therapy"
* #7 "Targeted therapy"
* #8 "Best supportive care"
* #999 "Unknown"

ValueSet: TreatmentTypeValueSet
Id: TreatmentTypeValueSet
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient undertook"
* include codes from system TreatmentTypesCodeSystem

//Surgery Type
CodeSystem: BreastSurgeryTypesCodeSystem
Id: BreastSurgeryTypesCodeSystem
Title: "Breast surgery types"
Description: "Codes indicating the kind of surgery a patient undertook"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/breast-surgery-types
* ^caseSensitive = true

* #0 "Breast conserving surgery (BCS)"
* #1 "BCS with mammoplasty"
* #2 "Mastectomy without immediate reconstruction"
* #3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* #4 "Mastectomy with immediate reconstruction (autologous)"
* #5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
* #999 "Unknown"

ValueSet: BreastSurgeryTypeValueSet
Id: BreastSurgeryTypeValueSet
Title: "BreastSurgeryTypes"
Description: "Codes indicating the kind of surgery a patient undertook"
* include codes from system BreastSurgeryTypesCodeSystem


// Axilla Surgery
CodeSystem: SurgeryAxillaCodeSystem
Id: SurgeryAxillaCodeSystem
Title: "Surgery Axilla Code System"
Description: "Codes indicating the kind of surgery axilla was performed"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/surgery-axilla
* ^caseSensitive = true

* #0 "Sentinel lymph node biopsy"
* #1 "Axillary sampling"
* #2 "Axillary clearance"
* #999 "Unknown"

ValueSet: SurgeryAxillaTypeValueSet
Id: SurgeryAxillaTypeValueSet
Title: "Surgery Axilla Types"
Description: "Codes indicating the kind of axilla surgery was performed"
* include codes from system SurgeryAxillaCodeSystem


// Reoperations
CodeSystem: ReoperationsCodeSystem
Id: ReoperationsCodeSystem
Title: "Reoperations Code System"
Description: "Codes indicating if the patient received a reoperation"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Reoperations
* ^caseSensitive = true
* #0 "No"
* #1 "Breast reconstruction surgery"
* #2 "Mastectomy"
* #3 "Axillary dissection"
* #999 "Unknown"

ValueSet: ReoperationsValueSet
Id: ReoperationsValueSet
Title: "Reoperations ValueSet"
Description: "Codes indicating if the patient received a reoperation"
* include codes from system ReoperationsCodeSystem

// DISUTILITY OF CARE
// Involved margins reoperation
CodeSystem: InvolvedMarginsCodeSystem
Id: InvolvedMarginsCodeSystem
Title: "Involved margins Code System"
Description: "Codes indicating if the patient received surgery due to involved margins"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Involved-Margins 
* ^caseSensitive = true
* #0 "No reoperation due to involved margins" 
* #1 "Breast conserving surgery (BCS)"
* #2 "BCS with mammoplasty"
* #3 "Mastectomy without immediate reconstruction"
* #4 "Mastectomy with immediate reconstruction (direct/staged implant)"
* #5 "Mastectomy with immediate reconstruction (autologous)"
* #6 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
* #999 "Unknown"

ValueSet: InvolvedMarginsValueSet
Id: InvolvedMarginsValueSet
Title: "Involved margins ValueSet"
Description: "Codes indicating if the patient received surgery due to involved margins"
* include codes from system InvolvedMarginsCodeSystem


// Complication impact
CodeSystem: ComplicationImpactCodeSystem
Id: ComplicationImpactCodeSystem
Title: "Complication impact Code System"
Description: "Codes indicating if the impact of complications"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Complication-Impact
* ^caseSensitive = true
* #0 "No complication"
* #1 "Complication requiring intervention (surgical, radiological, endoscopic)"
* #2 "Complication leading to prolonged hospitalization ( >14days)"
* #3 "Complication leading to unplanned readmission"
* #4 "Complication leading to ICU admission"
* #5 "Complication leading to discontinuing of treatment"
* #6 "Complication leading to reduced dosing"
* #7 "Complication leading to death"
* #8 "Complication, but did not result in any of the abovementioned"
* #999 "Unknown"

ValueSet: ComplicationImpactValueSet
Id: ComplicationImpactValueSet
Title: "Complication impact ValueSet"
Description: "Codes indicating if the impact of complications"
* include codes from system ComplicationImpactCodeSystem


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


// Survival and disease control
CodeSystem: RecurrenceCodeSystem
Id: RecurrenceCodeSystem 
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"
* ^url = http://connect.ichom.org/fhir/CodeSystem/recurrence
* ^caseSensitive = true

* #0 "No"
* #1 "Yes, local recurrence"
* #2 "Yes, regional recurrence" 
* #3 "Yes, distant recurrence"
* #999 "Unknown"

ValueSet: RecurrenceValueSet
Id: RecurrenceValueSet
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"
* ^version  = 0.0.1
* include codes from system RecurrenceCodeSystem



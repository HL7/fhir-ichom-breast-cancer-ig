Alias: $FHIRMS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $SCT = http://snomed.info/sct // standard set is published separately for re-use in other IGs

// DEMOGRAPHICS CodeSystems
ValueSet: DemographicFactorsSexAtBirth
Id: DemographicFactorsSexAtBirth
Title: "The patient's sex at birth"
Description: "Valueset of the patient's sex at birth"
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: DemographicFactorsCountry
Id: DemographicFactorsCountry
Title: "Country of residence of patient"
Description: "Valueset of the country (e.g. of residence) of a patient"
* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3

ValueSet: DemographicFactorsEthnicity
Id: DemographicFactorsEthnicity
Title: "Ethnicity of patient"
Description: "Valueset of the ethnicity of a patient"
* include codes from valueset http://terminology.hl7.org/ValueSet/v3-Ethnicity
// this valueset is not rendering in the SDC form 

ValueSet: DemographicFactorsRace
Id: DemographicFactorsRace
Title: "Race of patient"
Description: "Valueset of the race of a patient"
* include codes from  system http://terminology.hl7.org/CodeSystem/v3-Race
// this valueset is not rendering in the SDC form 

// BASELINE CLINICAL FACTORS CodeSystems
CodeSystem: SACQPatientComorbidityCodeSystem
Id: SACQPatientComorbidityCodeSystem
Title: "SACQ patient's comorbidity history"
Description: "Codes used in SACQ patient's comorbidity history that are not available yet in standard terminologies"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history
* ^caseSensitive = true

* #0  "I have no other diseases"
* #1  "Heart disease (For example, angina, heart attack, or heart failure)"
* #2  "High blood pressure"
* #3  "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* #4  "Diabetes"
* #5  "Ulcer or stomach disease"
* #6  "Kidney disease"
* #7  "Liver disease"
* #8  "Anemia or other blood disease"
* #9  "Cancer/Other cancer (within the last 5 years)"
* #10 "Depression"
* #11 "Osteoarthritis, degenerative arthritis"
* #12 "Back pain"
* #13 "Rheumatoid arthritis"
* #14 "Other medical problems"

ValueSet: SACQPatientComorbidityHistory
Id: SACQPatientComorbidityHistory
Title: "SACQ Patient's comorbidity history"
Description: "Patient's documented history of comorbidities"
* include codes from system SACQPatientComorbidityCodeSystem

// TREATMENT VARIABLES
//TreatmentType
CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient underwent"
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
Description: "Valueset of the kind of treatment a patient underwent"
* include codes from system TreatmentTypesCodeSystem

// Breast Surgery Type
CodeSystem: BreastSurgeryTypesCodeSystem
Id: BreastSurgeryTypesCodeSystem
Title: "Breast surgery Types"
Description: "Codes indicating the types of breast surgery a patient underwent"
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
Title: "Types of breast surgery"
Description: "Codes indicating the types of breast surgery a patient underwent"
* include codes from system BreastSurgeryTypesCodeSystem

// DEGREE OF HEALTH - EORTC-QLQ CodeSystem
CodeSystem: EORTCQLQCodeSystem
Id: EORTCQLQCodeSystem
Title: "EORTC-QLQ questionnaire"
Description: "Codes used in the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* ^url = http://connect.ichom.org/fhir/CodeSystem/EORTC-QLQ
* ^caseSensitive = true

* #1 "Not at all"
* #2 "A little"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: EORTCQLQValueSet
Id: EORTCQLQValueSet
Title: "EORTC-QLQ questionnaire"
Description: "Valueset of the European Organization for Research and Treatment of Cancer Quality-of-Life Questionnaire"
* include EORTCQLQCodeSystem#1 "Not at all"
* include EORTCQLQCodeSystem#2 "A little"
* include EORTCQLQCodeSystem#3 "Quite a bit"
* include EORTCQLQCodeSystem#4 "Very much"

// DEGREE OF HEALTH - BreastQ Codesystem
CodeSystem: BreastQCodeSystem
Id: BreastQCodeSystem
Title: "BreastQ response"
Description: "Codes used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q
* ^caseSensitive = true

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: BreastQValueSet 
Id: BreastQValueSet
Title: "BreastQ response"
Description: "Valueset used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^version  = 0.0.1
* include BreastQCodeSystem#1 "Very dissatisfied"
* include BreastQCodeSystem#2 "Somewhat dissatisfied"
* include BreastQCodeSystem#3 "Somewhat satisfied"
* include BreastQCodeSystem#4 "Very satisfied"

// DEGREE OF HEALTH - FACT-ES CodeSystem
CodeSystem: FACTESCodeSystem
Id: FACTESCodeSystem
Title: "FACT-ES questionnaire"
Description: "Codes used in the Functional Assessment of Cancer Therapy questionnare"
* ^url = http://connect.ichom.org/fhir/CodeSystem/FACT-ES
* ^caseSensitive = true

* #1 "Not at all"
* #2 "A little"
* #3 "Somewhat"
* #4 "Quite a bit"
* #5 "Very much"

ValueSet: FACTESValueSet
Id: FACTESValueSet
Title: "FACT-ES questionnaire"
Description: "Valueset of the Functional Assessment of Cancer Therapy questionnare"
* ^version  = 0.0.1
* include FACTESCodeSystem#1 "Not at all"
* include FACTESCodeSystem#2 "A little"
* include FACTESCodeSystem#3 "Somewhat"
* include FACTESCodeSystem#4 "Quite a bit"
* include FACTESCodeSystem#5 "Very much"
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


// BASELINE TUMOR FACTORS CodeSystems
CodeSystem: ClinicalTumorStageCodeSystem
Id: ClinicalTumorStageCodeSystem
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
Id: ClinicalTumorStage
Title: "Clinical Tumor Stage"
Description: "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
* ^version  = 0.0.1
* include codes from system ClinicalTumorStageCodeSystem


CodeSystem: ClinicalNodalStageCodeSystem
Id: ClinicalNodalStageCodeSystem
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
Id: ClinicalNodalStage
Title: "Clinical Nodal Stage"
Description: "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
* ^version  = 0.0.1
* include codes from system ClinicalTumorStageCodeSystem


CodeSystem: ClinicalDistantMetastasisCodeSystem
Id: ClinicalDistantMetastasisCodeSystem
Title: "Clinical Distant Metastasis Code System"
Description: "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
* ^url = http://connect.ichom.org/fhir/CodeSystem/clinical-distant-metastasis
* ^caseSensitive = true

* #0 "cMX"
* #1 "cM0"
* #2 "cM1"
* #999 "Unknown"

ValueSet: ClinicalDistantMetastasis
Id: ClinicalDistantMetastasis
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



// Axilla Clearance -- General anwers
CodeSystem: BooleanExtendedCodeSystem
Id: BooleanExtendedCodeSystem
Title: "Boolean extended Code System"
Description: "Extended Code System of boolean"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Boolean-Extended
* ^caseSensitive = true

* #0 "No"
* #1 "Yes"
* #999 "Unknown"

ValueSet: BooleanExtendedValueSet
Id: BooleanExtendedValueSet
Title: "Boolean extended Code System"
Description: "Extended Code System of boolean"
* include codes from system BooleanExtendedCodeSystem


// Delayed Reconstruction
CodeSystem: DelayedReconstructionCodeSystem
Id: DelayedReconstructionCodeSystem
Title: "Delayed reconstruction Code System"
Description: "Codes indicating type of delayed reconstruction"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Delayed-Reconstruction
* ^caseSensitive = true
* #0 "Delayed reconstruction  (direct/staged implant)"
* #1 "Delayed reconstruction ( autologous)"
* #2 "Delayed reconstruction  (implant/autologous)"
* #999 "Unknown"

ValueSet: DelayedReconstructionValueSet
Id: DelayedReconstructionValueSet
Title: "Delayed reconstruction Code System"
Description:  "Codes indicating type of delayed reconstruction"
* include codes from system DelayedReconstructionCodeSystem


// Therapy Intent
CodeSystem: TherapyIntentCodeSystem
Id:  TherapyIntentCodeSystem
Title: "Intent of Therapy Code System"
Description: "Codes indicating the intent of Therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Therapy-Intent
* ^caseSensitive = true
* #0 "Neoadjuvant"
* #1 "Adjuvant"
* #999 "Unknown"

ValueSet: TherapyIntentValueSet
Id: TherapyIntentValueSet
Title: "Intent of Therapy ValueSet"
Description: "Codes indicating the intent of Therapy"
* include codes from system TherapyIntentCodeSystem


// Location of radiotherapy
CodeSystem: RadiotherapyLocationCodeSystem
Id: RadiotherapyLocationCodeSystem
Title: "Location of radiotherapy Code System"
Description: "Codes indicating the location of radiotherapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Radiotherapy-location
* ^caseSensitive = true

* #0 "Breast"
* #1 "Chest wall"
* #2 "Axillary nodal irradiation"
* #3 "Supraclavicular irradiation"
* #4 "Internal mammary node irradiation"
* #5 "Tumor bed boost"
* #6 "Brain metastases"
* #7 "Bone metastases"
* #8 "Any metastatic site"
* #9 "Other"
* #999 "Unknown"

ValueSet: RadiotherapyLocationValueSet
Id: RadiotherapyLocationValueSet
Title: "Location of radiotherapy ValueSet"
Description: "Codes indicating the Location of radiotherapy"
* include codes from system RadiotherapyLocationCodeSystem


// ChemotherapyType
CodeSystem: ChemotherapyTypeCodeSystem
Id: ChemotherapyTypeCodeSystem
Title: "Type of chemotherapy Code System"
Description: "Codes indicating the type of chemotherapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Chemotherapy
* ^caseSensitive = true
* #0 "Anthracycline containing"
* #1 "Taxane containing"
* #2 "Platinum containing"
* #3 "Other"
* #999 "Unknown"

ValueSet: ChemotherapyTypeValueSet
Id: ChemotherapyTypeValueSet
Title: "Type of chemotherapy ValueSet"
Description: "Codes indicating the type of chemotherapy"
* include codes from system ChemotherapyTypeCodeSystem


// HormonalTherapyType
CodeSystem: HormonalTherapyTypeCodeSystem
Id: HormonalTherapyTypeCodeSystem
Title: "Hormonal therapy type Code System"
Description: "Codes indicating the type of hormonal therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Hormonal-Therapy
* ^caseSensitive = true
* #0 "Aromatase inhibitor"
* #1 "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
* #2 "Oophorectomy"
* #3 "LHRH agonist"
* #4 "Other"
* #999 "Unknown"

ValueSet: HormonalTherapyTypeValueSet
Id: HormonalTherapyTypeValueSet
Title: "Hormonal therapy type ValueSet"
Description: "Codes indicating the type of hormonal therapy"
* include codes from system HormonalTherapyTypeCodeSystem


// Targeted Therapy
CodeSystem: TargetedTherapyCodeSystem
Id: TargetedTherapyCodeSystem
Title: "Targeted Therapy Code System"
Description: "Codes indicating type of targeted therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Targeted-Therapy
* ^caseSensitive = true
* #0 "Her-2 targeting therapy"
* #1 "Other"
* #999 "Unknown"

ValueSet: TargetedTherapyValueSet
Id: TargetedTherapyValueSet
Title: "Targeted Therapy ValueSet"
Description: "Codes indicating type of targeted therapy"
* include codes from system TargetedTherapyCodeSystem


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


// Systemic therapy
CodeSystem: SystemicTherapyCodeSystem
Id: SystemicTherapyCodeSystem
Title: "Systemic Therapy Code System"
Description: "Codes indicating if the patient received systemic therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Systemic-Therapy
* ^caseSensitive = true
* #0 "no, never had systemic treatment"
* #1 "yes, but the treatment has stopped"
* #2 "yes, on chemotherapy"
* #3 "yes, on targeted therapy"
* #4 "yes, on hormone therapy"
* #999 "unkown"

ValueSet: SystemicTherapyValueSet
Id: SystemicTherapyValueSet
Title: "Systemic Therapy ValueSet"
Description: "Codes indicating if the patient received systemic therapy"
* include codes from system SystemicTherapyCodeSystem

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


//Complication type
CodeSystem: ComplicationTypeCodeSystem
Id: ComplicationTypeCodeSystem
Title: "Complication type Code System"
Description: "Codes indicating the type of complication"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Complication-type
* ^caseSensitive = true
* #0 "Wound infection"
* #1 "Seroma/hematoma"
* #2 "Hemorrhage"
* #3 "Mastectomy skin flap necrosis"
* #4 "Partial autologous graft loss"
* #5 "Total autologous graft loss"
* #6 "Loss of implant"
* #7 "Thromboembolic event"
* #8 "Nerve damage"
* #9 "Delay wound healing/dehiscence"
* #10 "Skin toxicity"
* #11 "Pneumonia"
* #12 "Neutropenic sepsis"
* #999  "Unknown"

ValueSet: ComplicationTypeValueSet
Id: ComplicationTypeValueSet
Title: "Complication type ValueSet"
Description: "Codes indicating the type of complication"
* include codes from system ComplicationTypeCodeSystem



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

CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Method of confirming recurrence"
Description: "Codes used describe the method to confirm recurrence of neoplasm"
* ^url = http://connect.ichom.org/fhir/CodeSystem/recurrence_method
* ^caseSensitive = true

* #0 "Radiological diagnosis"
* #1 "Histological diagnosis"
* #2 "Radiological and histological diagnosis"
* #999 "Unknown"

ValueSet: RecurrenceMethodValueSet
Id: RecurrenceMethodValueSet
Title: "Method of confirming recurrence"
Description: "Codes used describe the method to confirm recurrence of neoplasm"
* ^version  = 0.0.1
* include codes from system RecurrenceMethodCodeSystem
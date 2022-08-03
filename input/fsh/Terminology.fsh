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
// Remove this valueset once we have a snomed-supporting server since this is only a shell valueset

ValueSet: DemographicFactorsEthnicity
Id: DemographicFactorsEthnicity
Title: "Ethnicity of patient"
Description: "Valueset of the ethnicity of a patient"
* include codes from valueset EthnicityVS
// Remove this valueset once we have a snomed-supporting server since this is only a shell valueset. 

ValueSet: DemographicFactorsRace
Id: DemographicFactorsRace
Title: "Race of patient"
Description: "Valueset of the race of a patient"
* include codes from valueset RaceVS
// Remove this valueset once we have a snowmed-supporting server since this is only a shell valueset 

ValueSet: RelationshipStatusVS
Id: RelationshipStatusVS
Title: "Relationship status of patient"
Description: "Valueset of the relationship status of a patient"
* RelationshipStatusCS#U "unmarried"
* RelationshipStatusCS#M "Married"
* RelationshipStatusCS#D "Divorced"
* RelationshipStatusCS#W "Widowed"
* NullFlavor#UNK "unknown"

ValueSet: EducationLevelVS
Id: EducationLevelVS
Title: "Education level of patient"
Description: "Valueset of the education level of a patient"
* SCT#224294005 "No formal education (finding)"
* SCT#224295006 "Only received primary school education (finding)"
* SCT#224297003 "Educated to secondary school level (finding)"
* SCT#224299000 "Received higher education (finding)"

ValueSet: MenopausalStatusVS
Id: MenopausalStatusVS
Title: "Menopausal status of patient"
Description: "Valueset of the menopausal status of a patient"
* SCT#309606002 "Before menopause"
* SCT#307429007 "After menopause"
* NullFlavor#ASKU "Asked but unknown"

// Tumor Factors
ValueSet: HistologicalTypeVS
Id: HistologicalTypeVS
Title: "Histological type of the tumor"
Description: "Valueset of the histological types of tumors"
* SCT#399935008 "Ductal carcinoma in situ - category"
* SCT#373395001 "Invasive ductal carcinoma with an extensive intraductal component"
* SCT#722524005 "Primary invasive pleomorphic lobular carcinoma of breast"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: GermlineMutationVS
Id: GermlineMutationVS
Title: "Germline Mutation"
Description: "Valueset of the genetic mutation predisposing breast cancer"
* SCT#445180002 "Breast cancer genetic marker of susceptibility negative (finding)"
* SCT#412734009 "BRCA1 gene mutation positive (finding)"
* SCT#412738007 "BRCA2 gene mutation positive (finding)"
* NullFlavor#OTH "other"
* SCT#416237000 "Procedure not done"

ValueSet: GradingVS
Id: GradingVS
Title: "Grading of tumor"
Description: "Valueset of the grade of the tumor"
* SCT#399415002 "Low grade histologic differentiation (finding)"
* SCT#405986005 "Intermediate grade histologic differentiation (finding)"
* SCT#399611001 "High grade histologic differentiation (finding)"
* NullFlavor#NI "No information"

CodeSystem: TNMstages
Id: TNMstages
Title: "TNM stages for breast cancer"
Description: "Codes used in the TNM Staging System, which includes the extent of the tumor (T), extent of spread to the lymph nodes (N), and presence of metastasis (M)."
* ^url =  http://connect.ichom.org/fhir/CodeSystem/TNM-stages
* ^caseSensitive = true

* #cT "Clinical tumor stage"
* #cN "Clinical nodal stage"
* #cM "Clinical distant metastasis"
* #pT "Pathological tumor stage"
* #pN "Pathological nodal stage"
* #pM "Pathological distant metastasis"

ValueSet: TNMPrimaryTumorVS
Id: tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Value Set"
Description: "Valueset of the TNM stage for the T category, according to TNM staging rules"
* codes from system AJCC

ValueSet: TNMRegionalNodesVS
Id: tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Value Set"
Description: "Valueset of the TNM stage for the N category, according to TNM staging rules"
* include codes from system AJCC

ValueSet: TNMDistantMetastasesVS
Id: tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Value Set"
Description: "Valueset of the TNM stage for the M category, according to TNM staging rules"
* codes from system AJCC

ValueSet: EstrogenStatusVS
Id: EstrogenStatusVS
Title: "Estrogen receptor status"
Description: "Valueset of the Estrogen receptor status"
* SCT#373572006 "Clinical finding absent"
* SCT#416053008 "Estrogen receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: ProgesteroneStatusVS
Id: ProgesteroneStatusVS
Title: "Progesterone receptor status"
Description: "Valueset of the Progesterone receptor status"
* SCT#441118006 "Progesterone receptor negative neoplasm"
* SCT#416561008 "Progesterone receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: HER2ReceptorStatusVS
Id: HER2ReceptorStatusVS
Title: "HER2 receptor status"
Description: "Valueset of the HER2 receptor status"
* SCT#431396003 "Human epidermal growth factor 2 negative carcinoma of breast"
* SCT#427685000 "Human epidermal growth factor 2 positive carcinoma of breast"
* SCT#280414007 "Equivocal result"
* SCT#416237000 "Procedure not done"

//  BASELINE CLINICAL FACTORS 

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
* include SACQPatientComorbidityCodeSystem#0  "I have no other diseases"
* include SACQPatientComorbidityCodeSystem#1  "Heart disease (For example, angina, heart attack, or heart failure)"
* include SACQPatientComorbidityCodeSystem#2  "High blood pressure"
* include SACQPatientComorbidityCodeSystem#3  "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* include SACQPatientComorbidityCodeSystem#4  "Diabetes"
* include SACQPatientComorbidityCodeSystem#5  "Ulcer or stomach disease"
* include SACQPatientComorbidityCodeSystem#6  "Kidney disease"
* include SACQPatientComorbidityCodeSystem#7  "Liver disease"
* include SACQPatientComorbidityCodeSystem#8  "Anemia or other blood disease"
* include SACQPatientComorbidityCodeSystem#9  "Cancer/Other cancer (within the last 5 years)"
* include SACQPatientComorbidityCodeSystem#10 "Depression"
* include SACQPatientComorbidityCodeSystem#11 "Osteoarthritis, degenerative arthritis"
* include SACQPatientComorbidityCodeSystem#12 "Back pain"
* include SACQPatientComorbidityCodeSystem#13 "Rheumatoid arthritis"
* include SACQPatientComorbidityCodeSystem#14 "Other medical problems"

ValueSet: BodyWeightVS
Id: BodyWeightVS
Title: "Units of patient's body weight"
Description: "Valueset of the unit  of the patient's body weight"
* UCUM#kg "kg"
* UCUM#[lb_av] "[lb_av]"

ValueSet: LateralityNewCancerVS
Id: LateralityNewCancerVS
Title: "Laterality of new cancer"
Description: "Valueset of the laterality of new breast cancer"
* SCT#255208005 "Ipsilateral"
* SCT#255209002 "Contralateral"

ValueSet: LateralityVS
Id: LateralityVS
Title: "Laterality of breast cancer"
Description: "Valueset of the laterality of breast cancer"
* SCT#80248007 "Left breast structure"
* SCT#73056007 "Right breast structure"
* SCT#63762007 "Both breasts"


//  TREATMENT VARIABLES 

// TreatmentType \\
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

ValueSet: TreatmentTypeValueSet
Id: TreatmentTypeValueSet
Title: "Type of treatments"
Description: "Valueset of the kind of treatment a patient with breastcancer underwent"
* include TreatmentTypesCodeSystem#0 "No treatment"
* include TreatmentTypesCodeSystem#1 "Surgery"
* include TreatmentTypesCodeSystem#2 "Surgery to axilla"
* include TreatmentTypesCodeSystem#3 "Delayed reconstruction"
* include TreatmentTypesCodeSystem#4 "Radiotherapy"
* include TreatmentTypesCodeSystem#5 "Chemotherapy"
* include TreatmentTypesCodeSystem#6 "Hormonal therapy"
* include TreatmentTypesCodeSystem#7 "Targeted therapy"
* include TreatmentTypesCodeSystem#8 "Best supportive care"
* include NullFlavor#ASKU "asked but unknown"

ValueSet: RecommendedTreatmentTypeValueSet
Id: RecommendedTreatmentTypeValueSet
Title: "Recommended treatment types"
Description: "Valueset of the kind of treatment that the multidisciplinary team recommended"
* include SCT#387713003 "Surgical procedure"
* include SCT#69945500 "Operative procedure on axilla "
* include SCT#108290001 "Radiation oncology AND/OR radiotherapy "
* include SCT#385786002 "Chemotherapy care"
* include SCT#169413002 "Hormone therapy"
* include TreatmentTypesCodeSystem#7 "Targeted therapy"
* include TreatmentTypesCodeSystem#8 "Best supportive care"
* include TreatmentTypesCodeSystem#0 "No treatment"
* include TreatmentTypesCodeSystem#3 "Delayed reconstruction"
* include NullFlavor#ASKU "asked but unknown"

// Breast Surgery Type \\
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

ValueSet: BreastSurgeryTypeVS
Id: BreastSurgeryTypeVS
Title: "Types of breast surgery"
Description: "Valueset of the types of breast surgery a patient underwent"
* include BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* include BreastSurgeryTypesCodeSystem#1 "BCS with mammoplasty"
* include BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* include BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* include BreastSurgeryTypesCodeSystem#4 "Mastectomy with immediate reconstruction (autologous)"
* include BreastSurgeryTypesCodeSystem#5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
* include NullFlavor#UNK "unknown"

ValueSet: NoYesUnknownValueSet
Id: NoYesUnknownValueSet
Title: "Yes, No and Unknown Valueset"
Description: "Valueset with yes, no and unknown answers"
* YesNoUnkCS#Y "Yes" 
* YesNoUnkCS#N "No"
* YesNoUnkCS#UNK "Unknown"

ValueSet: AxillaSurgeryVS
Id: AxillaSurgeryVS
Title: "Surgery of Axilla"
Description: "Valueset of surgery types of the axilla"
* SCT#396487001 "Sentinel lymph node biopsy"
* SCT#178294003 "Axillary lymph nodes sampling"
* SCT#79544006 "Complete axillary lymphadenectomy"
* NullFlavor#UNK "unknown"
// This one should be updated to V5 when we have the right mappings

ValueSet: LocationRadiotherapyVS
Id: LocationRadiotherapyVS
Title: "The location of radiotherapy"
Description: "Valueset of the location of radiotherapy"
* SCT#76752008 "Breast structure"
* SCT#78904004 "Chest wall structure"
* SCT#68171009 "Axillary lymph node structure"
* SCT#76838003 "Structure of supraclavicular lymph node"
* SCT#245282001 "Internal mammary lymph node group"
* SCT#263601005 "Site of tumor"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"
// still need one more code for the partial breast / intraoperative

//  DEGREE OF HEALTH 
 
// EORTC-QLQ \\ 
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

// BreastQ \\
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

// FACT-ES \\
CodeSystem: FACTESCodeSystem
Id: FACTESCodeSystem
Title: "FACT-ES questionnaire"
Description: "Codes used in the Functional Assessment of Cancer Therapy questionnaire"
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
Description: "Valueset of the Functional Assessment of Cancer Therapy questionnaire"
* ^version  = 0.0.1
* include FACTESCodeSystem#1 "Not at all"
* include FACTESCodeSystem#2 "A little"
* include FACTESCodeSystem#3 "Somewhat"
* include FACTESCodeSystem#4 "Quite a bit"
* include FACTESCodeSystem#5 "Very much"


// Optional valueset using Snomed CT


// TREATMENT VARIABLES



// ValueSet: TherapyIntent
// Id: TherapyIntent
// Title: "Intent of therapy"
// Description: "Valueset of intent of therapy"
// * SCT#373847000 "Neo-adjuvant - intent"
// * SCT#373846009 "Adjuvant - intent"

// ValueSet: ChemoTherapyType
// Id: ChemoTherapyType
// Title: "Type of chemotherapy"
// Description: "Valueset of the types of chemotherapy"
// * SCT#108787006 "Medicinal product containing anthracycline and acting as antineoplastic agent"
// * SCT#418965003 "Taxane derivative"
// * SCT#768621002 "Product containing platinum and platinum compound"
// * NullFlavor#OTH "other"
// * NullFlavor#UNK "unknown"

// ValueSet: HormonalTherapyType
// Id: HormonalTherapyType
// Title: "Type of hormonal therapy"
// Description: "Valueset of the types of hormonal therapy"
// * SCT#413575009 "Substance with aromatase inhibitor mechanism of action"
// * SCT#37333600 "Substance with estrogen receptor antagonist mechanism of action"
// * SCT#8315200 "Oophorectomy"
// * SCT#41897400 "Gonad regulating hormone agent"
// * NullFlavor#OTH "other"
// * NullFlavor#UNK "unknown"



ValueSet: ReoperationTypeVS
Id: ReoperationTypeVS
Title: "Type of re-operation"
Description: "Valueset of the types of re-operation"
* SCT#373572006 "Clinical finding absent"
* SCT#33496007 "Reconstruction of breast"
* SCT#69031006 "Excision of breast tissue"
* SCT#234254000 "Excision of axillary lymph nodes group"
* NullFlavor#UNK "unknown"

// ValueSet: SystemicTreatment
// Id: SystemicTreatment
// Title: "Type of systemic treatment"
// Description: "Valueset of the types of systemic treatment"
// * SCT#373572006 "Clinical finding absent"
// * SCT#438553004 "History of drug therapy" //--> not really a reflection of the answeroption in the ICHOM set
// * SCT#367336001 "Chemotherapy"
// no code for "yes, on targeted therapy"
// * SCT#169413002 "Hormone therapy"
// * NullFlavor#UNK "unknown"


// SURVIVAL AND DISEASE CONTROL 
CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Recurrence Method"
Description: "Additional code covering combination of radiological and histological diagnosis method"
* ^url = http://connect.ichom.org/fhir/CodeSystem/RecurrenceMethod
* ^caseSensitive = true

* #2 "Radiological and histological diagnosis"

ValueSet: RecurrenceMethod
Id: RecurrenceMethod
Title: "Method of confirming recurrence"
Description: "Valueset of the methods used to confirm recurrence of breast cancer"
* SCT#394914008 "Radiology"
* SCT#67151002 "Histologic"
* RecurrenceMethodCodeSystem#2 "Radiological and histological diagnosis"
* NullFlavor#UNK "unknown"


// ValueSet: UnitsBodyHeightVS
// Id: UnitsBodyHeight
// Title: "Units of patient's body height"
// Description: "Valueset of the unit  of the patient's body height"
// * SCT#258672001 "Centimeter"
// * SCT#258677007 "Inch"

// ValueSet: UnitsBodyWeightVS
// Id: UnitsBodyWeight
// Title: "Units of patient's body weight"
// Description: "Valueset of the unit  of the patient's body weight"
// * SCT#258683005 "kilogram"
// * SCT#258693003 "pounds"

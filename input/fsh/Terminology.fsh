Alias: $FHIRMS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus
Alias: $SCT = http://snomed.info/sct 

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
* #999 "Unknown"

ValueSet: TreatmentTypeValueSet
Id: TreatmentTypeValueSet
Title: "Treatment variables"
Description: "Valueset of the kind of treatment a patient underwent"
* include TreatmentTypesCodeSystem#0 "No treatment"
* include TreatmentTypesCodeSystem#1 "Surgery"
* include TreatmentTypesCodeSystem#2 "Surgery to axilla"
* include TreatmentTypesCodeSystem#3 "Delayed reconstruction"
* include TreatmentTypesCodeSystem#4 "Radiotherapy"
* include TreatmentTypesCodeSystem#5 "Chemotherapy"
* include TreatmentTypesCodeSystem#6 "Hormonal therapy"
* include TreatmentTypesCodeSystem#7 "Targeted therapy"
* include TreatmentTypesCodeSystem#8 "Best supportive care"
* include TreatmentTypesCodeSystem#999 "Unknown"

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
* #999 "Unknown"
   
ValueSet: BreastSurgeryTypeValueSet
Id: BreastSurgeryTypeValueSet
Title: "Types of breast surgery"
Description: "Valueset of the types of breast surgery a patient underwent"
* include BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* include BreastSurgeryTypesCodeSystem#1 "BCS with mammoplasty"
* include BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* include BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* include BreastSurgeryTypesCodeSystem#4 "Mastectomy with immediate reconstruction (autologous)"
* include BreastSurgeryTypesCodeSystem#5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
* include BreastSurgeryTypesCodeSystem#999 "Unknown"

ValueSet: NoYesUnknownValueSet
Id: NoYesUnknownValueSet
Title: "Yes, No and Unknown Valueset"
Description: "Valueset with yes, no and unknown answers "
* include codes from valueset http://hl7.org/fhir/ValueSet/yesnodontknow



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


// Optional valueset using Snowmed CT

//  DEMOGRAPHICS 

// ValueSet: RelationshipStatus
// Id: RelationshipStatus
// Title: "Relationship status of patient"
// Description: "Valueset of the relationship status of a patient"
// * $SCT#125725006 "Not married/partnered"
// * $SCT#87915002 "Married/partnered"
// * $SCT#20295000 "Divorced/separated"
// * $SCT#33553000 "Widowed"
// unknown --> null flavor

// ValueSet: Education
// Id: Education
// Title: "Education level of patient"
// Description: "Valueset of the education level of a patient"
// * $SCT#224294005 "None"
// * $SCT#224295006 "Primary"
// * $SCT#224297003 "Secondary"
// * $SCT#224299000 "Tertiary"

// ValueSet: MenopausalStatus
// Id: MenopausalStatus
// Title: "Menopausal status of patient"
// Description: "Valueset of the menopausal status of a patient"
// * $SCT#30960600 "Pre-menopause"
// * $SCT#307429007 "Post-menopause (natural/surgical) - if you have not had your period >12 months, caused by natural decline of hormones or due to surgery (e.g. menopause that develops after the ovaries are surgically removed)"
// unknown --> null flavor

//  BASELINE CLINICAL FACTORS 

// ValueSet: Units
// Id: Units
// Title: "Units of patient's weight and height"
// Description: "Valueset of the unit  of the patient's weight and height"
// * $SCT#258683005 "kilogram"
// * $SCT#258693003 "pounds"
// * $SCT#258672001 "Centimeter" 
// * $SCT#258677007 "Inch"

// ValueSet: Laterality
// Id: Laterality
// Title: "Laterality of breastcancer"
// Description: "Valueset of the laterality of breastcancer"
// * $SCT#80248007 "Left breast"
// * $SCT#73056007 "Right breast"
// * $SCT#63762007 "Both breasts"

// TUMOR FACTORS 

// ValueSet: HistologicalType
// Id: HistologicalType
// Title: "Histological type of the tumor"
// Description: "Valueset of the histological types of tumors"
// * $SCT#399935008 "Ductal carcinoma in situ"
// * $SCT#373395001 "Invasive ductal carcinoma"
// * $SCT#722524005 "Invasive lobular carcinoma"
// other --> null flavor
// unknown --> null flavor

// ValueSet: GeneticMutation
// Id: GeneticMutation
// Title: "Genetic Mutation"
// Description: "Valueset of the genetic mutation predisposing breastcancer"
// * $SCT#44518000 "No mutation"
// * $SCT#412734009 "BRCA 1"
// * $SCT#412738007 "BRCA 2"
// other mutation
// * $SCT#416237000 "Not tested"

// ValueSet: InvasionGrade
// Id: InvasionGrade
// Title: "Invasion grade"
// Description: "Valueset of the invasion grade of the tumor"
// * $SCT#399415002 "Low"
// * $SCT#405986005 "Intermediate"
// * $SCT#399611001 "High"

// ValueSet: TumorGrade
// Id: TumorGrade
// Title: "Tumor grade"
// Description: "Valueset of the tumor grade"
// * $SCT#399415002 "Grade 1"
// * $SCT#405986005 "Grade 2"
// * $SCT#399611001 "Grade 3"

// ValueSet: EstrogenReceptorStatus
// Id: EstrogenReceptorStatus
// Title: "Estrogen receptor status"
// Description: "Valueset of the Estrogen receptor status"
// * $SCT#373572006 "No"
// * $SCT#416053008 "Yes"
// * $SCT#416237000 "Not performed"
// Unkown --> null flavor

// ValueSet: ProgesteroneReceptorStatus
// Id: ProgesteroneReceptorStatus
// Title: "Progesterone receptor status"
// Description: "Valueset of the Progesterone receptor status"
// * $SCT#441118006 "No"
// * $SCT#41656100 "Yes"
// * $SCT#416237000 "Not performed"
// Unkown --> null flavor

// ValueSet: HER2ReceptorStatus
// Id: HER2ReceptorStatus
// Title: "HER2 receptor status"
// Description: "Valueset of the HER2 receptor status"
// * $SCT#431396003 "Negative"
// * $SCT#427685000 "Positive"
// * $SCT#280414007 "Equivocal"
// * $SCT#416237000 "Not tested"

// TREATMENT VARIABLES

// ValueSet: AxillaSurgery
// Id: AxillaSurgery
// Title: "Surgery of Axilla"
// Description: "Valueset of surgery type of the axilla"
// * $SCT#396487001 "Sentinel lymph node biopsy"
// * $SCT#178294003 "Axillary sampling"
// * $SCT#79544006 "Axillary clearance"
// Unkown --> null flavor

// ValueSet: TherapyIntent
// Id: TherapyIntent
// Title: "Intent of therapy"
// Description: "Valueset of intent of therapy"
// * $SCT#373847000 "Neo-adjuvant"
// * $SCT#373846009 "Adjuvant"

// ValueSet: ChemoTherapyType
// Id: ChemoTherapyType
// Title: "Type of chemotherapy"
// Description: "Valueset of the types of chemotherapy"
// * $SCT#108787006 "Anthracycline containing"
// * $SCT#418965003 "Taxane containing"
// * $SCT#768621002 "Platinum containing"
// other --> null flavor
// unknown --> null flavor

// ValueSet: HormonalTherapyType
// Id: HormonalTherapyType
// Title: "Type of hormonal therapy"
// Description: "Valueset of the types of hormonal therapy"
// * $SCT#413575009 "Aromatase inhibitor"
// * $SCT#37333600 "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
// * $SCT#8315200 "Oophorectomy"
// * $SCT#41897400 "LHRH agonist"
// Other --> null flavor
// Unknown --> null flavor

// ValueSet: LocationRadiotherapy
// Id: LocationRadiotherapy
// Title: "The location of radiotherapy"
// Description: "Valueset of the location of radiotherapy"
// * $SCT#76752008 "Breast"
// * $SCT#78904004 "Chest wall"
// * $SCT#68171009 "Axillary nodal irradiation"
// * $SCT#76838003 "Supraclavicular irradiation"
// * $SCT#245282001 "Internal mammary node irradiation"
// * $SCT#263601005 "Tumor bed boost"
// * $SCT#119235005 "Brain metastases"
// * $SCT#280441002 "Bone metastases"
// * $SCT#14799000 "Any metastatic site"
// Other --> null flavor
// Unknown --> null flavor

// ValueSet: ReoperationType
// Id: ReoperationType
// Title: "Type of re-operation"
// Description: "Valueset of the types of re-operation"
// * $SCT#373572006 "No"
// * $SCT#33496007 "Breast reconstruction surgery"
// * $SCT#69031006 "Mastectomy"
// * $SCT#234254000 "Axillary dissection"
// Unknown --> null flavor

// ValueSet: SystemicTreatment
// Id: SystemicTreatment
// Title: "Type of systemic treatment"
// Description: "Valueset of the types of systemic treatment"
// * $SCT#373572006 "no, never had systemic treatment"
// * $SCT#438553004 "yes, but the treatment has stopped"
// * $SCT#367336001 "yes, on chemotherapy"
// no code for "yes, on targeted therapy"
// * $SCT#169413002 "yes, on hormone therapy"
// Unknown --> null flavor


// SURVIVAL AND DISEASE CONTROL 

// ValueSet: RecurrenceMethod
// Id: RecurrenceMethod
// Title: "Method of confirming recurrence"
// Description: "Valueset of the methods used to confirm recurrence of breastcancer"
// * $SCT#394914008 "Radiological diagnosis"
// * $SCT#67151002 "Histological diagnosis"
// both --> option to use postcoordinated terms
// unknown --> null flavor

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
* insert SNOMEDCopyrightForVS
* SCT#224294005 "No formal education (finding)"
* SCT#224295006 "Only received primary school education (finding)"
* SCT#224297003 "Educated to secondary school level (finding)"
* SCT#224299000 "Received higher education (finding)"

ValueSet: MenopausalStatusVS
Id: MenopausalStatusVS
Title: "Menopausal status of patient"
Description: "Valueset of the menopausal status of a patient"
* insert SNOMEDCopyrightForVS
* SCT#309606002 "Before menopause"
* SCT#307429007 "After menopause"
* NullFlavor#ASKU "Asked but unknown"

// Tumor Factors
ValueSet: HistologicalTypeVS
Id: HistologicalTypeVS
Title: "Histological type of the tumor"
Description: "Valueset of the histological types of tumors"
* insert SNOMEDCopyrightForVS
* SCT#399935008 "Ductal carcinoma in situ - category"
* SCT#373395001 "Invasive ductal carcinoma with an extensive intraductal component"
* SCT#722524005 "Primary invasive pleomorphic lobular carcinoma of breast"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: GermlineMutationVS
Id: GermlineMutationVS
Title: "Germline Mutation"
Description: "Valueset of the genetic mutation predisposing breast cancer"
* insert SNOMEDCopyrightForVS
* SCT#445180002 "Breast cancer genetic marker of susceptibility negative (finding)"
* SCT#412734009 "BRCA1 gene mutation positive (finding)"
* SCT#412738007 "BRCA2 gene mutation positive (finding)"
* NullFlavor#OTH "other"
* SCT#416237000 "Procedure not done"

ValueSet: GradingVS
Id: GradingVS
Title: "Grading of tumor"
Description: "Valueset of the grade of the tumor"
* insert SNOMEDCopyrightForVS
* SCT#399415002 "Low grade histologic differentiation (finding)"
* SCT#405986005 "Intermediate grade histologic differentiation (finding)"
* SCT#399611001 "High grade histologic differentiation (finding)"
* NullFlavor#NI "No information"

ValueSet: TNMPrimaryTumorVS
Id: tnm-primary-tumor-category-vs
Title: "TNM Primary Tumor Value Set"
Description: "Valueset of the TNM stage for the T category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* AJCC#Tx
* AJCC#T0
* AJCC#Tis
* AJCC#T1
* AJCC#T2
* AJCC#T3
* AJCC#T4
* NullFlavor#UNK "unknown"

ValueSet: TNMRegionalNodesVS
Id: tnm-regional-nodes-category-vs
Title: "TNM Regional Nodes Value Set"
Description: "Valueset of the TNM stage for the N category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* AJCC#Nx
* AJCC#N0
* AJCC#N1
* AJCC#N2
* AJCC#N3
* NullFlavor#UNK "unknown"

ValueSet: TNMDistantMetastasesVS
Id: tnm-distant-metastases-category-vs
Title: "TNM Distant Metastases Value Set"
Description: "Valueset of the TNM stage for the M category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* AJCC#M0
* AJCC#M1
* NullFlavor#UNK "unknown"

ValueSet: EstrogenStatusVS
Id: EstrogenStatusVS
Title: "Estrogen receptor status"
Description: "Valueset of the Estrogen receptor status"
* insert SNOMEDCopyrightForVS
* SCT#373572006 "Clinical finding absent"
* SCT#416053008 "Estrogen receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: ProgesteroneStatusVS
Id: ProgesteroneStatusVS
Title: "Progesterone receptor status"
Description: "Valueset of the Progesterone receptor status"
* insert SNOMEDCopyrightForVS
* SCT#441118006 "Progesterone receptor negative neoplasm"
* SCT#416561008 "Progesterone receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: HER2ReceptorStatusVS
Id: HER2ReceptorStatusVS
Title: "HER2 receptor status"
Description: "Valueset of the HER2 receptor status"
* insert SNOMEDCopyrightForVS
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

ValueSet: LateralityVS
Id: LateralityVS
Title: "Laterality of breast cancer"
Description: "Valueset of the laterality of breast cancer"
* insert SNOMEDCopyrightForVS
* SCT#80248007 "Left breast structure"
* SCT#73056007 "Right breast structure"
* SCT#63762007 "Both breasts"

ValueSet: LateralityNewCancerVS
Id: LateralityNewCancerVS
Title: "Laterality of new cancer"
Description: "Valueset of the laterality of new breast cancer"
* insert SNOMEDCopyrightForVS
* SCT#255208005 "Ipsilateral"
* SCT#255209002 "Contralateral"

//  TREATMENT VARIABLES 

// TreatmentType \\
CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables"
Description: "Codes defining types of treatment a breast cancer patient could receive"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/treatment-variables
* ^caseSensitive = true
* #A_chemo "Adjuvant chemotherapy"
* #N_A_chemo "Neoadjuvant chemotherapy"
* #Targ_Thrpy "Targeted therapy"

ValueSet: TreatmentTypeVS
Id: TreatmentTypeValueSet
Title: "Type of treatments"
Description: "Valueset of the kind of treatment a patient with breastcancer underwent"
* insert SNOMEDCopyrightForVS
* include SCT#387713003 "Surgical procedure"
* include SCT#699455008 "Operative procedure on axilla"
* include SCT#33496007 "Reconstruction of breast" 
* include SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* include TreatmentTypesCodeSystem#A_chemo "Adjuvant chemotherapy"
* include TreatmentTypesCodeSystem#N_A_chemo "Neoadjuvant chemotherapy"
* include SCT#169413002 "Hormone therapy"
* include TreatmentTypesCodeSystem#Targ_Thrpy "Targeted therapy"
* include SCT#76334006 "Immunotherapy"
* include SCT#243114000 "Support"
* NullFlavor#UNK "unknown"

ValueSet: RecommendedTreatmentTypeVS
Id: RecommendedTreatmentTypeVS
Title: "Recommended treatment types"
Description: "Valueset of the kind of treatment that the multidisciplinary team recommended"
* insert SNOMEDCopyrightForVS
* include SCT#387713003 "Surgical procedure"
* include SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* include TreatmentTypesCodeSystem#A_chemo "Adjuvant chemotherapy"
* include TreatmentTypesCodeSystem#N_A_chemo "Neoadjuvant chemotherapy"
* include SCT#169413002 "Hormone therapy"
* include TreatmentTypesCodeSystem#Targ_Thrpy "Targeted therapy"
* include SCT#76334006 "Immunotherapy"
* include SCT#243114000 "Support"

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
* #3 "Mastectomy with immediate reconstruction"

ValueSet: BreastSurgeryTypeVS
Id: BreastSurgeryTypeVS
Title: "Types of breast surgery"
Description: "Valueset of the types of breast surgery a patient underwent"
* include BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* include BreastSurgeryTypesCodeSystem#1 "BCS with mammoplasty"
* include BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* include BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

ValueSet: AxillaSurgeryVS
Id: AxillaSurgeryVS
Title: "Surgery of Axilla"
Description: "Valueset of surgery types of the axilla"
* insert SNOMEDCopyrightForVS
* SCT#396487001 "Sentinel lymph node biopsy"
* SCT#234262008 "Excision of axillary lymph node"
* SCT#79544006 "Complete axillary lymphadenectomy"
* NullFlavor#UNK "unknown"

CodeSystem: ReconstructionTypeCodeSystem
Id: ReconstructionTypeCodeSystem
Title: "Type of reconstruction surgery"
Description: "Codes indicating the type of reconstruction surgery that is performed"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/reconstuction-type
* ^caseSensitive = true
* #Direct_imp "Direct implant"
* #Staged_imp "Staged implant"
* #Autologous "Autologous"
* #Both "Both implant and autologous"

ValueSet: ReconstructionTypeVS
Id: ReconstructionTypeVS
Title: "Type of reconstruction surgery"
Description: "Valueset of the type of reconstruction surgery that is performed"
* include ReconstructionTypeCodeSystem#Direct_imp "Direct implant"
* include ReconstructionTypeCodeSystem#Staged_imp "Staged implant"
* include ReconstructionTypeCodeSystem#Autologous "Autologous"
* include ReconstructionTypeCodeSystem#Both "Both implant and autologous"
* NullFlavor#UNK "unknown"

CodeSystem: ImplantLocationCodeSystem
Id: ImplantLocationCodeSystem
Title: "Location of the implant"
Description: "Codes indicating the location of the implant that was placed during reconstruction surgery"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/implant-location
* ^caseSensitive = true
* #Pre_pect "Pre-pectoral"
* #Sub_pect "Sub-pectoral"

ValueSet: ImplantLocationVS
Id: ImplantLocationVS
Title: "Location of the implant"
Description: "Valueset of the location of the implant during reconstruction surgery"
* include ImplantLocationCodeSystem#Pre_pect "Pre-pectoral"
* include ImplantLocationCodeSystem#Sub_pect "Sub-pectoral"

ValueSet: LocationRadiotherapyVS
Id: LocationRadiotherapyVS
Title: "The location of radiotherapy"
Description: "Valueset of the location of radiotherapy"
* insert SNOMEDCopyrightForVS
* SCT#76752008 "Breast structure"
* SCT#78904004 "Chest wall structure"
* SCT#68171009 "Axillary lymph node structure"
* SCT#76838003 "Structure of supraclavicular lymph node"
* SCT#245282001 "Internal mammary lymph node group"
* SCT#263601005 "Site of tumor"
* SCT#277671009 "Intraoperative"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: ChemoTherapyTypeVS
Id: ChemoTherapyTypeVS
Title: "Type of chemotherapy"
Description: "Valueset of the types of chemotherapy"
* insert SNOMEDCopyrightForVS
* SCT#108787006 "Medicinal product containing anthracycline and acting as antineoplastic agent"
* SCT#418965003 "Taxane derivative"
* SCT#768621002 "Product containing platinum and platinum compound"
* SCT#386906001 "Capecitabine"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: TherapyIntentVS
Id: TherapyIntentVS
Title: "Intent of therapy"
Description: "Valueset of intent of therapy"
* insert SNOMEDCopyrightForVS
* SCT#373847000 "Neo-adjuvant - intent"
* SCT#373846009 "Adjuvant - intent"
* NullFlavor#UNK "unknown"

ValueSet: HormonalTherapyTypeVS
Id: HormonalTherapyTypeVS
Title: "Type of hormonal therapy"
Description: "Valueset of the types of hormonal therapy"
* insert SNOMEDCopyrightForVS
* SCT#413575009 "Substance with aromatase inhibitor mechanism of action"
* SCT#373336003 "Substance with estrogen receptor antagonist mechanism of action"
* SCT#83152002 "Oophorectomy"
* SCT#418974001 "Gonad regulating hormone agent"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: TargetedTherapyVS
Id: TargetedTherapyVS
Title: "Type of targeted therapy"
Description: "Valueset of the types of targeted therapy"
* insert SNOMEDCopyrightForVS
* SCT#784176007 "HER2 (Human epidermal growth factor receptor 2) inhibitor"
* SCT#426265004 "Substance with protein kinase inhibitor mechanism of action"
* SCT#432253008 "Substance with nicotinamide adenine dinucleotide adenosine diphosphate ribosyltransferase inhibitor mechanism of action"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: ReoperationTypeVS
Id: ReoperationTypeVS
Title: "Type of re-operation"
Description: "Valueset of the types of re-operation"
* insert SNOMEDCopyrightForVS
* SCT#373572006 "Clinical finding absent"
* SCT#33496007 "Reconstruction of breast"
* SCT#69031006 "Excision of breast tissue"
* SCT#234254000 "Excision of axillary lymph nodes group"
* NullFlavor#UNK "unknown"

// Treatmentplan
CodeSystem: TreatmentPlanFollowedCodeSystem
Id: TreatmentPlanFollowedCodeSystem
Title: "Real Treatment Plan Followed"
Description: "Codes covering if the patient followed the multidisciplinary recommended treatment plan"
* ^url = http://connect.ichom.org/fhir/CodeSystem/TargetedTherapy
* ^caseSensitive = true

* #0 "No, not followed"
* #1 "Yes, fully followed"
* #2 "Some treatments followed"

ValueSet: TreatmentPlanFollowedVS
Id: TreatmentPlanFollowedVS
Title: "Real Treatment Plan Followed"
Description: "Valueset of if the patient followed the multidisciplinary recommended treatment plan"
* TreatmentPlanFollowedCodeSystem#0 "No, not followed"
* TreatmentPlanFollowedCodeSystem#1 "Yes, fully followed"
* TreatmentPlanFollowedCodeSystem#2 "Some treatments followed"

CodeSystem: TreatmentPlanNotFollowedCodeSystem
Id: TreatmentPlanNotFollowedCodeSystem
Title: "Real Treatment Plan Followed"
Description: "Codes covering if the patient followed the multidisciplinary recommended treatment plan"
* ^url = http://connect.ichom.org/fhir/CodeSystem/TreatmentPlanNotFollowed
* ^caseSensitive = true

* #1 "Patient preference"
* #2 "Clinical reasons"

ValueSet: TreatmentPlanNotFollowedVS
Id: TreatmentPlanNotFollowedVS
Title: "Treatment Plan Not Followed"
Description: "Valueset of reason for the treatment plan not being followed"
* TreatmentPlanNotFollowedCodeSystem#1 "Patient preference" // SCT#105480006 "Refusal of treatment by patient"
* TreatmentPlanNotFollowedCodeSystem#2 "Clinical reasons"
* NullFlavor#UNK "unknown"

CodeSystem: PatientTreatPrefCodeSystem
Id: PatientTreatPrefCodeSystem
Title: "Real Treatment Plan Followed"
Description: "Codes covering for why the treatment plan was not followed"
* ^url = http://connect.ichom.org/fhir/CodeSystem/PatientTreatPref
* ^caseSensitive = true

* #1 "Personal preference"
* #2 "Treatment unavailable"
* #3 "Different plan recommended by clinical team"

ValueSet: PatientTreatPrefVS
Id: PatientTreatPrefVS
Title: "Patient Treatment Preference"
Description: "Valueset of reason for why the treatment plan was not followed"
* PatientTreatPrefCodeSystem#1 "Personal preference" // SCT#105480006 "Refusal of treatment by patient"
* PatientTreatPrefCodeSystem#2 "Treatment unavailable" // SCT#309846006 "Treatment not available"
* PatientTreatPrefCodeSystem#3 "Different plan recommended by clinical team"
* NullFlavor#OTH "other"

CodeSystem: TreatmentPlanComplianceCodeSystem
Id: TreatmentPlanComplianceCodeSystem
Title: "Observation identifiers for treatment plan non-compliance reason"
Description: "Codes covering observation identifiers for treatment plan non-compliance reaso"
* ^url = http://connect.ichom.org/fhir/CodeSystem/TreatmentPlanCompliance
* ^caseSensitive = true
* #1 "Reason for not following original treatment plan"
* #2 "Patient reported reason for not following recommened treatment"

ValueSet: TreatmentPlanComplianceVS
Id: TreatmentPlanComplianceVS
Title: "Observation identifiers for treatment plan non-compliance reason"
Description: "Valueset of reason for why the treatment plan was not followed"
* TreatmentPlanComplianceCodeSystem#1 "Reason for not following original treatment plan"
* TreatmentPlanComplianceCodeSystem#2 "Patient reported reason for not following recommened treatment"


// DISUTILITY OF CARE

// Reoperations
ValueSet: InvolvedMarginsReoperationTypeVS
Id: InvolvedMarginsReoperationTypeVS
Title: "Re-operation due to involved margins"
Description: "Kind of re-operation due to involved margins"
* insert SNOMEDCopyrightForVS
* ^version = "0.0.1"
* ^status = #active
* ^date = "2022-07-26T09:18:41+02:00"
* ^publisher = "ICHOM"
* ^contact.name = "ICHOM"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://ichom.org"
* ^jurisdiction = http://unstats.un.org/unsd/methods/m49/m49.htm#001 "World"
* SCT#64368001 "Partial mastectomy"
* SCT#172043006 "Simple mastectomy"
* IchomReoperation#2 "Breast conserving surgery with mammoplasty"
* IchomReoperation#4 "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

// Complications
CodeSystem: ComplicationImpactCodeSystem
Id: ComplicationImpactCodeSystem
Title: "Impact of complication"
Description: "Codes indicating the impact of a complication experienced by the breast cancer patient"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/complication-impact
* ^caseSensitive = true
* #2 "Complication leading to prolonged hospitalization (>14days)"
* #5 "Complication leading to discontinuing of treatment"
* #8 "Complication, but did not result in any of the abovementioned"

ValueSet: ComplicationImpactVS
Id: ComplicationImpactVS
Title: "Impact of complication"
Description: "ValueSet of the impact of a complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* SCT#240917005 "Interventional radiology"  
* SCT#303577009 "Interventional debulking surgery" 
* ComplicationImpactCodeSystem#2 "Complication leading to prolonged hospitalization (>14days)"
* SCT#417005 "Hospital re-admission"
* SCT#397945004 "Unexpected admission to intensive care unit"
* ComplicationImpactCodeSystem#5 "Complication leading to discontinuing of treatment"
* SCT#182879007 "Medication decreased"
* SCT#419620001 "Death"
* ComplicationImpactCodeSystem#8 "Complication, but did not result in any of the abovementioned"
* NullFlavor#UNK "unknown"

CodeSystem: ComplicationTypeCodeSystem
Id: ComplicationTypeCodeSystem
Title: "Type of complication"
Description: "Codes indicating the type of a complication experienced by the breast cancer patient"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/complication-type
* ^caseSensitive = true
* #4 "Partial autologous graft loss"
* #5 "Total autologous graft loss"
* #9 "Delay wound healing/dehiscence"
* #13 "Immune related toxicity"

ValueSet: ComplicationTypeVS
Id: ComplicationTypeVS
Title: "Type of complication"
Description: "ValueSet of the type of complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* SCT#76844004  "Local infection of wound"
* SCT#715068009 "Seroma"
* SCT#385494008 "Hematoma"
* SCT#131148009 "Bleeding"
* SCT#403678005 "Skin flap necrosis"
* ComplicationTypeCodeSystem#4 "Partial autologous graft loss"
* ComplicationTypeCodeSystem#5 "Total autologous graft loss"
* SCT#27315000 "Removal of breast implant"
* SCT#371039008 "Thromboembolic disorder"
* SCT#57182000  "Nerve injury"
* ComplicationTypeCodeSystem#9 "Delay wound healing/dehiscence"
* SCT#403675008 "Drug-induced dermatosis"
* SCT#233604007 "Pneumonia"
* SCT#443980004 "Neutropenic sepsis"
* ComplicationTypeCodeSystem#13 "Immune related toxicity"
* NullFlavor#UNK "unknown"
* NullFlavor#OTH "other"

// SURVIVAL AND DISEASE CONTROL 
ValueSet: NoYesUnknownVS
Id: NoYesUnknownVS
Title: "Yes, No and Unknown Valueset"
Description: "Valueset with yes, no and unknown answers"
* YesNoUnkCS#Y "Yes" 
* YesNoUnkCS#N "No"
* YesNoUnkCS#UNK "Unknown"

CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Recurrence Method"
Description: "Additional code covering combination of radiological and histological diagnosis method"
* ^url = http://connect.ichom.org/fhir/CodeSystem/RecurrenceMethod
* ^caseSensitive = true
* #2 "Radiological and histological diagnosis"

ValueSet: RecurrenceMethodVS
Id: RecurrenceMethodVS
Title: "Method of confirming recurrence"
Description: "Valueset of the methods used to confirm recurrence of breast cancer"
* insert SNOMEDCopyrightForVS
* SCT#394914008 "Radiology"
* SCT#67151002 "Histologic"
* RecurrenceMethodCodeSystem#2 "Radiological and histological diagnosis"
* NullFlavor#UNK "unknown"


//  DEGREE OF HEALTH 

// EORTC-QLQ
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

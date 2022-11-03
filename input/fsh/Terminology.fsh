// DEMOGRAPHICS CodeSystems 
ValueSet: RelationshipStatusVS
Id: RelationshipStatusVS
Title: "Relationship status of patient ValueSet"
Description: "Valueset of the relationship status of a patient"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/RelationshipStatusVS

* RelationshipStatusCS#U "unmarried"
* RelationshipStatusCS#M "Married"
* RelationshipStatusCS#D "Divorced"
* RelationshipStatusCS#W "Widowed"
* NullFlavor#UNK "unknown"

ValueSet: EducationLevelVS
Id: EducationLevelVS
Title: "Education level of patient ValueSet"
Description: "Valueset of the education level of a patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/EducationLevelVS

* SCT#224294005 "No formal education (finding)"
* SCT#224295006 "Only received primary school education (finding)"
* SCT#224297003 "Educated to secondary school level (finding)"
* SCT#224299000 "Received higher education (finding)"

ValueSet: MenopausalStatusVS
Id: MenopausalStatusVS
Title: "Menopausal status of patient ValueSet"
Description: "Valueset of the menopausal status of a patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/MenopausalStatusVS

* SCT#309606002 "Before menopause"
* SCT#307429007 "After menopause"
* NullFlavor#ASKU "Asked but unknown"

// Tumor Factors
ValueSet: HistologicalTypeVS
Id: HistologicalTypeVS
Title: "Histological type of the tumor ValueSet"
Description: "Valueset of the histological types of tumors"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/HistologicalTypeVS

* SCT#399935008 "Ductal carcinoma in situ - category"
* SCT#373395001 "Invasive ductal carcinoma with an extensive intraductal component"
* SCT#722524005 "Primary invasive pleomorphic lobular carcinoma of breast"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

ValueSet: GermlineMutationVS
Id: GermlineMutationVS
Title: "Germline Mutation ValueSet"
Description: "Valueset of the genetic mutation predisposing breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/GermlineMutationVS

* SCT#445180002 "Breast cancer genetic marker of susceptibility negative (finding)"
* SCT#412734009 "BRCA1 gene mutation positive (finding)"
* SCT#412738007 "BRCA2 gene mutation positive (finding)"
* NullFlavor#OTH "other"
* SCT#416237000 "Procedure not done"

ValueSet: GradingVS
Id: GradingVS
Title: "Grading of tumor ValueSet"
Description: "Valueset of the grade of the tumor"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/GradingVS

* SCT#399415002 "Low grade histologic differentiation (finding)"
* SCT#405986005 "Intermediate grade histologic differentiation (finding)"
* SCT#399611001 "High grade histologic differentiation (finding)"
* NullFlavor#NI "No information"

// BREAST CANCER STAGING GROUP
ValueSet: TNMStageGroupVS
Id: TNMStageGroupVS
Title: "Staging Type for Stage Group ValueSet"
Description: "Valueset indicating the type of staging, clinical or pathological, of breast cancer."
* insert LOINCCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TNMStageGroupVS

* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"

ValueSet: TNMPrimaryTumorVS
Id: TNMPrimaryTumorVS
Title: "TNM Primary Tumor ValueSet"
Description: "Valueset of the TNM stage for the T category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TNMPrimaryTumorVS
* AJCC#Tx "Tx"
* AJCC#T0 "T0"
* AJCC#Tis(DCIS) "Tis (DCIS)"
* AJCC#Tis(Paget) "Tis (Paget)"
* AJCC#T1 "T1"
* AJCC#T2 "T2"
* AJCC#T3 "T3"
* AJCC#T4 "T4"
* NullFlavor#UNK "unknown"

ValueSet: TNMRegionalNodesVS
Id: TNMRegionalNodesVS
Title: "TNM Regional Nodes ValueSet"
Description: "Valueset of the TNM stage for the N category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TNMRegionalNodesVS

* AJCC#Nx "Nx"
* AJCC#N0 "N0"
* AJCC#N1 "N1"
* AJCC#N2 "N2"
* AJCC#N3 "N3"
* NullFlavor#UNK "unknown"

ValueSet: TNMDistantMetastasesVS
Id: TNMDistantMetastasesVS
Title: "TNM Distant Metastases ValueSet"
Description: "Valueset of the TNM stage for the M category, according to TNM staging rules"
* insert AJCCCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TNMDistantMetastasesVS

* AJCC#M0 "M0"
* AJCC#M1 "M1"
* NullFlavor#UNK "unknown"

ValueSet: EstrogenStatusVS
Id: EstrogenStatusVS
Title: "Estrogen receptor status ValueSet"
Description: "Valueset of the Estrogen receptor status"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/EstrogenStatusVS

* SCT#373572006 "Clinical finding absent"
* SCT#416053008 "Estrogen receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: ProgesteroneStatusVS
Id: ProgesteroneStatusVS
Title: "Progesterone receptor status ValueSet"
Description: "Valueset of the Progesterone receptor status"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ProgesteroneStatusVS

* SCT#441118006 "Progesterone receptor negative neoplasm"
* SCT#416561008 "Progesterone receptor positive tumor"
* SCT#416237000 "Procedure not done"
* NullFlavor#UNK "unknown"

ValueSet: HER2ReceptorStatusVS
Id: HER2ReceptorStatusVS
Title: "HER2 receptor status ValueSet"
Description: "Valueset of the HER2 receptor status"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/HER2ReceptorStatusVS

* SCT#431396003 "Human epidermal growth factor 2 negative carcinoma of breast"
* SCT#427685000 "Human epidermal growth factor 2 positive carcinoma of breast"
* SCT#280414007 "Equivocal result"
* SCT#416237000 "Procedure not done"

CodeSystem: MolecularProfilingCodeSystem
Id: MolecularProfilingCodeSystem
Title: "Molecular Profiling CodeSystem"
Description: "Codes used to describe the different types of molecular profiling scoring"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/MolecularProfilingCodeSystem 
* insert CodeSystemRuleset
* #Mammaprint "Mammaprint Score" 
* #Oncotype "Oncotype Score" 
* #Endopredict "Endopredict Score" 

ValueSet: MolecularProfilingStatusVS
Id: MolecularProfilingStatusVS
Title: "Molecular profiling"
Description: "Valueset indicating if a molecular profiling tool was used"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/MolecularProfilingStatusVS

* include MolecularProfilingCodeSystem#Mammaprint "Mammaprint Score" 
* include MolecularProfilingCodeSystem#Oncotype "Oncotype Score" 
* include MolecularProfilingCodeSystem#Endopredict "Endopredict Score" 

//  BASELINE CLINICAL FACTORS 

CodeSystem: SACQPatientComorbidityCodeSystem
Id: SACQPatientComorbidityCodeSystem
Title: "SACQ patient's comorbidity history CodeSystem"
Description: "Codes used in SACQ patient's comorbidity history that are not available yet in standard terminologies"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/SACQPatientComorbidityCodeSystem 
* insert CodeSystemRuleset

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
Title: "SACQ Patient's comorbidity history ValueSet"
Description: "Patient's documented history of comorbidities"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/SACQPatientComorbidityHistory

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
Title: "Units of patient's body weight ValueSet"
Description: "Valueset of the unit  of the patient's body weight"
* insert UCUMCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/BodyWeightVS

* UCUM#kg "kg"
* UCUM#[lb_av] "[lb_av]"

ValueSet: LateralityVS
Id: LateralityVS
Title: "Laterality of breast cancer ValueSet"
Description: "Valueset of the laterality of breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/LateralityVS

* SCT#80248007 "Left breast structure"
* SCT#73056007 "Right breast structure"
* SCT#63762007 "Both breasts"

ValueSet: LateralityNewCancerVS
Id: LateralityNewCancerVS
Title: "Laterality of new cancer ValueSet"
Description: "Valueset of the laterality of new breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/LateralityNewCancerVS

* SCT#255208005 "Ipsilateral"
* SCT#255209002 "Contralateral"

//  TREATMENT VARIABLES 

// TreatmentType \\
CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables CodeSytem"
Description: "Codes defining types of treatment a breast cancer patient could receive"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/TreatmentTypesCodeSystem 
* insert CodeSystemRuleset
* #A_chemo "Adjuvant chemotherapy"
* #N_A_chemo "Neoadjuvant chemotherapy"
* #Targ_Thrpy "Targeted therapy"
* #no_treat "No treatment"

ValueSet: TreatmentTypeVS
Id: TreatmentTypeVS
Title: "Type of treatments ValueSet"
Description: "Valueset of the kind of treatment a patient with breastcancer underwent"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TreatmentTypeVS

* include TreatmentTypesCodeSystem#no_treat "No treatment"
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
Title: "Recommended treatment types ValueSet"
Description: "Valueset of the kind of treatment that the multidisciplinary team recommended"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/RecommendedTreatmentTypeVS

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
Title: "Breast surgery types CodeSystem"
Description: "Codes indicating the types of breast surgery a patient underwent"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/BreastSurgeryTypesCodeSystem 
* insert CodeSystemRuleset
* #0 "Breast conserving surgery (BCS)"
* #1 "BCS with mammoplasty"
* #2 "Mastectomy without immediate reconstruction"
* #3 "Mastectomy with immediate reconstruction"

ValueSet: BreastSurgeryTypeVS
Id: BreastSurgeryTypeVS
Title: "Types of breast surgery ValueSet"
Description: "Valueset of the types of breast surgery a patient underwent"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/BreastSurgeryTypeVS

* include BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* include BreastSurgeryTypesCodeSystem#1 "BCS with mammoplasty"
* include BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* include BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

// Axilla surgery
ValueSet: AxillaSurgeryVS
Id: AxillaSurgeryVS
Title: "Axilla surgery ValueSet"
Description: "Valueset of surgery types of the axilla"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/AxillaSurgeryVS

* SCT#396487001 "Sentinel lymph node biopsy"
* SCT#234262008 "Excision of axillary lymph node"
* SCT#79544006 "Complete axillary lymphadenectomy"
* NullFlavor#UNK "unknown"

ValueSet: TargetedAxillaSurgeryVS
Id: TargetedAxillaSurgeryVS
Title: "Targeted axilla surgery ValueSet"
Description: "Valueset of targeted surgery types of the axilla"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TargetedAxillaSurgeryVS

* SCT#396487001 "Sentinel lymph node biopsy"
* SCT#234262008 "Excision of axillary lymph node"
* NullFlavor#UNK "unknown"

// Reconstruction surgery 
CodeSystem: ReconstructionTypeCodeSystem
Id: ReconstructionTypeCodeSystem
Title: "Type of reconstruction surgery CodeSystem"
Description: "Codes indicating the type of reconstruction surgery that is performed"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/ReconstructionTypeCodeSystem
* insert CodeSystemRuleset
* #Direct_imp "Direct implant"
* #Staged_imp "Staged implant"
* #Autologous "Autologous"
* #Both "Both implant and autologous"

ValueSet: ReconstructionTypeVS
Id: ReconstructionTypeVS
Title: "Type of reconstruction surgery ValueSet"
Description: "Valueset of the type of reconstruction surgery that is performed"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ReconstructionTypeVS

* include ReconstructionTypeCodeSystem#Direct_imp "Direct implant"
* include ReconstructionTypeCodeSystem#Staged_imp "Staged implant"
* include ReconstructionTypeCodeSystem#Autologous "Autologous"
* include ReconstructionTypeCodeSystem#Both "Both implant and autologous"
* NullFlavor#UNK "unknown"

CodeSystem: ImplantLocationCodeSystem
Id: ImplantLocationCodeSystem
Title: "Location of the implant CodeSystem"
Description: "Codes indicating the location of the implant that was placed during reconstruction surgery"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/ImplantLocationCodeSystem
* insert CodeSystemRuleset
* #Pre_pect "Pre-pectoral"
* #Sub_pect "Sub-pectoral"

ValueSet: ImplantLocationVS
Id: ImplantLocationVS
Title: "Location of the implant ValueSet"
Description: "Valueset of the location of the implant during reconstruction surgery"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ImplantLocationVS

* include ImplantLocationCodeSystem#Pre_pect "Pre-pectoral"
* include ImplantLocationCodeSystem#Sub_pect "Sub-pectoral"

// Therapy intent
ValueSet: TherapyIntentVS
Id: TherapyIntentVS
Title: "Intent of therapy ValueSet"
Description: "Valueset of intent of therapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TherapyIntentVS

* SCT#373847000 "Neo-adjuvant - intent"
* SCT#373846009 "Adjuvant - intent"
* NullFlavor#UNK "unknown"

// Radiotherapy
ValueSet: LocationRadiotherapyVS
Id: LocationRadiotherapyVS
Title: "The location of radiotherapy ValueSet"
Description: "Valueset of the location of radiotherapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/LocationRadiotherapyVS

* SCT#76752008 "Breast structure"
* SCT#78904004 "Chest wall structure"
* SCT#68171009 "Axillary lymph node structure"
* SCT#76838003 "Structure of supraclavicular lymph node"
* SCT#245282001 "Internal mammary lymph node group"
* SCT#263601005 "Site of tumor"
* SCT#277671009 "Intraoperative"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

// Chemotherapy
ValueSet: ChemoTherapyTypeVS
Id: ChemoTherapyTypeVS
Title: "Type of chemotherapy ValueSet"
Description: "Valueset of the types of chemotherapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ChemoTherapyTypeVS

* SCT#108787006 "Medicinal product containing anthracycline and acting as antineoplastic agent"
* SCT#418965003 "Taxane derivative"
* SCT#768621002 "Product containing platinum and platinum compound"
* SCT#386906001 "Capecitabine"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

// Hormonal therapy
ValueSet: HormonalTherapyTypeVS
Id: HormonalTherapyTypeVS
Title: "Type of hormonal therapy ValueSet"
Description: "Valueset of the types of hormonal therapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/HormonalTherapyTypeVS

* SCT#413575009 "Substance with aromatase inhibitor mechanism of action"
* SCT#373336003 "Substance with estrogen receptor antagonist mechanism of action"
* SCT#83152002 "Oophorectomy"
* SCT#418974001 "Gonad regulating hormone agent"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

// Targeted therapy
ValueSet: TargetedTherapyVS
Id: TargetedTherapyVS
Title: "Type of targeted therapy ValueSet"
Description: "Valueset of the types of targeted therapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TargetedTherapyVS

* SCT#784176007 "HER2 (Human epidermal growth factor receptor 2) inhibitor"
* SCT#426265004 "Substance with protein kinase inhibitor mechanism of action"
* SCT#432253008 "Substance with nicotinamide adenine dinucleotide adenosine diphosphate ribosyltransferase inhibitor mechanism of action"
* NullFlavor#OTH "other"
* NullFlavor#UNK "unknown"

// Treatment plan
CodeSystem: TreatmentPlanFollowedCodeSystem
Id: TreatmentPlanFollowedCodeSystem
Title: "Real Treatment Plan Followed CodeSystem"
Description: "Codes covering if the patient followed the multidisciplinary recommended treatment plan"
* ^url = https://connect.ichom.org/fhir/CodeSystem/TreatmentPlanFollowedCodeSystem
* insert CodeSystemRuleset

* #0 "No, not followed"
* #1 "Yes, fully followed"
* #2 "Some treatments followed"

ValueSet: TreatmentPlanFollowedVS
Id: TreatmentPlanFollowedVS
Title: "Real Treatment Plan Followed ValueSet"
Description: "Valueset of if the patient followed the multidisciplinary recommended treatment plan"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TreatmentPlanFollowedVS

* TreatmentPlanFollowedCodeSystem#0 "No, not followed"
* TreatmentPlanFollowedCodeSystem#1 "Yes, fully followed"
* TreatmentPlanFollowedCodeSystem#2 "Some treatments followed"

CodeSystem: TreatmentPlanNotFollowedCodeSystem
Id: TreatmentPlanNotFollowedCodeSystem
Title: "Real Treatment Plan Not Followed CodeSystem"
Description: "Codes covering if the patient has not followed the multidisciplinary recommended treatment plan"
* ^url = https://connect.ichom.org/fhir/CodeSystem/TreatmentPlanNotFollowedCodeSystem
* insert CodeSystemRuleset

* #1 "Patient preference"
* #2 "Clinical reasons"

ValueSet: TreatmentPlanNotFollowedVS
Id: TreatmentPlanNotFollowedVS
Title: "Treatment Plan Not Followed ValueSet"
Description: "Valueset of reason for the treatment plan not being followed"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TreatmentPlanNotFollowedVS

* TreatmentPlanNotFollowedCodeSystem#1 "Patient preference" // SCT#105480006 "Refusal of treatment by patient"
* TreatmentPlanNotFollowedCodeSystem#2 "Clinical reasons"
* NullFlavor#UNK "unknown"

// Patient education
CodeSystem: PatientEducationCodeSystem
Id: PatientEducationCodeSystem
Title: "Patient Treatment Education Codesystem"
Description: "Codes covering if the patient received sufficient information about the treatment options"
* ^url = https://connect.ichom.org/fhir/CodeSystem/PatientEducationCodeSystem
* insert CodeSystemRuleset
* #1 "Strongly agree"
* #2 "Agree"
* #3 "Somewhat agree"
* #4 "Disagree"
* #5 "Strongly disagree"

ValueSet: PatientEducationVS
Id: PatientEducationVS
Title: "Patient Treatment Education ValueSet"
Description: "Valueset covering if the patient received sufficient information about the treatment options"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/PatientEducationVS

* PatientEducationCodeSystem#1 "Strongly agree"
* PatientEducationCodeSystem#2 "Agree"
* PatientEducationCodeSystem#3 "Somewhat agree"
* PatientEducationCodeSystem#4 "Disagree" 
* PatientEducationCodeSystem#5 "Strongly disagree"

// Patient preference 
CodeSystem: PatientTreatPrefCodeSystem
Id: PatientTreatPrefCodeSystem
Title: "Patient treatment preference CodeSystem"
Description: "Codes covering for why the treatment plan was not followed"
* ^url = https://connect.ichom.org/fhir/CodeSystem/PatientTreatPrefCodeSystem
* insert CodeSystemRuleset

* #1 "Personal preference"
* #2 "Different plan recommended by clinical team"

ValueSet: PatientTreatPrefVS
Id: PatientTreatPrefVS
Title: "Patient treatment preference ValueSet"
Description: "Valueset of reason for why the treatment plan was not followed"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/PatientTreatPrefVS

* PatientTreatPrefCodeSystem#1 "Personal preference" // SCT#105480006 "Refusal of treatment by patient"
* SCT#309846006 "Treatment not available"
* PatientTreatPrefCodeSystem#2 "Different plan recommended by clinical team"
* NullFlavor#OTH "other"

CodeSystem: TreatmentPlanComplianceCodeSystem
Id: TreatmentPlanComplianceCodeSystem
Title: "Observation identifiers for treatment plan non-compliance reason CodeSystem"
Description: "Codes covering observation identifiers for treatment plan non-compliance reaso"
* ^url = https://connect.ichom.org/fhir/CodeSystem/TreatmentPlanComplianceCodeSystem
* insert CodeSystemRuleset

* #1 "Reason for not following original treatment plan"
* #2 "Patient reported reason for not following recommened treatment"

ValueSet: TreatmentPlanComplianceVS
Id: TreatmentPlanComplianceVS
Title: "Observation identifiers for treatment plan non-compliance reason ValueSet"
Description: "Valueset of reason for why the treatment plan was not followed"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/TreatmentPlanComplianceVS

* TreatmentPlanComplianceCodeSystem#1 "Reason for not following original treatment plan"
* TreatmentPlanComplianceCodeSystem#2 "Patient reported reason for not following recommened treatment"


// DISUTILITY OF CARE
// Reoperations
ValueSet: ReoperationTypeVS
Id: ReoperationTypeVS
Title: "Type of re-operation"
Description: "Valueset of the types of re-operation"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ReoperationTypeVS

* SCT#33496007 "Reconstruction of breast"
* SCT#69031006 "Excision of breast tissue"
* SCT#234254000 "Excision of axillary lymph nodes group"
* BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* BreastSurgeryTypesCodeSystem#1 "Breast conserving surgery with mammoplasty"
* BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

ValueSet: InvolvedMarginsReoperationTypeVS
Id: InvolvedMarginsReoperationTypeVS
Title: "Re-operation due to involved margins ValueSet"
Description: "Kind of re-operation due to involved margins"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/InvolvedMarginsReoperationTypeVS

* SCT#373572006 "Clinical finding absent"
* BreastSurgeryTypesCodeSystem#0 "Breast conserving surgery (BCS)"
* BreastSurgeryTypesCodeSystem#1 "BCS with mammoplasty"
* BreastSurgeryTypesCodeSystem#2 "Mastectomy without immediate reconstruction"
* BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

ValueSet: ReoperationReasonVS
Id: ReoperationReasonVS
Title: "Reasoncode of the re-operation"
Description: "Valueset of the reasons of a re-operation"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ReoperationReasonVS

* SCT#1156344002 "Presence of primary malignant neoplasm of breast at surgical margin in excised specimen of breast"
* NullFlavor#OTH "other"

// Complications
CodeSystem: ComplicationImpactCodeSystem
Id: ComplicationImpactCodeSystem
Title: "Impact of complication CodeSystem"
Description: "Codes indicating the impact of a complication experienced by the breast cancer patient"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/ComplicationImpactCodeSystem
* insert CodeSystemRuleset
* #1 "No complication"
* #2 "Complication leading to prolonged hospitalization (>14days)"
* #5 "Complication leading to discontinuing of treatment"
* #8 "Complication, but did not result in any of the abovementioned"

ValueSet: ComplicationImpactVS
Id: ComplicationImpactVS
Title: "Impact of complication ValueSet"
Description: "ValueSet of the impact of a complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ComplicationImpactVS

* ComplicationImpactCodeSystem#1 "No complication"
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
Title: "Type of complication CodeSystem"
Description: "Codes indicating the type of a complication experienced by the breast cancer patient"
* ^url =  https://connect.ichom.org/fhir/CodeSystem/ComplicationTypeCodeSystem
* insert CodeSystemRuleset
* #4 "Partial autologous graft loss"
* #5 "Total autologous graft loss"
* #9 "Delay wound healing/dehiscence"
* #13 "Immune related toxicity"

ValueSet: ComplicationTypeVS
Id: ComplicationTypeVS
Title: "Type of complication ValueSet"
Description: "ValueSet of the type of complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/ComplicationTypeVS

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
* insert HL7CopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/NoYesUnknownVS

* YesNoUnkCS#Y "Yes" 
* YesNoUnkCS#N "No"
* YesNoUnkCS#UNK "Unknown"

// Recurrence
CodeSystem: RecurrenceCodeSystem
Id: RecurrenceCodeSystem
Title: "Recurrence of neoplasm CodeSystem"
Description: "Additional code covering whether there is evidence of local, regional or distant recurrence of neoplasm"
* ^url = https://connect.ichom.org/fhir/CodeSystem/RecurrenceCodeSystem
* insert CodeSystemRuleset
* #1 "Yes, local recurrence"
* #2 "Yes, regional recurrence" 
* #3 "Yes, distant recurrence"

ValueSet: RecurrenceVS
Id: RecurrenceVS
Title: "Recurrence of neoplasm ValueSet"
Description: "Valueset about whether there is evidence of local, regional or distant recurrence of neoplasm"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/RecurrenceVS

* YesNoUnkCS#N "No"
* RecurrenceCodeSystem#1 "Yes, local recurrence"
* RecurrenceCodeSystem#2 "Yes, regional recurrence" 
* RecurrenceCodeSystem#3 "Yes, distant recurrence"
* NullFlavor#UNK "unknown"

CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Recurrence method CodeSystem"
Description: "Additional code covering combination of radiological and histological diagnosis method"
* ^url = https://connect.ichom.org/fhir/CodeSystem/RecurrenceMethodCodeSystem
* insert CodeSystemRuleset
* #2 "Radiological and histological diagnosis"

ValueSet: RecurrenceMethodVS
Id: RecurrenceMethodVS
Title: "Recurrence method ValueSet"
Description: "Valueset of the methods used to confirm recurrence of breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/RecurrenceMethodVS

* SCT#394914008 "Radiology"
* SCT#67151002 "Histologic"
* RecurrenceMethodCodeSystem#2 "Radiological and histological diagnosis"
* NullFlavor#UNK "unknown"


//  DEGREE OF HEALTH 

// EORTC-QLQ
CodeSystem: AgreementResponseCodeSystem
Id: AgreementResponseCodeSystem
Title: "Agreement response CodeSystem"
Description: "Codes used in a Patient Reported Outcomes Instrument to express the degree of agreement"
* ^url = https://connect.ichom.org/fhir/CodeSystem/AgreementResponseCodeSystem
* insert CodeSystemRuleset
* #1 "Not at all"
* #2 "A little"
* #3 "Quite a bit"
* #4 "Very much"

ValueSet: AgreementResponseVS
Id: AgreementResponseVS
Title: "Agreement response ValueSet"
Description: "Valueset used in a Patient Reported Outcomes Instrument to express the degree of agreement"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/AgreementResponseVS

* AgreementResponseCodeSystem#1 "Not at all"
* AgreementResponseCodeSystem#2 "A little"
* AgreementResponseCodeSystem#3 "Quite a bit"
* AgreementResponseCodeSystem#4 "Very much"

// BreastQ \\
CodeSystem: SatisfactionResponseCodeSystem
Id: SatisfactionResponseCodeSystem
Title: "Satisfaction response CodeSystem"
Description: "Codes used in a Patient Reported Outcomes Instrument to express the statisfation response"
* ^url = https://connect.ichom.org/fhir/CodeSystem/SatisfactionResponseCodeSystem
* insert CodeSystemRuleset

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: SatisfactionResponseVS 
Id: SatisfactionResponseVS
Title: "Satisfaction response ValueSet"
Description: "Valueset used in a Patient Reported Outcomes Instrument to express the statisfation response"
* insert ValuesetRuleset
* ^url = https://connect.ichom.org/fhir/ValueSet/SatisfactionResponseVS

* SatisfactionResponseCodeSystem#1 "Very dissatisfied"
* SatisfactionResponseCodeSystem#2 "Somewhat dissatisfied"
* SatisfactionResponseCodeSystem#3 "Somewhat satisfied"
* SatisfactionResponseCodeSystem#4 "Very satisfied"

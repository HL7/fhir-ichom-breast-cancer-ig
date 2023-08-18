// DEMOGRAPHICS CodeSystems 
ValueSet: RelationshipStatusVS
Id: RelationshipStatusVS
Title: "Relationship status of patient ValueSet"
Description: "Valueset of the relationship status of a patient"
* insert ValuesetRuleset
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
* SCT#445180002 "Breast cancer genetic marker of susceptibility not detected (finding)"
* SCT#412734009 "BRCA1 gene mutation positive (finding)"
* SCT#412738007 "BRCA2 gene mutation detected (finding)"
* NullFlavor#OTH "other"
* SCT#416237000 "Procedure not done (situation)"

ValueSet: GradingVS
Id: GradingVS
Title: "Grading of tumor ValueSet"
Description: "Valueset of the grade of the tumor"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
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
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"

ValueSet: TNMPrimaryTumorVS
Id: TNMPrimaryTumorVS
Title: "TNM Primary Tumor ValueSet"
Description: "Valueset of the TNM stage for the T category, according to TNM staging rules"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#1222604002 "American Joint Committee on Cancer cTX (qualifier value)"
* SCT#1228882005 "American Joint Committee on Cancer cT0 (qualifier value)"
* SCT#1228885007 "American Joint Committee on Cancer cTis(DCIS) (qualifier value)"
* SCT#1228888009 "American Joint Committee on Cancer cTis(Paget) (qualifier value)"
* SCT#1228889001 "American Joint Committee on Cancer cT1 (qualifier value)"
* SCT#1228929004 "American Joint Committee on Cancer cT2 (qualifier value)"
* SCT#1228938002 "American Joint Committee on Cancer cT3 (qualifier value)"
* SCT#1228944003 "American Joint Committee on Cancer cT4 (qualifier value)"
* SCT#1228950008 "American Joint Committee on Cancer pTX (qualifier value)"
* SCT#1228951007 "American Joint Committee on Cancer pT0 (qualifier value)"
* SCT#1228954004 "American Joint Committee on Cancer pTis(DCIS) (qualifier value)"
* SCT#1228956002 "American Joint Committee on Cancer pTis(Paget) (qualifier value)"
* SCT#1228957006 "American Joint Committee on Cancer pT1 (qualifier value)"
* SCT#1229852009 "American Joint Committee on Cancer pT2 (qualifier value)"
* SCT#1229859000 "American Joint Committee on Cancer pT3 (qualifier value)"
* SCT#1229864001 "American Joint Committee on Cancer pT4 (qualifier value)"
* NullFlavor#UNK "unknown"

ValueSet: TNMRegionalNodesVS
Id: TNMRegionalNodesVS
Title: "TNM Regional Nodes ValueSet"
Description: "Valueset of the TNM stage for the N category, according to TNM staging rules"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset

* SCT#1229966003 "American Joint Committee on Cancer cNX"
* SCT#1229967007 "American Joint Committee on Cancer cN0"
* SCT#1229973008 "American Joint Committee on Cancer cN1"
* SCT#1229978004 "American Joint Committee on Cancer cN2"
* SCT#1229984001 "American Joint Committee on Cancer cN3"
* SCT#1229945006 "American Joint Committee on Cancer pNX"
* SCT#1229947003 "American Joint Committee on Cancer pN0"
* SCT#1229951001 "American Joint Committee on Cancer pN1"
* SCT#1229957002 "American Joint Committee on Cancer pN2"
* SCT#1229962001 "American Joint Committee on Cancer pN3"
* NullFlavor#UNK "unknown"

ValueSet: TNMDistantMetastasesVS
Id: TNMDistantMetastasesVS
Title: "TNM Distant Metastases ValueSet"
Description: "Valueset of the TNM stage for the M category, according to TNM staging rules"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#1229901006 "American Joint Committee on Cancer cM0"
* SCT#1229903009 "American Joint Committee on Cancer cM1"
* SCT#1229916009 "American Joint Committee on Cancer pM1"
* NullFlavor#UNK "unknown"

ValueSet: EstrogenStatusVS
Id: EstrogenStatusVS
Title: "Estrogen receptor status ValueSet"
Description: "Valueset of the Estrogen receptor status"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
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
* SCT#431396003 "Human epidermal growth factor 2 negative carcinoma of breast"
* SCT#427685000 "Human epidermal growth factor 2 positive carcinoma of breast"
* SCT#280414007 "Equivocal result"
* SCT#416237000 "Procedure not done"

CodeSystem: MolecularProfilingCodeSystem
Id: MolecularProfilingCodeSystem
Title: "Molecular Profiling CodeSystem"
Description: "Codes used to describe the different types of molecular profiling scoring"

* insert CodeSystemRuleset

* #mammaprint "Mammaprint Score" 
* #oncotype "Oncotype Score" 
* #endopredict "Endopredict Score" 

ValueSet: MolecularProfilingStatusVS
Id: MolecularProfilingStatusVS
Title: "Molecular profiling"
Description: "Valueset indicating if a molecular profiling tool was used"
* insert ValuesetRuleset
* include MolecularProfilingCodeSystem#mammaprint "Mammaprint Score" 
* include MolecularProfilingCodeSystem#oncotype "Oncotype Score" 
* include MolecularProfilingCodeSystem#endopredict "Endopredict Score" 

//  BASELINE CLINICAL FACTORS 
ValueSet: SACQPatientComorbidityHistory
Id: SACQPatientComorbidityHistory
Title: "SACQ Patient's comorbidity history ValueSet"
Description: "Patient's documented history of comorbidities"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset 
* include SCT#373572006 "I have no other diseases"
* include SCT#56265001 "Heart disease (For example, angina, heart attack, or heart failure)"
* include SCT#38341003 "High blood pressure"
* include SCT#19829001 "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* include SCT#73211009 "Diabetes"
* include SCT#29384001 "Ulcer or stomach disease"
* include SCT#90708001 "Kidney disease"
* include SCT#235856003 "Liver disease"
* include SCT#414022008 "Anemia or other blood disease"
* include SCT#363346000 "Cancer/Other cancer (within the last 5 years)"
* include SCT#35489007 "Depression"
* include SCT#396275006 "Osteoarthritis, degenerative arthritis"
* include SCT#161891005 "Back pain" 
* include SCT#69896004 "Rheumatoid arthritis"
* include NullFlavor#OTH "Other medical problems" 

ValueSet: BodyWeightVS
Id: BodyWeightVS
Title: "Units of patient's body weight ValueSet"
Description: "Valueset of the unit  of the patient's body weight"
* insert UCUMCopyrightForVS
* insert ValuesetRuleset
* UCUM#kg "kg"
* UCUM#[lb_av] "[lb_av]"

ValueSet: LateralityVS
Id: LateralityVS
Title: "Laterality of breast cancer ValueSet"
Description: "Valueset of the laterality of breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#80248007 "Left breast structure"
* SCT#73056007 "Right breast structure"
* SCT#63762007 "Both breasts"

ValueSet: LateralityNewCancerVS
Id: LateralityNewCancerVS
Title: "Laterality of new cancer ValueSet"
Description: "Valueset of the laterality of new breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#255208005 "Ipsilateral"
* SCT#255209002 "Contralateral"

//  TREATMENT VARIABLES 
// TreatmentType \\
CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables CodeSytem"
Description: "Codes defining types of treatment a breast cancer patient could receive"

* insert CodeSystemRuleset

* #adjuvant-chemotherapy "Adjuvant chemotherapy"
* #neoadjuvant-chemotherapy "Neoadjuvant chemotherapy"
* #targeted-therapy "Targeted therapy"
* #no-treatment "No treatment"

ValueSet: TreatmentTypeVS
Id: TreatmentTypeVS
Title: "Type of treatments ValueSet"
Description: "Valueset of the kind of treatment a patient with breastcancer underwent"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* include TreatmentTypesCodeSystem#no-treatment "No treatment"
* include SCT#387713003 "Surgical procedure"
* include SCT#699455008 "Operative procedure on axilla"
* include SCT#33496007 "Reconstruction of breast" 
* include SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* include TreatmentTypesCodeSystem#adjuvant-chemotherapy "Adjuvant chemotherapy"
* include TreatmentTypesCodeSystem#neoadjuvant-chemotherapy "Neoadjuvant chemotherapy"
* include SCT#169413002 "Hormone therapy"
* include TreatmentTypesCodeSystem#targeted-therapy "Targeted therapy"
* include SCT#76334006 "Immunotherapy"
* include SCT#243114000 "Support"
* NullFlavor#UNK "unknown"

ValueSet: RecommendedTreatmentTypeVS
Id: RecommendedTreatmentTypeVS
Title: "Recommended treatment types ValueSet"
Description: "Valueset of the kind of treatment that the multidisciplinary team recommended"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* include SCT#387713003 "Surgical procedure"
* include SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* include TreatmentTypesCodeSystem#adjuvant-chemotherapy "Adjuvant chemotherapy"
* include TreatmentTypesCodeSystem#neoadjuvant-chemotherapy "Neoadjuvant chemotherapy"
* include SCT#169413002 "Hormone therapy"
* include TreatmentTypesCodeSystem#targeted-therapy "Targeted therapy"
* include SCT#76334006 "Immunotherapy"
* include SCT#243114000 "Support"

// Breast Surgery Type \\
CodeSystem: BreastSurgeryTypesCodeSystem
Id: BreastSurgeryTypesCodeSystem
Title: "Breast surgery types CodeSystem"
Description: "Codes indicating the types of breast surgery a patient underwent"

* insert CodeSystemRuleset

* #bcs "Breast conserving surgery (BCS)"
* #bcs-with-mammoplasty "BCS with mammoplasty"
* #mastectomy-without-immediate-reconstruction "Mastectomy without immediate reconstruction"
* #mastectomy-with-immediate-reconstruction "Mastectomy with immediate reconstruction"

ValueSet: BreastSurgeryTypeVS
Id: BreastSurgeryTypeVS
Title: "Types of breast surgery ValueSet"
Description: "Valueset of the types of breast surgery a patient underwent"
* insert ValuesetRuleset
* include BreastSurgeryTypesCodeSystem#bcs "Breast conserving surgery (BCS)"
* include BreastSurgeryTypesCodeSystem#bcs-with-mammoplasty "BCS with mammoplasty"
* include BreastSurgeryTypesCodeSystem#mastectomy-without-immediate-reconstruction "Mastectomy without immediate reconstruction"
* include BreastSurgeryTypesCodeSystem#mastectomy-with-immediate-reconstruction "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

// Axilla surgery
ValueSet: AxillaSurgeryVS
Id: AxillaSurgeryVS
Title: "Axilla surgery ValueSet"
Description: "Valueset of surgery types of the axilla"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
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
* SCT#396487001 "Sentinel lymph node biopsy"
* SCT#234262008 "Excision of axillary lymph node"
* NullFlavor#UNK "unknown"

// Reconstruction surgery 
CodeSystem: ReconstructionTypeCodeSystem
Id: ReconstructionTypeCodeSystem
Title: "Type of reconstruction surgery CodeSystem"
Description: "Codes indicating the type of reconstruction surgery that is performed"

* insert CodeSystemRuleset

* #direct-implant "Direct implant"
* #staged-implant "Staged implant"
* #autologous "Autologous"
* #both "Both implant and autologous"

ValueSet: ReconstructionTypeVS
Id: ReconstructionTypeVS
Title: "Type of reconstruction surgery ValueSet"
Description: "Valueset of the type of reconstruction surgery that is performed"
* insert ValuesetRuleset
* include ReconstructionTypeCodeSystem#direct-implant "Direct implant"
* include ReconstructionTypeCodeSystem#staged-implant "Staged implant"
* include ReconstructionTypeCodeSystem#autologous "Autologous"
* include ReconstructionTypeCodeSystem#both "Both implant and autologous"
* NullFlavor#UNK "unknown"

CodeSystem: ImplantLocationCodeSystem
Id: ImplantLocationCodeSystem
Title: "Location of the implant CodeSystem"
Description: "Codes indicating the location of the implant that was placed during reconstruction surgery"

* insert CodeSystemRuleset

* #pre-pectoral "Pre-pectoral"
* #sub-pectoral "Sub-pectoral"

ValueSet: ImplantLocationVS
Id: ImplantLocationVS
Title: "Location of the implant ValueSet"
Description: "Valueset of the location of the implant during reconstruction surgery"
* insert ValuesetRuleset
* include ImplantLocationCodeSystem#pre-pectoral "Pre-pectoral"
* include ImplantLocationCodeSystem#sub-pectoral "Sub-pectoral"
// Therapy intent
ValueSet: TherapyIntentVS
Id: TherapyIntentVS
Title: "Intent of therapy ValueSet"
Description: "Valueset of intent of therapy"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
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

* insert CodeSystemRuleset

* #no "No, not followed"
* #yes "Yes, fully followed"
* #some "Some treatments followed"

ValueSet: TreatmentPlanFollowedVS
Id: TreatmentPlanFollowedVS
Title: "Real Treatment Plan Followed ValueSet"
Description: "Valueset of if the patient followed the multidisciplinary recommended treatment plan"
* insert ValuesetRuleset
* TreatmentPlanFollowedCodeSystem#no "No, not followed"
* TreatmentPlanFollowedCodeSystem#yes "Yes, fully followed"
* TreatmentPlanFollowedCodeSystem#some "Some treatments followed"

CodeSystem: TreatmentPlanNotFollowedCodeSystem
Id: TreatmentPlanNotFollowedCodeSystem
Title: "Real Treatment Plan Not Followed CodeSystem"
Description: "Codes covering if the patient has not followed the multidisciplinary recommended treatment plan"

* insert CodeSystemRuleset

* #patient-preference "Patient preference"
* #clinical-reasons "Clinical reasons"

ValueSet: TreatmentPlanNotFollowedVS
Id: TreatmentPlanNotFollowedVS
Title: "Treatment Plan Not Followed ValueSet"
Description: "Valueset of reason for the treatment plan not being followed"
* insert ValuesetRuleset
* TreatmentPlanNotFollowedCodeSystem#patient-preference "Patient preference" // SCT#105480006 "Refusal of treatment by patient"
* TreatmentPlanNotFollowedCodeSystem#clinical-reasons "Clinical reasons"
* NullFlavor#UNK "unknown"

// Patient education
CodeSystem: PatientEducationCodeSystem
Id: PatientEducationCodeSystem
Title: "Patient Treatment Education Codesystem"
Description: "Codes covering if the patient received sufficient information about the treatment options"

* insert CodeSystemRuleset

* #strongly-agree "Strongly agree"
* #agree "Agree"
* #somewhat-agree "Somewhat agree"
* #disagree "Disagree"
* #strongly-disagree "Strongly disagree"

ValueSet: PatientEducationVS
Id: PatientEducationVS
Title: "Patient Treatment Education ValueSet"
Description: "Valueset covering if the patient received sufficient information about the treatment options"
* insert ValuesetRuleset
* PatientEducationCodeSystem#strongly-agree "Strongly agree"
* PatientEducationCodeSystem#agree "Agree"
* PatientEducationCodeSystem#somewhat-agree "Somewhat agree"
* PatientEducationCodeSystem#disagree "Disagree" 
* PatientEducationCodeSystem#strongly-disagree "Strongly disagree"

// Patient preference 
CodeSystem: PatientTreatPrefCodeSystem
Id: PatientTreatPrefCodeSystem
Title: "Patient treatment preference CodeSystem"
Description: "Codes covering for why the treatment plan was not followed"

* insert CodeSystemRuleset

* #personal-preference "Personal preference"
* #different-plan-recommended "Different plan recommended by clinical team"

ValueSet: PatientTreatPrefVS
Id: PatientTreatPrefVS
Title: "Patient treatment preference ValueSet"
Description: "Valueset of reason for why the treatment plan was not followed"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* PatientTreatPrefCodeSystem#personal-preference "Personal preference" // SCT#105480006 "Refusal of treatment by patient"
* SCT#309846006 "Treatment not available"
* PatientTreatPrefCodeSystem#different-plan-recommended "Different plan recommended by clinical team"
* NullFlavor#OTH "other"

CodeSystem: TreatmentPlanComplianceCodeSystem
Id: TreatmentPlanComplianceCodeSystem
Title: "Observation identifiers for treatment plan non-compliance reason CodeSystem"
Description: "Codes covering observation identifiers for treatment plan non-compliance reaso"

* insert CodeSystemRuleset

* #reason-for-not-following "Reason for not following original treatment plan"
* #patient-reason-for-not-following "Patient reported reason for not following recommened treatment"

ValueSet: TreatmentPlanComplianceVS
Id: TreatmentPlanComplianceVS
Title: "Observation identifiers for treatment plan non-compliance reason ValueSet"
Description: "Valueset of reason for why the treatment plan was not followed"
* insert ValuesetRuleset
* TreatmentPlanComplianceCodeSystem#reason-for-not-following "Reason for not following original treatment plan"
* TreatmentPlanComplianceCodeSystem#patient-reason-for-not-following "Patient reported reason for not following recommened treatment"
// DISUTILITY OF CARE
// Reoperations
ValueSet: ReoperationTypeVS
Id: ReoperationTypeVS
Title: "Type of re-operation"
Description: "Valueset of the types of re-operation"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#33496007 "Reconstruction of breast"
* SCT#69031006 "Excision of breast tissue"
* SCT#234254000 "Excision of axillary lymph nodes group"
* BreastSurgeryTypesCodeSystem#bcs "Breast conserving surgery (BCS)"
* BreastSurgeryTypesCodeSystem#bcs-with-mammoplasty "Breast conserving surgery with mammoplasty"
* BreastSurgeryTypesCodeSystem#mastectomy-without-immediate-reconstruction "Mastectomy without immediate reconstruction"
* BreastSurgeryTypesCodeSystem#mastectomy-with-immediate-reconstruction "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

ValueSet: InvolvedMarginsReoperationTypeVS
Id: InvolvedMarginsReoperationTypeVS
Title: "Re-operation due to involved margins ValueSet"
Description: "Kind of re-operation due to involved margins"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#373572006 "Clinical finding absent"
* BreastSurgeryTypesCodeSystem#bcs "Breast conserving surgery (BCS)"
* BreastSurgeryTypesCodeSystem#bcs-with-mammoplasty "BCS with mammoplasty"
* BreastSurgeryTypesCodeSystem#mastectomy-without-immediate-reconstruction "Mastectomy without immediate reconstruction"
* BreastSurgeryTypesCodeSystem#mastectomy-with-immediate-reconstruction "Mastectomy with immediate reconstruction"
* NullFlavor#UNK "unknown"

ValueSet: ReoperationReasonVS
Id: ReoperationReasonVS
Title: "Reasoncode of the re-operation"
Description: "Valueset of the reasons of a re-operation"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#1156344002 "Presence of primary malignant neoplasm of breast at surgical margin in excised specimen of breast"
* NullFlavor#OTH "other"

// Complications
CodeSystem: ComplicationImpactCodeSystem
Id: ComplicationImpactCodeSystem
Title: "Impact of complication CodeSystem"
Description: "Codes indicating the impact of a complication experienced by the breast cancer patient"

* insert CodeSystemRuleset

* #no-complication "No complication"
* #prolonged-hospitalization "Complication leading to prolonged hospitalization (>14days)"
* #treatment-discontinuation "Complication leading to discontinuing of treatment"
* #no-changes "Complication, but did not result in any of the abovementioned"

ValueSet: ComplicationImpactVS
Id: ComplicationImpactVS
Title: "Impact of complication ValueSet"
Description: "ValueSet of the impact of a complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* ComplicationImpactCodeSystem#no-complication "No complication"
* SCT#240917005 "Interventional radiology"  
* SCT#303577009 "Interventional debulking surgery" 
* ComplicationImpactCodeSystem#prolonged-hospitalization "Complication leading to prolonged hospitalization (>14days)"
* SCT#417005 "Hospital re-admission"
* SCT#397945004 "Unexpected admission to intensive care unit"
* ComplicationImpactCodeSystem#treatment-discontinuation "Complication leading to discontinuing of treatment"
* SCT#182879007 "Medication decreased"
* SCT#419620001 "Death"
* ComplicationImpactCodeSystem#no-changes "Complication, but did not result in any of the abovementioned"
* NullFlavor#UNK "unknown"

CodeSystem: ComplicationTypeCodeSystem
Id: ComplicationTypeCodeSystem
Title: "Type of complication CodeSystem"
Description: "Codes indicating the type of a complication experienced by the breast cancer patient"

* insert CodeSystemRuleset

* #partial-loss "Partial autologous graft loss"
* #total-loss "Total autologous graft loss"
* #delay-wound "Delay wound healing/dehiscence"
* #immune-toxicity "Immune related toxicity"

ValueSet: ComplicationTypeVS
Id: ComplicationTypeVS
Title: "Type of complication ValueSet"
Description: "ValueSet of the type of complication experienced by the breast cancer patient"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#76844004  "Local infection of wound"
* SCT#715068009 "Seroma"
* SCT#385494008 "Hematoma"
* SCT#131148009 "Bleeding"
* SCT#403678005 "Skin flap necrosis"
* ComplicationTypeCodeSystem#partial-loss "Partial autologous graft loss"
* ComplicationTypeCodeSystem#total-loss "Total autologous graft loss"
* SCT#27315000 "Removal of breast implant"
* SCT#371039008 "Thromboembolic disorder"
* SCT#57182000  "Nerve injury"
* ComplicationTypeCodeSystem#delay-wound "Delay wound healing/dehiscence"
* SCT#403675008 "Drug-induced dermatosis"
* SCT#233604007 "Pneumonia"
* SCT#443980004 "Neutropenic sepsis"
* ComplicationTypeCodeSystem#immune-toxicity "Immune related toxicity"
* NullFlavor#UNK "unknown"
* NullFlavor#OTH "other"

// SURVIVAL AND DISEASE CONTROL 
ValueSet: NoYesUnknownVS
Id: NoYesUnknownVS
Title: "Yes, No and Unknown Valueset"
Description: "Valueset with yes, no and unknown answers"
* insert HL7CopyrightForVS
* insert ValuesetRuleset
* YesNoUnkCS#Y "Yes" 
* YesNoUnkCS#N "No"
* YesNoUnkCS#UNK "Unknown"

// Recurrence
CodeSystem: RecurrenceCodeSystem
Id: RecurrenceCodeSystem
Title: "Recurrence of neoplasm CodeSystem"
Description: "Additional code covering whether there is evidence of local, regional or distant recurrence of neoplasm"

* insert CodeSystemRuleset

* #local-recurrence "Yes, local recurrence"
* #regional-recurrence "Yes, regional recurrence" 
* #distant-recurrence "Yes, distant recurrence"

ValueSet: RecurrenceVS
Id: RecurrenceVS
Title: "Recurrence of neoplasm ValueSet"
Description: "Valueset about whether there is evidence of local, regional or distant recurrence of neoplasm"
* insert ValuesetRuleset
* YesNoUnkCS#N "No"
* RecurrenceCodeSystem#local-recurrence "Yes, local recurrence"
* RecurrenceCodeSystem#regional-recurrence "Yes, regional recurrence" 
* RecurrenceCodeSystem#distant-recurrence "Yes, distant recurrence"
* NullFlavor#UNK "unknown"

CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Recurrence method CodeSystem"
Description: "Additional code covering combination of radiological and histological diagnosis method"

* insert CodeSystemRuleset

* #radiological-histological "Radiological and histological diagnosis"

ValueSet: RecurrenceMethodVS
Id: RecurrenceMethodVS
Title: "Recurrence method ValueSet"
Description: "Valueset of the methods used to confirm recurrence of breast cancer"
* insert SNOMEDCopyrightForVS
* insert ValuesetRuleset
* SCT#394914008 "Radiology"
* SCT#67151002 "Histologic"
* RecurrenceMethodCodeSystem#radiological-histological "Radiological and histological diagnosis"
* NullFlavor#UNK "unknown"
//  DEGREE OF HEALTH 

// EORTC-QLQ
CodeSystem: AgreementResponseCodeSystem
Id: AgreementResponseCodeSystem
Title: "Agreement response CodeSystem"
Description: "Codes used in a Patient Reported Outcomes Instrument to express the degree of agreement"

* insert CodeSystemRuleset

* #no "Not at all"
* #little "A little"
* #quite "Quite a bit"
* #very "Very much"

ValueSet: AgreementResponseVS
Id: AgreementResponseVS
Title: "Agreement response ValueSet"
Description: "Valueset used in a Patient Reported Outcomes Instrument to express the degree of agreement"
* insert ValuesetRuleset
* AgreementResponseCodeSystem#no "Not at all"
* AgreementResponseCodeSystem#little "A little"
* AgreementResponseCodeSystem#quite "Quite a bit"
* AgreementResponseCodeSystem#very "Very much"

// BreastQ \\
CodeSystem: SatisfactionResponseCodeSystem
Id: SatisfactionResponseCodeSystem
Title: "Satisfaction response CodeSystem"
Description: "Codes used in a Patient Reported Outcomes Instrument to express the statisfation response"

* insert CodeSystemRuleset

* #very-dissatisfied "Very dissatisfied"
* #somewhat-dissatisfied "Somewhat dissatisfied"
* #somewhat-satisfied "Somewhat satisfied"
* #very-satisfied "Very satisfied"

ValueSet: SatisfactionResponseVS 
Id: SatisfactionResponseVS
Title: "Satisfaction response ValueSet"
Description: "Valueset used in a Patient Reported Outcomes Instrument to express the statisfation response"
* insert ValuesetRuleset
* SatisfactionResponseCodeSystem#very-dissatisfied "Very dissatisfied"
* SatisfactionResponseCodeSystem#somewhat-dissatisfied "Somewhat dissatisfied"
* SatisfactionResponseCodeSystem#somewhat-satisfied "Somewhat satisfied"
* SatisfactionResponseCodeSystem#very-satisfied "Very satisfied"

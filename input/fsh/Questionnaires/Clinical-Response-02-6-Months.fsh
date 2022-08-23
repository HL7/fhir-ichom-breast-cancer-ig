Instance: ClinicalResponseSixMonths
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical response questionnaire at 6 months post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "ClinicalResponseSixMonths"
* title = "Clinical response at 6 months post-treatment follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
    * type = #integer //or string
    * text = "What is the patient's medical record number?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "What is the patient's last name?"
    * required = true

// GROUP 2 - TUMOR FACTORS
* item[+]
  * linkId = "Tumor-Factors"
  * type = #group
  * text = "Tumor factors"
  * required = true
  
  * item[+]
    * linkId = "MUTBC"
    * type = #choice
    * text = "Please indicate if the patient carries a genetic mutation predisposing breast cancer:"
    * answerOption[+].valueCoding = urn:uuid:3006917e-2afc-45f1-872e-b29a270a216e#0 "No mutation"
    * answerOption[+].valueCoding = urn:uuid:3006917e-2afc-45f1-872e-b29a270a216e#1 "BRCA 1"
    * answerOption[+].valueCoding = urn:uuid:3006917e-2afc-45f1-872e-b29a270a216e#2 "BRCA 2"
    * answerOption[+].valueCoding = urn:uuid:3006917e-2afc-45f1-872e-b29a270a216e#3 "Other mutation"
    * answerOption[+].valueCoding = urn:uuid:3006917e-2afc-45f1-872e-b29a270a216e#4 "Not tested"
    * required = true

  * item[+]
    * linkId = "received_surgery"
    * type = #boolean
    * text = "Has the patient received surgery?"
    * required = true
    
  * item[+]
    * linkId = "TNMPT_BREAST"
    * type = #choice
    * text = "Please indicate the pathological tumor stage (per AJCC 5th - 7th Ed.):"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#0 "pTX"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#1 "pT0"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#2 "pTis"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#3 "pT1"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#4 "pT2"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#5 "pT3"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#6 "pT4"
    * answerOption[+].valueCoding = urn:uuid:e0d4b379-dffd-4eea-b51d-a3c4c2f7ad66#999 "Unknown"   
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPN_BREAST"
    * type = #choice
    * text = "Please indicate the pathological nodal stage (per AJCC 5th - 7th Ed.):"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#0 "pNX"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#1 "pN0"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#2 "pN1"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#3 "pN2"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#4 "pN3"
    * answerOption[+].valueCoding = urn:uuid:0818bdd3-e932-4df4-9a00-6cb719731351#999 "Unknown" 
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPM_BREAST"
    * type = #choice
    * text = "Please indicate the pathological distant metastasis (per AJCC 5th - 7th Ed.):"
    * answerOption[+].valueCoding = urn:uuid:dd32d5f4-8ef8-4057-9642-9cb20a10ace1#1 "pMX"
    * answerOption[+].valueCoding = urn:uuid:dd32d5f4-8ef8-4057-9642-9cb20a10ace1#2 "pM0"
    * answerOption[+].valueCoding = urn:uuid:dd32d5f4-8ef8-4057-9642-9cb20a10ace1#3 "pM1"
    * answerOption[+].valueCoding = urn:uuid:dd32d5f4-8ef8-4057-9642-9cb20a10ace1#999 "Unknown" 
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "SIZEINV"
    * type = #integer
    * text = "Please indicate size of invasive component of tumor (in mm, 999 if unknown):"
    * required = true
    * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "NumLymphNodesResect"
    * type = #integer
    * text = "Please indicate the number of lymph nodes resected (999 if unknown):"
    * required = true
    * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "LYMPHINV_BREAST"
    * type = #integer
    * text = "Please indicate the number of lymph nodes involved according to the TNM stage AJCC 7th Ed. (999 if unknown):"
    * required = true
    * insert enableWhenTrue(received_surgery)

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId = "Treatment-Variables"
  * type = #group
  * text = "Treatment Variables"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST"
    * type = #choice
    * text = "Please indicate whether the patient received one of the following treatment during the last year (select all that apply):"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

// Breast surgery 
  * item[+]
    * linkId = "SURGERY_BREAST"
    * type = #choice
    * text = "Please indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeVS)
    * insert enableWhenTreatmentSCT(SCT#387713003)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatmentSCT(SCT#387713003)
    * required = true

  * item[+]
    * linkId = "SurgeryDate"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown)
    * required = true

// Axilla surgery
  * item[+]
    * linkId = "SURGERYAX"
    * type = #choice
    * text = "Please indicate the type of surgery to the axilla the patient received during the last year:"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#0 "Sentinel lymph node biopsy"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#1 "Axillary sampling"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#2 "Axillary clearance"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#699455008)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatmentSCT(SCT#699455008)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"
    * insert enableWhenTrue(SURGERYAXDATE-Known)
    * required = true

// Axilla clearance
  * item[+]
    * linkId = "SURGERYAX2"
    * type = #choice
    * text = "Please indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#0 "No"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#1 "Yes"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#999 "Unkown"
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#0
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2"
      * operator = #=
      * answerCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#1
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * insert enableWhenTrue(SURGERYAX2DATE-Known)
    * required = true

// Reconstuction surgery
  * item[+] 
    * linkId = "RECONSTRUCT"
    * type = #choice
    * text = "Please indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#0 "Delayed reconstruction (direct/staged implant)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#1 "Delayed reconstruction ( autologous)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#2 "Delayed reconstruction (implant/autologous)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#33496007)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known"
    * type = #boolean
    * text = "Is the date of the delayed reconstruction known?"
    * insert enableWhenTreatmentSCT(SCT#33496007)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known)
    * required = true

// Radiotherapy
  * item[+]
    * linkId = "RADIOTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of radiotherapy:"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#108290001)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "RADIOTXTYPE_BREAST"
    * type = #choice
    * text = "Please indicate location/type of radiotherapy:"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#0 "Breast"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#1 "Chest wall"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#2 "Axillary nodal irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#3 "Supraclavicular irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#4 "Internal mammary node irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#5 "Tumor bed boost"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#6 "Brain metastases"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#7 "Bone metastases"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#8 "Any metastatic site"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#9 "Other"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#108290001)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatmentSCT(SCT#108290001)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatmentSCT(SCT#108290001)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known)
    * required = true

// Chemotherapy
  * item[+]
    * linkId = "CHEMOTXINTENT"
    * type = #choice
    * text = "Please indicate the intent of chemotherapy:"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#999 "Unknown"
    * insert enableWhenTreatment(#A_chemo)
    * insert enableWhenTreatment(#N_A_chemo)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Please indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#0 "Anthracycline containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#1 "Taxane containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#2 "Platinum containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#3 "Other"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#999 "Unknown"
    * insert enableWhenTreatment(#A_chemo)
    * insert enableWhenTreatment(#N_A_chemo)
    * enableBehavior = #any
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment(#A_chemo)
    * insert enableWhenTreatment(#N_A_chemo)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment(#A_chemo)
    * insert enableWhenTreatment(#N_A_chemo)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known)
    * required = true

// Hormonal therapy 
  * item[+]
    * linkId = "HORMONTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of hormonal therapy:"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#169413002)
    * required = true

  * item[+]
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Please indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#0 "Aromatase inhibitor"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#1 "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#2 "Oophorectomy"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#3 "LHRH agonist"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#4 "Other"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#999 "Unknown"
    * insert enableWhenTreatmentSCT(SCT#169413002)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatmentSCT(SCT#169413002)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatmentSCT(SCT#169413002)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known)
    * required = true

// Targeted therapy
  * item[+]
    * linkId = "TARGETTX_BREAST"
    * type = #choice
    * text = "Please indicate the type of targeted therapy:"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#0 "Her-2 targeting therapy"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#1 "Other"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#999 "Unknown"
    * insert enableWhenTreatment(#Targ_Thrpy)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment(#Targ_Thrpy)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate"
    * type = #date
    * text = "Please provide the start date of targeted therapy:"
    * insert enableWhenTrue(TargetTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment(#Targ_Thrpy)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate"
    * type = #date
    * text = "Please provide the stop date of targeted therapy:"
    * insert enableWhenTrue(TargetTxStopDate-Known)
    * required = true
  
// Reoperations   
  * item[+]
    * linkId = "SURGERYPATIENT"
    * type = #choice
    * text = "Please indicate if the patient has had one of the following re-operations since their surgery for breast cancer (select all that apply):"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#0 "No"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#1 "Breast reconstruction surgery"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#2 "Mastectomy"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#3 "Axillary dissection"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#999 "Unknown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#0
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known)
    * required = true

// Systemic therapy
  * item[+]
    * linkId = "SYSTPATIENT"
    * type = #choice
    * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#0 "no, never had systemic treatment"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#1 "yes, but the treatment has stopped"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#2 "yes, on chemotherapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#3 "yes, on targeted therapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#4 "yes, on hormone therapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#999 "unkown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SYSTDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT"
      * operator = #=
      * answerCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#1
    * required = true

  * item[+]
    * linkId = "SYSTDATEPATIENT"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * insert enableWhenTrue(SYSTDATEPATIENT-Known)
    * required = true

// GROUP 4 - DISUTILITY OF CARE
* item[+]
  * linkId = "DisutilityofCare"
  * type = #group
  * text = "Disutility of care"
  * required = true

  * item[+]
    * linkId = "REOP_BREAST"
    * type = #choice
    * text = "Please indicate if the patient has undergone a reoperation due to involved margins after primary surgery:"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#0 "No reoperation due to involved margins" 
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#1 "Breast conserving surgery (BCS)"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#2 "BCS with mammoplasty"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#3 "Mastectomy without immediate reconstruction"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#4 "Mastectomy with immediate reconstruction (direct/staged implant)"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#5 "Mastectomy with immediate reconstruction (autologous)"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#6 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
    * answerOption[+].valueCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#999 "Unknown"
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * insert enableWhenTreatmentSCT(SCT#387713003)
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST-Known"
    * type = #boolean
    * text = "Is the date of the reoperation due to positive margins known?"
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #!=
      * answerCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#999
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #!=
      * answerCoding = urn:uuid:267a68fb-42ea-49c8-a43d-c18c71f4ce7e#0
    * insert enableWhenTreatmentSCT(SCT#387713003)
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST"
    * type = #date
    * text = "Please provide the date of the reoperation due to positive margins:"
    * insert enableWhenTrue(REOPDATE_BREAST-Known)
    * required = true

  * item[+]
    * linkId = "ComplicationImpact"
    * type = #choice
    * text = "Please state the impact of the complication experienced by the patient:"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#0 "No complication"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#1 "Complication requiring intervention (surgical, radiological, endoscopic)"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#2 "Complication leading to prolonged hospitalization ( >14days)"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#3 "Complication leading to unplanned readmission"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#4 "Complication leading to ICU admission"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#5 "Complication leading to discontinuing of treatment"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#6 "Complication leading to reduced dosing"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#7 "Complication leading to death"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#8 "Complication, but did not result in any of the abovementioned"
    * answerOption[+].valueCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#999 "Unknown"
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * enableBehavior = #all
    * required = true
    * repeats = true


  * item[+]
    * linkId = "ComplicationAttrTreatment"
    * type = #choice
    * text = "Please indicate whether the complication is attributable to treatment:"
    * answerOption[+].valueCoding = urn:uuid:4863f609-1024-4a63-a2a7-e949673b46bc#0 "No"
    * answerOption[+].valueCoding = urn:uuid:4863f609-1024-4a63-a2a7-e949673b46bc#1 "Yes"
    * answerOption[+].valueCoding = urn:uuid:4863f609-1024-4a63-a2a7-e949673b46bc#999 "Unkown"
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = urn:uuid:c77c16c3-17ba-4f16-a3f8-afd8a24b2aad#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "COMPL_BREAST"
    * type = #choice
    * text = "Please indicate the type of complication:"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#0 "Wound infection"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#1 "Seroma/hematoma"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#2 "Hemorrhage"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#3 "Mastectomy skin flap necrosis"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#4 "Partial autologous graft loss"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#5 "Total autologous graft loss"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#6 "Loss of implant"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#7 "Thromboembolic event"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#8 "Nerve damage"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#9 "Delay wound healing/dehiscence"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#10 "Skin toxicity"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#11 "Pneumonia"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#12 "Neutropenic sepsis"
    * answerOption[+].valueCoding = urn:uuid:0051a06f-34ee-4db1-9270-8c4fed35dde9#999 "Unknown"
    * enableWhen[+]
      * question = "ComplicationAttrTreatment"
      * operator = #=
      * answerCoding = urn:uuid:4863f609-1024-4a63-a2a7-e949673b46bc#1
    * required = true
    * repeats = true

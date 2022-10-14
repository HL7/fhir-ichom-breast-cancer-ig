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
    * type = #string 
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
    * linkId = "received_surgery"
    * type = #boolean
    * text = "Has the patient received surgery?"
    * required = true

  * item[+]
    * linkId = "TNMPT_BREAST"
    * type = #choice
    * text = "Indicate the pathological tumor stage (per AJCC 8th Ed.)"
    * answerValueSet = Canonical(TNMPrimaryTumorVS)
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPN_BREAST"
    * type = #choice
    * text = "Indicate the pathological nodal stage (per AJCC 8th Ed.)"
    * answerValueSet = Canonical(TNMRegionalNodesVS)
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPM_BREAST"
    * type = #choice
    * text = "Indicate the pathological distant metastasis (per AJCC 8th Ed.)"
    * answerValueSet = Canonical(TNMDistantMetastasesVS)
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "SIZEINV"
    * type = #integer
    * text = "Indicate size of invasive component of tumor (in mm)"
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "NumLymphNodesResect"
    * type = #integer
    * text = "Indicate the number of lymph nodes resected"
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "LYMPHINV_BREAST"
    * type = #integer
    * text = "Indicate the number of lymph nodes involved according to the TNM stage AJCC 8th Ed."
    * insert enableWhenTrue(received_surgery)
    * required = true

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId = "Treatment-Variables"
  * type = #group
  * text = "Treatment Variables"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

// Breast surgery 
  * item[+]
    * linkId = "SURGERY_BREAST"
    * type = #choice
    * text = "Indicate whether the patient received surgery during the last year"
    * answerValueSet = Canonical(BreastSurgeryTypeVS)
    * insert enableWhenTreatmentSCT(SCT#387713003) //Surgical procedure
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatmentSCT(SCT#387713003) //Surgical procedure
    * required = true

  * item[+]
    * linkId = "SurgeryDate"
    * type = #date
    * text = "Please provide the date of surgery"
    * insert enableWhenTrue(SurgeryDateKnown)
    * required = true

// Axilla surgery
  * item[+]
    * linkId = "SURGERYAX"
    * type = #choice
    * text = "Indicate whether the patient received surgery to the axilla"
    * answerValueSet = Canonical(AxillaSurgeryVS) 
    * insert enableWhenTreatmentSCT(SCT#699455008) // Operative procedure on axilla
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatmentSCT(SCT#699455008) // Operative procedure on axilla
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE"
    * type = #date
    * text = "Please provide the date of surgery to the axilla"
    * insert enableWhenTrue(SURGERYAXDATE-Known)
    * required = true

// Axilla clearance
  * item[+]
    * linkId = "SURGERYAX2"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year"
    * answerValueSet = Canonical(NoYesUnknownVS)
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = SCT#396487001 "Sentinel lymph node biopsy"
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = SCT#234262008 "Excision of axillary lymph node"
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2"
      * operator = #=
      * answerCoding = YesNoUnkCS#Y
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE"
    * type = #date
    * text = "Please provide the date of axillary clearance"
    * insert enableWhenTrue(SURGERYAX2DATE-Known)
    * required = true

// Reconstruction surgery
  * item[+]
    * linkId = "RECONSTRUCTION_DELAY"
    * type = #choice
    * text = "Indicate whether the patient received a delayed reconstruction"
    * answerValueSet = Canonical(NoYesUnknownVS) 
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#2 // Mastectomy without immediate reconstruction
    * required = true

  * item[+]
    * linkId = "SURGERY_RECONSTRUCTION"
    * type = #choice
    * text = "Indicate what type of reconstruction the patient received"
    * answerValueSet = Canonical(ReconstructionTypeVS) 
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#2 // Mastectomy without immediate reconstruction
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#3 // Mastectomy with reconstruction
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "ImplantReconstruction"
    * type = #choice
    * text = "Indicate the location of the implant"
    * answerValueSet = Canonical(ImplantLocationVS) 
    * enableWhen[+]
      * question = "SURGERY_RECONSTRUCTION"
      * operator = #!=
      * answerCoding = ReconstructionTypeCodeSystem#Autologous
    * enableWhen[+]
      * question = "SURGERY_RECONSTRUCTION"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known"
    * type = #boolean
    * text = "Is the date of the delayed reconstruction known?"
    * enableWhen[+]
      * question = "RECONSTRUCTION_DELAY"
      * operator = #=
      * answerCoding = YesNoUnkCS#Y
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE"
    * type = #date
    * text = "Please provide the date of delayed reconstruction"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known)
    * required = true

// Radiotherapy
  * item[+]
    * linkId = "RADIOTX_BREAST"
    * type = #choice
    * text = "What was the intent of radiotherapy"
    * answerValueSet = Canonical(TherapyIntentVS)
    * insert enableWhenTreatmentSCT(SCT#108290001) // Radiation oncology AND/OR radiotherapy
    * required = true
    * repeats = true

  * item[+]
    * linkId = "RADIOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate location/type of radiotherapy"
    * answerValueSet = Canonical(LocationRadiotherapyVS)
    * insert enableWhenTreatmentSCT(SCT#108290001) // Radiation oncology AND/OR radiotherapy
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatmentSCT(SCT#108290001) // Radiation oncology AND/OR radiotherapy
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate"
    * type = #date
    * text = "Please provide the start date of radiotherapy"
    * insert enableWhenTrue(RadioTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatmentSCT(SCT#108290001) // Radiation oncology AND/OR radiotherapy
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate"
    * type = #date
    * text = "Please provide the stop date of radiotherapy"
    * insert enableWhenTrue(RadioTxStopDate-Known)
    * required = true

// Chemotherapy
  * item[+]
    * linkId = "CHEMOTXINTENT"
    * type = #choice
    * text = "Indicate the intent of chemotherapy"
    * answerValueSet = Canonical(TherapyIntentVS)
    * insert enableWhenTreatment(#A_chemo) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#N_A_chemo) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply)"
    * answerValueSet = Canonical(ChemoTherapyTypeVS)
    * insert enableWhenTreatment(#A_chemo) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#N_A_chemo) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment(#A_chemo) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#N_A_chemo) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate"
    * type = #date
    * text = "Please provide the start date of chemotherapy"
    * insert enableWhenTrue(ChemoTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment(#A_chemo) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#N_A_chemo) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate"
    * type = #date
    * text = "Please provide the stop date of chemotherapy"
    * insert enableWhenTrue(ChemoTxStopdate-Known)
    * required = true

// Hormonal therapy 
  * item[+]
    * linkId = "HORMONTX_BREAST"
    * type = #choice
    * text = "Indicate the intent of hormonal therapy"
    * answerValueSet = Canonical(TherapyIntentVS)
    * insert enableWhenTreatmentSCT(SCT#169413002) //Hormone therapy
    * required = true

  * item[+]
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply)"
    * answerValueSet = Canonical(HormonalTherapyTypeVS)
    * insert enableWhenTreatmentSCT(SCT#169413002) // Hormone therapy
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatmentSCT(SCT#169413002) // Hormone therapy
    * required = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE"
    * type = #date
    * text = "Please provide the start date of hormonal therapy"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatmentSCT(SCT#169413002) // Hormone therapy
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known)
    * required = true

// Targeted therapy
  * item[+]
    * linkId = "TARGETTX_BREAST"
    * type = #choice
    * text = "Indicate the type of targeted therapy"
    * answerValueSet = Canonical(TargetedTherapyVS)
    * insert enableWhenTreatment(#Targ_Thrpy) // Targeted therapy
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment(#Targ_Thrpy) //Targeted therapy
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate"
    * type = #date
    * text = "Please provide the start date of targeted therapy"
    * insert enableWhenTrue(TargetTxStartDate-Known) 
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment(#Targ_Thrpy) // Targeted therapy
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate"
    * type = #date
    * text = "Please provide the stop date of targeted therapy"
    * insert enableWhenTrue(TargetTxStopDate-Known)
    * required = true
  
// Reoperations   
  * item[+]
    * linkId = "SURGERYPATIENT"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer (select all that apply)"
    * answerValueSet = Canonical(ReoperationTypeVS)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = NullFlavor#UNK "unknown"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = SCT#373572006 "Clinical finding absent"
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT"
    * type = #date
    * text = "Please provide the date of the reoperation"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known)
    * required = true

// GROUP 4 - DISUTILITY OF CARE
* item[+]
  * linkId = "DisutilityofCare"
  * type = #group
  * text = "Disutility of care"
  * required = true

// Reoperation
  * item[+]
    * linkId = "REOP_BREAST"
    * type = #choice
    * text = "Indicate if the patient has undergone a reoperation due to involved margins after primary surgery"
    * answerValueSet = Canonical(InvolvedMarginsReoperationTypeVS)
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * required = true

  * item[+]
    * linkId = "REOP_RECONSTRUCTION"
    * type = #choice
    * text = "What type of reconstruction did the patient receive during reoperation?"
    * answerValueSet = Canonical(ReconstructionTypeVS) 
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#3 //Mastectomy with immediate reconstruction
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST-Known"
    * type = #boolean
    * text = "Is the date of the reoperation due to positive margins known?"
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST"
    * type = #date
    * text = "Provide the date of the reoperation due to positive margins"
    * insert enableWhenTrue(REOPDATE_BREAST-Known)
    * required = true

// Comlication
  * item[+]
    * linkId = "ComplicationImpact"
    * type = #choice
    * text = "What was the impact of the complication experienced by the patient"
    * answerValueSet = Canonical(ComplicationImpactVS)
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#no_treat
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
    * text = "Indicate whether the complication is attributable to treatment"
    * answerValueSet = Canonical(NoYesUnknownVS)
    * enableWhen[+]
      * question = "ComplicationImpact"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#1  // No complication
    * enableWhen[+]
      * question = "ComplicationImpact"
      * operator = #!=
      * answerCoding = NullFlavor#UNK
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "COMPL_BREAST"
    * type = #choice
    * text = "Indicate the type of complication"
    * answerValueSet = Canonical(ComplicationTypeVS)
    * enableWhen[+]
      * question = "ComplicationAttrTreatment"
      * operator = #=
      * answerCoding = YesNoUnkCS#Y
    * required = true

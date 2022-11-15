Instance: ClinicalResponseAnnualUpdate
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical response questionnaire at annual post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "AnnualClinicalResponse"
* title = "Annual follow-up of clinical questionnaire response"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "NA-Clinical"
//    * linkId = "N/A-Clinical"
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
    * linkId = "MUTBC"
    * type = #choice
    * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
    * answerValueSet = Canonical(GermlineMutationVS)
    * required = true
    * repeats = true

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
    * answerValueSet = Canonical(TreatmentTypeVS)
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
      * answerCoding = BreastSurgeryTypesCodeSystem#mastectomy-without-immediate-reconstruction // Mastectomy without immediate reconstruction
    * required = true

  * item[+]
    * linkId = "SURGERY_RECONSTRUCTION"
    * type = #choice
    * text = "Indicate what type of reconstruction the patient received"
    * answerValueSet = Canonical(ReconstructionTypeVS) 
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#mastectomy-without-immediate-reconstruction // Mastectomy without immediate reconstruction
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #=
      * answerCoding = BreastSurgeryTypesCodeSystem#mastectomy-with-immediate-reconstruction // Mastectomy with reconstruction
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
      * answerCoding = ReconstructionTypeCodeSystem#autologous
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
    * insert enableWhenTreatment(#adjuvant-chemotherapy) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#neoadjuvant-chemotherapy) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply)"
    * answerValueSet = Canonical(ChemoTherapyTypeVS)
    * insert enableWhenTreatment(#adjuvant-chemotherapy) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#neoadjuvant-chemotherapy) // Neoadjuvant chemotherapy
    * enableBehavior = #any
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment(#adjuvant-chemotherapy) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#neoadjuvant-chemotherapy) // Neoadjuvant chemotherapy
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
    * insert enableWhenTreatment(#adjuvant-chemotherapy) // Adjuvant chemotherapy
    * insert enableWhenTreatment(#neoadjuvant-chemotherapy) // Neoadjuvant chemotherapy
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
    * insert enableWhenTreatment(#targeted-therapy) // Targeted therapy
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment(#targeted-therapy) //Targeted therapy
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
    * insert enableWhenTreatment(#targeted-therapy) // Targeted therapy
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


// GROUP 5 - Survival and disease control
* item[+]
  * linkId = "Survival-and-Disease-control"
  * type = #group
  * text = "Survival and disease control"
  * required = true

  * item[+]
    * linkId = "Survival-Q0"
    * type = #boolean
    * text = "Was the intent of the treatment curative?"
    * required = true

  * item[+]
    * linkId = "MalignancyRecur"
    * type = #choice
    * text = "Is there evidence of local, regional or distant recurrence of neoplasm?"
    * answerValueSet = Canonical(RecurrenceVS)
    * insert enableWhenTrue(Survival-Q0)
    * required = true
    
  * item[+]
    * linkId = "RecurMethod"
    * type = #choice
    * text = "What was the method of confirming recurrence of neoplasm?"
    * answerValueSet = Canonical(RecurrenceMethodVS)
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "RecurDateCancer-Known"
    * type = #boolean
    * text = "Is the date of cancer recurrence known?"
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "RecurDateCancer"
    * type = #date
    * text = "What is the date of cancer recurrence?"
    * insert enableWhenTrue(RecurDateCancer-Known)
    * required = true

  * item[+]
    * linkId = "VitalStatus"
    * type = #choice
    * text = "Indicate if the person has deceased, regardless of cause"
    * answerValueSet = Canonical(NoYesUnknownVS)
    * required = true

  * item[+]
    * linkId = "DeceasedDate-Known"
    * type = #boolean
    * text = "Is the date of death of the patient known?"
    * enableWhen
      * question = "VitalStatus"
      * operator = #=
      * answerCoding = YesNoUnkCS#Y "Yes" 
    * required = true

  * item[+]
    * linkId = "DeceasedDate"
    * type = #date
    * text = "Please provide the date of death of the patient"
    * insert enableWhenTrue(DeceasedDate-Known)
    * required = true

  * item[+]
    * linkId = "DEATHBC"
    * type = #choice
    * text = "Is the death attributable to breast cancer?"
    * answerValueSet = Canonical(NoYesUnknownVS)
    * enableWhen
      * question = "VitalStatus"
      * operator = #=
      * answerCoding = YesNoUnkCS#Y "Yes" 
    * required = true


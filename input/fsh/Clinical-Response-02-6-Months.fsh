// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

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
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
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
    * answerOption[+].valueString = "No mutation"
    * answerOption[+].valueString = "BRCA 1"
    * answerOption[+].valueString = "BRCA 2"
    * answerOption[+].valueString = "Other mutation"
    * answerOption[+].valueString = "Not tested"
    * required = true

  * item[+]
    * linkId = "received_surgery"
    * type = #boolean
    * text = "Has the patient received surgery?"
    * required = true
    
  * item[+]
    * linkId = "TNMPT_BREAST"
    * type = #choice
    * text = "Indicate the pathological tumor stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pTX"
    * answerOption[+].valueString = "pT0"
    * answerOption[+].valueString = "pTis"
    * answerOption[+].valueString = "pT1"
    * answerOption[+].valueString = "pT2"
    * answerOption[+].valueString = "pT3"
    * answerOption[+].valueString = "pT4"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPN_BREAST"
    * type = #choice
    * text = "Indicate the pathological nodal stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pNX"
    * answerOption[+].valueString = "pN0"
    * answerOption[+].valueString = "pN1"
    * answerOption[+].valueString = "pN2"
    * answerOption[+].valueString = "pN3"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPM_BREAST"
    * type = #choice
    * text = "Indicate the pathological distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "pMX"
    * answerOption[+].valueString = "pM0"
    * answerOption[+].valueString = "pM1"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "SIZEINV"
    * type = #integer
    * text = "Indicate size of invasive component of tumor (in mm, 999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "NumLymphNodesResect"
    * type = #integer
    * text = "Indicate the number of lymph nodes resected (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "LYMPHINV_BREAST"
    * type = #integer
    * text = "Indicate the number of lymph nodes involved according to the TNM stage AJCC 7th Ed. (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery)

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId = "Treatment-Variables"
  * type = #group
  * text = "Treatment Variables at 6 months follow-up"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERY_BREAST"
    * type = #choice
    * text = "Indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)
    * insert enableWhenTreatment(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatment(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDate"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown)
    * required = true

  * item[+]
    * linkId = "SURGERYAX"
    * type = #choice
    * text = "Indicate the type of surgery to the axilla the patient received during the last year:"
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)
    * insert enableWhenTreatment(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatment(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"
    * insert enableWhenTrue(SURGERYAXDATE-Known)
    * required = true

  * item[+]
    * linkId = "SURGERYAX2"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerValueSet = Canonical(YesNoUnknownValueSet)
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2"
      * operator = #=
      * answerCoding = #Y
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * enableWhenTrue(SURGERYAX2DATE-Known)
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT"
    * type = #choice
    * text = "Indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueString = "Delayed reconstruction (direct/staged implant)"
    * answerOption[+].valueString = "Delayed reconstruction ( autologous)"
    * answerOption[+].valueString = "Delayed reconstruction (implant/autologous)"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known"
    * type = #boolean
    * text = "Is the date of the delayed reconstruction known?"
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known)
    * required = true

  * item[+]
    * linkId = "RADIOTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of radiotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#4)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "RADIOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate location/type of radiotherapy:"
    * answerOption[+].valueString = "Breast"
    * answerOption[+].valueString = "Chest wall"
    * answerOption[+].valueString = "Axillary nodal irradiation"
    * answerOption[+].valueString = "Supraclavicular irradiation"
    * answerOption[+].valueString = "Internal mammary node irradiation"
    * answerOption[+].valueString = "Tumor bed boost"
    * answerOption[+].valueString = "Brain metastases"
    * answerOption[+].valueString = "Bone metastases"
    * answerOption[+].valueString = "Any metastatic site"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatment(#4)
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
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known)
    * required = true

  * item[+]
    * linkId = "CHEMOTXINTENT"
    * type = #choice
    * text = "Indicate the intent of chemotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueString = "Anthracycline containing"
    * answerOption[+].valueString = "Taxane containing"
    * answerOption[+].valueString = "Platinum containing"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#5)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment(#5)
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
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known)
    * required = true

  * item[+]
    * linkId = "HORMONTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of hormontherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueString = "Aromatase inhibitor"
    * answerOption[+].valueString = "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueString = "Oophorectomy"
    * answerOption[+].valueString = "LHRH agonist"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#6)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatment(#6)
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
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known)
    * required = true

  * item[+]
    * linkId = "TARGETTX_BREAST"
    * type = #choice
    * text = "Indicate the type of targeted therapy:"
    * answerOption[+].valueString = "Her-2 targeting therapy"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment(#7)
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
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate"
    * type = #date
    * text = "Please provide the stop date of targeted therapy"
    * insert enableWhenTrue(TargetTxStopDate-Known)
    * required = true
    
  * item[+]
    * linkId = "SURGERYPATIENT"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerValueSet = Canonical(ReoperationsValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known)
    * required = true

  * item[+]
    * linkId = "SYSTPATIENT"
    * type = #choice
    * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
    * answerOption[+].valueString = "no, never had systemic treatment"
    * answerOption[+].valueString = "yes, but the treatment has stopped"
    * answerOption[+].valueString = "yes, on chemotherapy"
    * answerOption[+].valueString = "yes, on targeted therapy"
    * answerOption[+].valueString = "yes, on hormone therapy"
    * answerOption[+].valueString = "unkown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SYSTDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT"
      * operator = #=
      * answerString = "yes, but the treatment has stopped"
    * required = true
// enableWhen is not working here with answerString

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
    * text = "Indicate if the patient has undergone a reoperation due to involved margins after primary surgery:"
    * answerValueSet = Canonical(InvolvedMarginsValueSet)
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #!=
      * answerCoding = BreastSurgeryTypesCodeSystem#999
    * required = true

  * item[+]
    * linkId = "REOPDATE_BREAST-Known"
    * type = #boolean
    * text = "Is the date of the reoperation due to positive margins known?"
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #!=
      * answerCoding = InvolvedMarginsCodeSystem#999
    * enableWhen[+]
      * question = "REOP_BREAST"
      * operator = #!=
      * answerCoding = InvolvedMarginsCodeSystem#0
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
    * answerValueSet = Canonical(ComplicationImpactValueSet)
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#999
    * enableBehavior = #all
    * required = true
    * repeats = true


  * item[+]
    * linkId = "ComplicationAttrTreatment"
    * type = #choice
    * text = "Indicate whether the complication is attributable to treatment:"
    * answerValueSet = Canonical(YesNoUnknownValueSet)
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "COMPL_BREAST"
    * type = #choice
    * text = "Please indicate the type of complication:"
    * answerOption[+].valueString = "Wound infection"
    * answerOption[+].valueString = "Seroma/hematoma"
    * answerOption[+].valueString = "Hemorrhage"
    * answerOption[+].valueString = "Mastectomy skin flap necrosis"
    * answerOption[+].valueString = "Partial autologous graft loss"
    * answerOption[+].valueString = "Total autologous graft loss"
    * answerOption[+].valueString = "Loss of implant"
    * answerOption[+].valueString = "Thromboembolic event"
    * answerOption[+].valueString = "Nerve damage"
    * answerOption[+].valueString = "Delay wound healing/dehiscence"
    * answerOption[+].valueString = "Skin toxicity"
    * answerOption[+].valueString = "Pneumonia"
    * answerOption[+].valueString = "Neutropenic sepsis"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "ComplicationAttrTreatment"
      * operator = #=
      * answerCoding = #Y
    * required = true
    * repeats = true
  //EnableWhen doesn't work here either because of string
// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

Instance: 6MonthsClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical questionnaire response at 6 months follow-up"
* insert PublicationInstanceRuleset

* name = "SixMonthsClinical"
* title = "Clinical response at 6 months follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "Six-Months-General-Information"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName"
    * type = #string
    * text = "What is your last name?"
    * required = true

// GROUP 2 - 6 Months TUMOR FACTORS
* item[+]
  * linkId =  "6-Months-Tumor-Factors"
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
    * text = "Pathological tumor stage (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(PathologicalTumorStage)
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPN_BREAST"
    * type = #choice
    * text = "Pathological nodal stage (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(PathologicalNodalStage)
    * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "TNMPM_BREAST"
    * type = #choice
    * text = "Pathological distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(PathologicalDistantMetastasis)
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
    * text = "Number of lymph nodes resected (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "LYMPHINV_BREAST"
    * type = #integer
    * text = "Number of lymph nodes involved according to the TNM stage AJCC 7th Ed. (999 if unknown)"
    * required = true
    * initial.valueInteger = 999
    * insert enableWhenTrue(received_surgery)

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId =  "6-months-treatment-Variables"
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
  // TODO: handle unknown dates, see notes.md for options
    * linkId = "SURGERY_BREAST"
    * type = #choice
    * text = "Indicate whether the patient received surgery during the last year:"
    * insert enableWhenTreatment(#1)
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)
    * required = true

  * item[+]
    * linkId = "SurgeryDate"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTreatment(#1)
    * required = true

  * item[+]
    * linkId = "SURGERYAX"
    * type = #choice
    * text = "Indicate whether the patient received surgery to the axilla during the last year:"
    * insert enableWhenTreatment(#2)
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"  
    * insert enableWhenTreatment(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAX2"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerValueSet = Canonical(BooleanExtendedValueSet)
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
    * linkId = "SURGERYAX2DATE"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * enableWhen[+]
      * question = "SURGERYAX2"
      * operator = #=
      * answerCoding = BooleanExtendedCodeSystem#1
    * required = true


  * item[+] 
    * linkId = "RECONSTRUCT"
    * type = #choice
    * text = "Indicate whether the patient received a delayed reconstruction during the last year:"
    * answerValueSet = Canonical(DelayedReconstructionValueSet)
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]  
    * linkId = "RECONSTRUCTDATE"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]  
    * linkId = "RADIOTX_BREAST"
    * type = #choice
    * text = "If the patient received radiotherapy during the last year, please indicate the intent of radiotherapy:"
    * answerValueSet = Canonical(TherapyIntentValueSet)
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]  
    * linkId = "RADIOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate location/type of radiotherapy:"
    * answerValueSet = Canonical(RadiotherapyLocationValueSet)
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]  
    * linkId = "RadioTxStartDate"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTreatment(#4)
    * required = true


  * item[+]
    * linkId = "CHEMOTXINTENT"
    * type = #choice
    * text = "If the patient received chemotherapy during the last year, please indicate the intent of chemotherapy:"
    * answerValueSet = Canonical(TherapyIntentValueSet)
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate what type of chemotherapy (select all that apply):"
    * answerValueSet = Canonical(ChemotherapyTypeValueSet)
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]  
    * linkId = "HORMONTX_BREAST"
    * type = #choice
    * text = "If the patient received hormontherapy during the last year, please indicate the intent of hormontherapy:"
    * answerValueSet = Canonical(TherapyIntentValueSet)
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Indicate what type of hormonal therapy (select all that apply):"
    * answerValueSet = Canonical(HormonalTherapyTypeValueSet)
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTARTDATE"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTOPDATE"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]  
    * linkId = "TARGETTX_BREAST"
    * type = #choice
    * text = "Indicate what type of targeted therapy:"
    * answerValueSet = Canonical(TargetedTherapyValueSet)
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]  
    * linkId = "TargetTxStartDate"
    * type = #date
    * text = "Please provide the start date of targeted therapy, if applicable"
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]  
    * linkId = "TargetTxStopDate"
    * type = #date
    * text = "Please provide the stop date of targeted therapy, if applicable"
    * insert enableWhenTreatment(#7)
    * required = true
    
  * item[+]  
    * linkId = "SURGERYPATIENT"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerValueSet = Canonical(ReoperationsValueSet)
    * required = true

  * item[+]  
    * linkId = "SURGERYDATEPATIENT"
    * type = #date
    * text = "When was the reoperation?"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #=
      * answerCoding = ReoperationsCodeSystem#1
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #=
      * answerCoding = ReoperationsCodeSystem#2
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #=
      * answerCoding = ReoperationsCodeSystem#3
    * enableBehavior = #any
    * required = true

  * item[+]  
    * linkId = "SYSTPATIENT"
    * type = #choice
    * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
    * answerValueSet = Canonical(SystemicTherapyValueSet)
    * required = true

  * item[+]     
    * linkId = "SYSTDATEPATIENT"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * enableWhen[+]
      * question = "SYSTPATIENT"
      * operator = #=
      * answerCoding = SystemicTherapyCodeSystem#1
    * required = true

// GROUP 4 - DISUTILITY OF CARE
* item[+]
  * linkId =  "6months-DisutilityofCare"
  * type = #group
  * text = "Disutility of care"
  * required = true

  * item[+]
    * linkId = "REOP_BREAST"
    * type = #choice
    * text = "Indicate if the patient has undergone a reoperation due to involved margins after primary surgery:"
    * enableWhen[+]
      * question = "SURGERY_BREAST"
      * operator = #!=
      * answerCoding = BreastSurgeryTypesCodeSystem#999
    * answerValueSet = Canonical(InvolvedMarginsValueSet)
    * required = true
  
  * item[+]
    * linkId = "REOPDATE_BREAST"
    * type = #date
    * text = "Please provide the date of the reoperation due to positive margins:"
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
    * linkId = "ComplicationImpact"
    * type = #choice
    * text = "Please state the impact of the complication experienced by the patient:"
    * required = true
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = TreatmentTypesCodeSystem#999
    * enableBehavior = #all
    * answerValueSet = Canonical(ComplicationImpactValueSet)
    * required = true


  * item[+]
    * linkId = "ComplicationAttrTreatment"
    * type = #choice
    * text = "Indicate whether the complication is attributable to treatment:"
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#0
    * enableWhen[+]
      * question = "TREATMENT_BREAST"
      * operator = #!=
      * answerCoding = ComplicationImpactCodeSystem#999
    * enableBehavior = #all
    * answerValueSet = Canonical(BooleanExtendedValueSet)
    * required = true

  * item[+]
    * linkId = "COMPL_BREAST"
    * type = #choice
    * text = "Please indicate the type of complication:"
    * enableWhen[+]
      * question = "ComplicationAttrTreatment"
      * operator = #=
      * answerCoding = BooleanExtendedCodeSystem#1
    * answerValueSet = Canonical(ComplicationTypeValueSet)
    * required = true
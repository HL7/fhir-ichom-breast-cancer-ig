RuleSet: enableWhenTreatment04(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST-04"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

RuleSet: enableWhenRecurrence04(code)
* enableWhen[+]
  * question = "MalignancyRecur-04"
  * operator = #=
  * answerCoding = RecurrenceCodeSystem{code}

Instance: AnnualUpdateClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Annual update of clinical questionnaire response sarting from year 2 of post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "AnnualUpdateClinicalResponse"
* title = "Annual update of clinical questionnaire response"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "General-Information-04-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-04-Clinical"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-04-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true

// GROUP 2 - TREATMENT VARIABLES 
* item[+]
  * linkId =  "Treatment-Variables-04"
  * type = #group
  * text = "Treatment Variables at 1 year follow-up"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST-04"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERY_BREAST-04"
    * type = #choice
    * text = "Indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)    
    * insert enableWhenTreatment04(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown-04"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatment04(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDate-04"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown-04)
    * required = true

  * item[+]
    * linkId = "SURGERYAX-04"
    * type = #choice
    * text = "Indicate the type of surgery to the axilla the patient received during the last year:"
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)    
    * insert enableWhenTreatment04(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known-04"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatment04(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-04"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"  
    * insert enableWhenTrue(SURGERYAXDATE-Known-04)   
    * required = true

  * item[+]
    * linkId = "SURGERYAX2-04"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "SURGERYAX-04"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYAX-04"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known-04"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2-04"
      * operator = #=
      * answerString = "Yes"
    * required = true
// EnableWhen doesnt work with string answerOptions

  * item[+]  
    * linkId = "SURGERYAX2DATE-04"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * enableWhenTrue(SURGERYAX2DATE-Known-04)
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT-04"
    * type = #choice
    * text = "Indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueString = "Delayed reconstruction  (direct/staged implant)"
    * answerOption[+].valueString = "Delayed reconstruction ( autologous)"
    * answerOption[+].valueString = "Delayed reconstruction  (implant/autologous)"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known-04"
    * type = #boolean
    * text = "Is the date of delayed reconstruction known?"
    * insert enableWhenTreatment04(#3)
    * required = true

  * item[+]  
    * linkId = "RECONSTRUCTDATE-04"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known-04)
    * required = true

  * item[+]  
    * linkId = "RADIOTX_BREAST-04"
    * type = #choice
    * text = "Indicate the intent of radiotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#4)
    * required = true
    * repeats = true

  * item[+]  
    * linkId = "RADIOTXTYPE_BREAST-04"
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
    * insert enableWhenTreatment04(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known-04"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatment04(#4)
    * required = true

  * item[+]  
    * linkId = "RadioTxStartDate-04"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStartDate-Known-04)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known-04"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatment04(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-04"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known-04)
    * required = true

  * item[+]
    * linkId = "CHEMOTXINTENT-04"
    * type = #choice
    * text = "Indicate the intent of chemotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST-04"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueString = "Anthracycline containing"
    * answerOption[+].valueString = "Taxane containing"
    * answerOption[+].valueString = "Platinum containing"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#5)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known-04"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment04(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate-04"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStartDate-Known-04)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known-04"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment04(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-04"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known-04)
    * required = true

  * item[+]  
    * linkId = "HORMONTX_BREAST-04"
    * type = #choice
    * text = "Indicate the intent of hormontherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXTYPE-04"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueString = "Aromatase inhibitor"
    * answerOption[+].valueString = "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueString = "Oophorectomy"
    * answerOption[+].valueString = "LHRH agonist"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#6)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known-04"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatment04(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTARTDATE-04"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known-04)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known-04"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatment04(#6)
    * required = true


  * item[+]  
    * linkId = "HORMONTXSTOPDATE-04"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known-04)
    * required = true

  * item[+]  
    * linkId = "TARGETTX_BREAST-04"
    * type = #choice
    * text = "Indicate the type of targeted therapy:"
    * answerOption[+].valueString = "Her-2 targeting therapy"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment04(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known-04"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment04(#7)
    * required = true

  * item[+]  
    * linkId = "TargetTxStartDate-04"
    * type = #date
    * text = "Please provide the start date of targeted therapy, if applicable"
    * insert enableWhenTrue(TargetTxStartDate-Known-04)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known-04"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment04(#7)
    * required = true


  * item[+]  
    * linkId = "TargetTxStopDate-04"
    * type = #date
    * text = "Please provide the stop date of targeted therapy, if applicable"
    * insert enableWhenTrue(TargetTxStopDate-Known-04)
    * required = true
    
  * item[+]  
    * linkId = "SURGERYPATIENT-04"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerValueSet = Canonical(ReoperationsValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known-04"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT-04"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYPATIENT-04"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#999
    * enableBehavior = #all    
    * required = true

  * item[+]  
    * linkId = "SURGERYDATEPATIENT-04"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known-04)
    * required = true

  * item[+]  
    * linkId = "SYSTPATIENT-04"
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
    * linkId = "SYSTDATEPATIENT-Known-04"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT-04"
      * operator = #=
      * answerString = "yes, but the treatment has stopped"
    * required = true
// enableWhen is not working here with answerString

  * item[+]     
    * linkId = "SYSTDATEPATIENT-04"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * insert enableWhenTrue(SYSTDATEPATIENT-Known-04)
    * required = true
// enablewhen is not working here

// GROUP 5 - Survival and disease control
* item[+]
  * linkId =  "Survival-and-Disease-control-04"
  * type = #group
  * text = "Survival and disease control at 1 year follow-up"
  * required = true

  * item[+]
    * linkId =  "Survival-Q0-04"
    * type = #boolean
    * text = "Was the intent of the treatment curative?"
    * required = true

  * item[+]
    * linkId =  "MalignancyRecur-04"
    * type = #choice
    * text = "Is there evidence of local, regional or distant recurrence of neoplasm? (In case of multiple recurrences, please report the most severe)"
    * answerValueSet = Canonical(RecurrenceValueSet)
    * insert enableWhenTrue(Survival-Q0-04)

  * item[+]
    * linkId =  "RecurMethod-04"
    * type = #choice
    * text = "What was the method of confirming recurrence of neoplasm?"
    * answerOption[+].valueString = "Radiological diagnosis"
    * answerOption[+].valueString = "Histological diagnosis"
    * answerOption[+].valueString = "Radiological and histological diagnosis"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenRecurrence04(#1)
    * insert enableWhenRecurrence04(#2)
    * insert enableWhenRecurrence04(#3)
    * enableBehavior = #any

  * item[+]
    * linkId = "RecurDateCancer-Known-04"
    * type = #boolean
    * text = "Is the date of cancer recurrence known?"
    * insert enableWhenRecurrence04(#1)
    * insert enableWhenRecurrence04(#2)
    * insert enableWhenRecurrence04(#3)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId =  "RecurDateCancer-04"
    * type = #date
    * text = "What is the date of cancer recurrence?"
    * insert enableWhenTrue(RecurDateCancer-Known-04)

  * item[+]
    * linkId =  "VitalStatus-04"
    * type = #boolean
    * text = "Has the person deceased?"
    * required = true

  * item[+]
    * linkId = "DeceasedDate-Known-04"
    * type = #boolean
    * text = "Is the date of death of the person known?"
    * insert enableWhenTrue(VitalStatus-04)
    * required = true

  * item[+]
    * linkId =  "DeceasedDate-04"
    * type = #date
    * text = "What was the date of death of the person?"
    * insert enableWhenTrue(DeceasedDate-Known-04)

  * item[+]
    * linkId =  "DEATHBC-04"
    * type = #boolean
    * text = "Is the death attributable to breast cancer?"
    * insert enableWhenTrue(VitalStatus-04)

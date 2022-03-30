RuleSet: enableWhenRecurrence03(code)
* enableWhen[+]
  * question = "MalignancyRecur-03"
  * operator = #=
  * answerCoding = RecurrenceCodeSystem{code}

RuleSet: enableWhenTreatment03(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST-03"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}


Instance: 1YearClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical questionnaire response at year 1 of post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "OneYearClinicalResponse"
* title = "Clinical response at year 1 of post-treatment follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-03-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-03-Clinical"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-03-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true

// GROUP 2 - TUMOR FACTORS
* item[+]
  * linkId = "Tumor-Factors-03"
  * type = #group
  * text = "Tumor factors at 1 year follow-up"
  * required = true

  * item[+]
    * linkId = "MUTBC-03"
    * type = #choice
    * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
    * answerOption[+].valueString = "No mutation"
    * answerOption[+].valueString = "BRCA 1"
    * answerOption[+].valueString = "BRCA 2"
    * answerOption[+].valueString = "Other mutation"
    * answerOption[+].valueString = "Not tested"
    * required = true

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId = "Treatment-Variables-03"
  * type = #group
  * text = "Treatment Variables at 1 year follow-up"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST-03"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERY_BREAST-03"
    * type = #choice
    * text = "Indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)
    * insert enableWhenTreatment03(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown-03"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatment03(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDate-03"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown-03)
    * required = true

  * item[+]
    * linkId = "SURGERYAX-03"
    * type = #choice
    * text = "Indicate the type of surgery to the axilla the patient received during the last year:"
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)
    * insert enableWhenTreatment03(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known-03"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatment03(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-03"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"
    * insert enableWhenTrue(SURGERYAXDATE-Known-03)
    * required = true

  * item[+]
    * linkId = "SURGERYAX2-03"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Unknown"
    * enableWhen[+]
      * question = "SURGERYAX-03"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYAX-03"
      * operator = #=
      * answerCoding = SurgeryAxillaCodeSystem#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known-03"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2-03"
      * operator = #=
      * answerString = "Yes"
    * required = true
// EnableWhen doesnt work with string answerOptions

  * item[+]
    * linkId = "SURGERYAX2DATE-03"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * enableWhenTrue(SURGERYAX2DATE-Known-03)
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT-03"
    * type = #choice
    * text = "Indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueString = "Delayed reconstruction (direct/staged implant)"
    * answerOption[+].valueString = "Delayed reconstruction ( autologous)"
    * answerOption[+].valueString = "Delayed reconstruction (implant/autologous)"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known-03"
    * type = #boolean
    * text = "Is the date of delayed reconstruction known?"
    * insert enableWhenTreatment03(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-03"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known-03)
    * required = true

  * item[+]
    * linkId = "RADIOTX_BREAST-03"
    * type = #choice
    * text = "Indicate the intent of radiotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#4)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "RADIOTXTYPE_BREAST-03"
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
    * insert enableWhenTreatment03(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known-03"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatment03(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-03"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStartDate-Known-03)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known-03"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatment03(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-03"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known-03)
    * required = true

  * item[+]
    * linkId = "CHEMOTXINTENT-03"
    * type = #choice
    * text = "Indicate the intent of chemotherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST-03"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueString = "Anthracycline containing"
    * answerOption[+].valueString = "Taxane containing"
    * answerOption[+].valueString = "Platinum containing"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#5)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known-03"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment03(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate-03"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStartDate-Known-03)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known-03"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment03(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-03"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known-03)
    * required = true

  * item[+]
    * linkId = "HORMONTX_BREAST-03"
    * type = #choice
    * text = "Indicate the intent of hormontherapy:"
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXTYPE-03"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueString = "Aromatase inhibitor"
    * answerOption[+].valueString = "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueString = "Oophorectomy"
    * answerOption[+].valueString = "LHRH agonist"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#6)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known-03"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatment03(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXSTARTDATE-03"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known-03)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known-03"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatment03(#6)
    * required = true


  * item[+]
    * linkId = "HORMONTXSTOPDATE-03"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known-03)
    * required = true

  * item[+]
    * linkId = "TARGETTX_BREAST-03"
    * type = #choice
    * text = "Indicate the type of targeted therapy:"
    * answerOption[+].valueString = "Her-2 targeting therapy"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment03(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known-03"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment03(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-03"
    * type = #date
    * text = "Please provide the start date of targeted therapy, if applicable"
    * insert enableWhenTrue(TargetTxStartDate-Known-03)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known-03"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment03(#7)
    * required = true


  * item[+]
    * linkId = "TargetTxStopDate-03"
    * type = #date
    * text = "Please provide the stop date of targeted therapy, if applicable"
    * insert enableWhenTrue(TargetTxStopDate-Known-03)
    * required = true
    
  * item[+]
    * linkId = "SURGERYPATIENT-03"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerValueSet = Canonical(ReoperationsValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known-03"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT-03"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#0
    * enableWhen[+]
      * question = "SURGERYPATIENT-03"
      * operator = #!=
      * answerCoding = ReoperationsCodeSystem#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-03"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known-03)
    * required = true

  * item[+]
    * linkId = "SYSTPATIENT-03"
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
    * linkId = "SYSTDATEPATIENT-Known-03"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT-03"
      * operator = #=
      * answerString = "yes, but the treatment has stopped"
    * required = true
// enableWhen is not working here with answerString

  * item[+]
    * linkId = "SYSTDATEPATIENT-03"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * insert enableWhenTrue(SYSTDATEPATIENT-Known-03)
    * required = true
// enablewhen is not working here

// GROUP 5 - Survival and disease control
* item[+]
  * linkId = "Survival-and-Disease-control-03"
  * type = #group
  * text = "Survival and disease control at 1 year follow-up"
  * required = true

  * item[+]
    * linkId = "Survival-Q0-03"
    * type = #boolean
    * text = "Was the intent of the treatment curative?"
    * required = true

  * item[+]
    * linkId = "MalignancyRecur-03"
    * type = #choice
    * text = "Is there evidence of local, regional or distant recurrence of neoplasm? (In case of multiple recurrences, please report the most severe)"
    * answerValueSet = Canonical(RecurrenceValueSet)
    * insert enableWhenTrue(Survival-Q0-03)

  * item[+]
    * linkId = "RecurMethod-03"
    * type = #choice
    * text = "What was the method of confirming recurrence of neoplasm?"
    * answerOption[+].valueString = "Radiological diagnosis"
    * answerOption[+].valueString = "Histological diagnosis"
    * answerOption[+].valueString = "Radiological and histological diagnosis"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenRecurrence03(#1)
    * insert enableWhenRecurrence03(#2)
    * insert enableWhenRecurrence03(#3)
    * enableBehavior = #any

  * item[+]
    * linkId = "RecurDateCancer-Known-03"
    * type = #boolean
    * text = "Is the date of cancer recurrence known?"
    * insert enableWhenRecurrence03(#1)
    * insert enableWhenRecurrence03(#2)
    * insert enableWhenRecurrence03(#3)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "RecurDateCancer-03"
    * type = #date
    * text = "What is the date of cancer recurrence?"
    * insert enableWhenTrue(RecurDateCancer-Known-03)

  * item[+]
    * linkId = "VitalStatus-03"
    * type = #boolean
    * text = "Has the person deceased?"
    * required = true

  * item[+]
    * linkId = "DeceasedDate-Known-03"
    * type = #boolean
    * text = "Is the date of death of the person known?"
    * insert enableWhenTrue(VitalStatus-03)
    * required = true

  * item[+]
    * linkId = "DeceasedDate-03"
    * type = #date
    * text = "What was the date of death of the person?"
    * insert enableWhenTrue(DeceasedDate-Known-03)

  * item[+]
    * linkId = "DEATHBC-03"
    * type = #boolean
    * text = "Is the death attributable to breast cancer?"
    * insert enableWhenTrue(VitalStatus-03)

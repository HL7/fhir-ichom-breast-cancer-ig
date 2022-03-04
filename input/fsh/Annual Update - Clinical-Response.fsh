
Instance: AnnualUpdateClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Annual update of clinical questionnaire response after 1 year follow-up"
* insert PublicationInstanceRuleset

* name = "AnnualUpdateClinicalResponse"
* title = "Annual update of clinical questionnaire response"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "General-Information"
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

// GROUP 2 - TREATMENT VARIABLES 
* item[+]
  * linkId =  "Treatment-Variables"
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
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)    
    * insert enableWhenTreatment(#1)
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
    * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)    
    * insert enableWhenTreatment(#2)
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
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Unknown"
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
      * answerString = "Yes"
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT"
    * type = #choice
    * text = "Indicate whether the patient received a delayed reconstruction during the last year:"
    * answerOption[+].valueString = "Delayed reconstruction  (direct/staged implant)"
    * answerOption[+].valueString = "Delayed reconstruction ( autologous)"
    * answerOption[+].valueString = "Delayed reconstruction  (implant/autologous)"
    * answerOption[+].valueString = "Unknown"
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
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#4)
    * required = true

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
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate what type of chemotherapy (select all that apply):"
    * answerOption[+].valueString = "Anthracycline containing"
    * answerOption[+].valueString = "Taxane containing"
    * answerOption[+].valueString = "Platinum containing"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
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
    * answerOption[+].valueString = "Neoadjuvant"
    * answerOption[+].valueString = "Adjuvant"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]  
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Indicate what type of hormonal therapy (select all that apply):"
    * answerOption[+].valueString = "Aromatase inhibitor"
    * answerOption[+].valueString = "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueString = "Oophorectomy"
    * answerOption[+].valueString = "LHRH agonist"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
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
    * answerOption[+].valueString = "Her-2 targeting therapy"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
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
    * answerOption[+].valueString = "no, never had systemic treatment"
    * answerOption[+].valueString = "yes, but the treatment has stopped"
    * answerOption[+].valueString = "yes, on chemotherapy"
    * answerOption[+].valueString = "yes, on targeted therapy"
    * answerOption[+].valueString = "yes, on hormone therapy"
    * answerOption[+].valueString = "unkown"
    * required = true

  * item[+]     
    * linkId = "SYSTDATEPATIENT"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * enableWhen[+]
      * question = "SYSTPATIENT"
      * operator = #=
      * answerString = "yes, but the treatment has stopped"
    * required = true

// GROUP 3 - Survival and disease control
* item[+]
  * linkId =  "Survival-and-Disease-control"
  * type = #group
  * text = "Survival and disease control"
  * required = true

  * item[+]
    * linkId =  "Survival-Q0"
    * type = #boolean
    * text = "Was the intent of the treatment curative?"
    * required = true

  * item[+]
    * linkId =  "MalignancyRecur"
    * type = #choice
    * text = "Is there evidence of local, regional or distant recurrence of neoplasm? (In case of multiple recurrences, please report the most severe)"
    * answerValueSet = Canonical(RecurrenceValueSet)
    * insert enableWhenTrue(Survival-Q0)

  * item[+]
    * linkId =  "RecurMethod"
    * type = #choice
    * text = "What was the method of confirming recurrence of neoplasm?"
    * answerOption[+].valueString = "Radiological diagnosis"
    * answerOption[+].valueString = "Histological diagnosis"
    * answerOption[+].valueString = "Radiological and histological diagnosis"
    * answerOption[+].valueString = "Unknown"
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any

  * item[+]
    * linkId =  "RecurDateCancer"
    * type = #date
    * text = "What is the date of cancer recurrence?"
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any

  * item[+]
    * linkId =  "VitalStatus"
    * type = #boolean
    * text = "Has the person deceased?"
    * required = true

  * item[+]
    * linkId =  "DeceasedDate"
    * type = #date
    * text = "What was the date of death of the person?"
    * insert enableWhenTrue(VitalStatus)

  * item[+]
    * linkId =  "DEATHBC"
    * type = #boolean
    * text = "Is the death attributable to breast cancer?"
    * insert enableWhenTrue(VitalStatus)

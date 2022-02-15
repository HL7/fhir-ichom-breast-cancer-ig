// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment(code)
* enableWhen
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = {code}

Instance: TreatmentVariables
InstanceOf: Questionnaire
Usage: #definition
Description: "Treatment variables"
* insert PublicationInstanceRuleset

* name = "Treatment variables"
* title = "Treatment variables"
* status = #draft

* item[+]
  * linkId = "TREATMENT_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply) "
  * answerValueSet = Canonical(TreatmentTypes)
  * required = true
  * repeats = true

* item[+]
  // TODO: handle unknown dates, see notes.md for options
  * linkId = "SURGERY_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received surgery during the last year:"
  * insert enableWhenTreatment($treatment#1)
  * answerValueSet = Canonical(BreastSurgeryTypes)

* item[+]
  * linkId = "SurgeryDate"
  * type = #date
  * text = "Provide the date of surgery:"



* item[+]
  * linkId = "SURGERYAX"
  * type = #choice
  * text = "Indicate whether the patient received surgery to the axilla during the last year:"
  * insert enableWhenTreatment($treatment#2)

* item[+]
  * linkId = "SURGERYAXDATE"
  * type = #date
  * text = "Please provide the date of surgery to the axilla:"  

* item[+]
  * linkId = "SURGERYAX2"
  * type = #choice
  * text = "Indicate whether the patient received  axillary clearance due to lymph node involvement after sentinel lymph node biopsy  during the last year:"


* item[+]  
  * linkId = "SURGERYAX2DATE"
  * type = #date
  * text = "Please provide the date of axillary clearance:"



* item[+] 
  * linkId = "RECONSTRUCT"
  * type = #choice
  * text = "Indicate whether the patient received a delayed reconstruction during the last year:"


* item[+]  
  * linkId = "RECONSTRUCTDATE"
  * type = #date
  * text = "Please provide the date of delayed reconstruction:"


* item[+]  
  * linkId = "RADIOTX_BREAST"
  * type = #choice
  * text = "If the patient received radiotherapy during the last year, please indicate the intent of radiotherapy:"



* item[+]  
  * linkId = "RADIOTXTYPE_BREAST"
  * type = #choice
  * text = "Indicate location/type of radiotherapy:"


* item[+]  
  * linkId = "RadioTxStartDate"
  * type = #date
  * text = "Please provide the start date of radiotherapy:"



* item[+]
  * linkId = "RadioTxStopDate"
  * type = #date
  * text = "Please provide the stop date of radiotherapy:"




* item[+]
  * linkId = "CHEMOTXINTENT"
  * type = #choice
  * text = "If the patient received chemotherapy during the last year, please indicate the intent of chemotherapy:"



* item[+]
  * linkId = "CHEMOTXTYPE_BREAST"
  * type = #choice
  * text = "Indicate what type of chemotherapy (select all that apply):"



* item[+]
  * linkId = "ChemoTxStartDate"
  * type = #date
  * text = "Please provide the start date of chemotherapy:"


* item[+]
  * linkId = "ChemoTxStopdate"
  * type = #date
  * text = "Please provide the stop date of chemotherapy:"



* item[+]  
  * linkId = "HORMONTX_BREAST"
  * type = #choice
  * text = "If the patient received hormontherapy during the last year, please indicate the intent of hormontherapy:"



* item[+]  
  * linkId = "HORMONTXTYPE"
  * type = #choice
  * text = "Indicate what type of hormonal therapy (select all that apply):"



* item[+]  
  * linkId = "HORMONTXSTARTDATE"
  * type = #date
  * text = "Please provide the start date of hormonal therapy:"


* item[+]  
  * linkId = "HORMONTXSTOPDATE"
  * type = #date
  * text = "Please provide the stop date of hormonal therapy, if applicable:"


* item[+]  
  * linkId = "TARGETTX_BREAST"
  * type = #choice
  * text = "Indicate what type of targeted therapy:"


* item[+]  
  * linkId = "TargetTxStartDate"
  * type = #date
  * text = "Please provide the start date of targeted therapy, if applicable"


* item[+]  
  * linkId = "TargetTxStopDate"
  * type = #date
  * text = "Please provide the stop date of targeted therapy, if applicable"


* item[+]  
  * linkId = "SURGERYPATIENT"
  * type = #choice
  * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"


* item[+]  
  * linkId = "SURGERYDATEPATIENT"
  * type = #date
  * text = "If yes, when was the reoperation?"


* item[+]  
  * linkId = "SYSTPATIENT"
  * type = #choice
  * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"



* item[+]  
  * linkId = "SYSTDATEPATIENT"
  * type = #date
  * text = "If the treatment has stopped, when did the treatment stop?"
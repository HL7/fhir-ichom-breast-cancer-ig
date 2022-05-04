// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: ClinicalResponseBaseline
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical response questionnaire at baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "ClinicalResponseBaseline"
* title = "Clinical response questionnaire at baseline"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
    * type = #integer 
    * text = "What is the patient's medical record number?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "Indicate the patient's last name"
    * required = true

// GROUP 2 - DEMOGRAPHICS
* item[+]
  * linkId = "Demographics"
  * type = #group
  * text = "Demographic factors"
  * required = true

  * item[+]
    * linkId = "Sex"
    * type = #choice
    * text = "Please indicate the sex of the patient at birth."
    * answerValueSet = Canonical(DemographicFactorsAdministrativeGender)
    * required = true

  * item[+]
    * linkId = "YearOfBirth"
    * type = #integer
    * text = "In what year was the patient born?"
    * required = true
    * maxLength = 4


// GROUP 3 - CLINICAL FACTORS
* item[+]
  * linkId = "Clinical-Factors"
  * type = #group
  * text = "Clinical factors"
  * required = true

  * item[+]
    * linkId = "HeightValue"
    * type = #integer
    * text = "Please indicate the patient's body height."
    * maxLength = 3
    * required = true
    
  * item[+]
    * linkId = "HeightUnit" 
    * type = #choice
    * text = "Please indicate the unit of the measurement that you recorded the patient's height in."
    * answerOption[+].valueString = "cm"
    * answerOption[+].valueString = "inches"
    * required = true
 
  * item[+]
    * linkId = "WeightValue"
    * type = #integer
    * text = "Please indicate the patient's body weight." 
    * maxLength = 3
    * required = true

  * item[+]
    * linkId = "WeightUnit" 
    * type = #choice
    * text = "Please indicate the unit of the measurement that you recorded the patient's weight in." 
    * answerOption[+].valueString = "kilograms"
    * answerOption[+].valueString = "lbs"
    * required = true

  * item[+]
    * linkId = "LATERAL"
    * type = #choice
    * text = "Indicate the laterality of breast cancer:"
    * answerOption[+].valueString = "Left breast"
    * answerOption[+].valueString = "Right breast"
    * answerOption[+].valueString = "Both breasts"
    * required = true

  * item[+]
    * linkId = "FIRSTBC"
    * type = #choice
    * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
    * answerOption[+].valueString = "Primary tumor"
    * answerOption[+].valueString = "New ipsilateral"
    * answerOption[+].valueString = "New contralateral"
    * required = true

// GROUP 4 - TUMOR FACTORS
* item[+]
  * linkId = "Tumor-Factors"
  * type = #group
  * text = "Tumor factors"
  * required = true

  * item[+]
    * linkId = "HistologicalDateKnown"
    * type = #boolean
    * text = "Is the date of histological diagnosis known?"
    * required = true

  * item[+]
    * linkId = "HistologicalDiagnosisDate"
    * type = #date
    * text = "Indicate the initial date of histological diagnosis"
    * required = true
    * enableWhenTrue(HistologicalDateKnown)

  * item[+]
    * linkId = "HISTOTYPE"
    * type = #choice
    * text = "Indicate the histologic type of the tumor (select all that apply)"
    * answerOption[+].valueString = "Ductal carcinoma in situ"
    * answerOption[+].valueString = "Invasive ductal carcinoma"
    * answerOption[+].valueString = "Invasive lobular carcinoma"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * required = true
    * repeats = true

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
    * linkId = "GRADEINV"
    * type = #choice
    * text = "Indicate the grade of the invasive component of tumor"
    * answerOption[+].valueString = "Grade 1"
    * answerOption[+].valueString = "Grade 2"
    * answerOption[+].valueString = "Grade 3"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "GRADEDCIS"
    * type = #choice
    * text = "Indicate the tumor grade of DCIS component of tumor"
    * answerOption[+].valueString = "Low"
    * answerOption[+].valueString = "Intermediate"
    * answerOption[+].valueString = "High"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "TNMCT_BREAST"
    * type = #choice
    * text = "Indicate the clinical tumor stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cTX"
    * answerOption[+].valueString = "cT0"
    * answerOption[+].valueString = "cTis"
    * answerOption[+].valueString = "cT1"
    * answerOption[+].valueString = "cT2"
    * answerOption[+].valueString = "cT3"
    * answerOption[+].valueString = "cT4"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "TNMCN_BREAST"
    * type = #choice
    * text = "Indicate the clinical nodal stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cNX"
    * answerOption[+].valueString = "cN0"
    * answerOption[+].valueString = "cN1"
    * answerOption[+].valueString = "cN2"
    * answerOption[+].valueString = "cN3"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "TNMCM_BREAST"
    * type = #choice
    * text = "Indicate the clinical distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cMX"
    * answerOption[+].valueString = "cM0"
    * answerOption[+].valueString = "cM1"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "ERSTATUS"
    * type = #choice
    * text = "Indicate the status of the estrogen receptor:"
    * answerOption[+].valueString = "Negative"
    * answerOption[+].valueString = "Positive"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unknown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "PRSTATUS"
    * type = #choice
    * text = "Indicate the status of the progesterone receptor:"
    * answerOption[+].valueString = "Negative"
    * answerOption[+].valueString = "Positive"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unknown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "HER2STATUS"
    * type = #choice
    * text = "Indicate the status of the HER2 receptor:"
    * answerOption[+].valueString = "Negative"
    * answerOption[+].valueString = "Positive"
    * answerOption[+].valueString = "Equivocal"
    * answerOption[+].valueString = "Not performed"
    * required = true
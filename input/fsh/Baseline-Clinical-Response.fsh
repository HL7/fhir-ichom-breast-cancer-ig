// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: BaselineClinical
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical questionnaire response during baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "BaselineClinical"
* title = "Clinical response at baseline"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "Baseline-General-Information"
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

// GROUP 2 - DEMOGRAPHICS
* item[+]
  * linkId =  "Demographics"
  * type = #group
  * text = "Demographic factors"
  * required = true

  * item[+]
    * linkId = "Sex"
    * type = #choice
    * text = "Please indicate your sex at birth."
    * answerValueSet = Canonical(DemographicFactorsSex)
    * required = true

  * item[+]
    * linkId = "YearOfBirth"
    * type = #date
    * text = "In what year were you born?"
    * required = true

// GROUP 3 - BASELINE CLINICAL FACTORS
* item[+]
  * linkId =  "Baseline-Clinical-Factors"
  * type = #group
  * text = "Clinical factors"
  * required = true

  * item[+]
    * linkId = "HeightValue"
    * type = #integer
    * text =  "Please indicate your body height."
    * maxLength = 3

  * item[+]
    * linkId = "HeightUnit" 
    * type = #choice
    * text = "Please indicate what units of measurement (centimeters or inches) that you recorded your height in."
    * answerOption[+].valueString = "cm"
    * answerOption[+].valueString = "inches"

  * item[+]
    * linkId = "WeightValue"
    * type = #integer
    * text = "Please indicate your body weight." 
    * maxLength = 3

  * item[+]
    * linkId = "WeightUnit" 
    * type = #choice
    * text = "Please indicate what units of measurement (kilograms or pounds) that you recorded your weight in." 
    * answerOption[+].valueString = "kilograms"
    * answerOption[+].valueString = "lbs"

  * item[+]
    * linkId = "LATERAL"
    * type = #choice
    * text = "Indicate the laterality of breast cancer:"
    * answerOption[+].valueString = "Left breast"
    * answerOption[+].valueString = "Right breast"
    * answerOption[+].valueString = "Both breasts"

  * item[+]
    * linkId = "FIRSTBC"
    * type = #choice
    * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
    * answerOption[+].valueString = "Primary tumor"
    * answerOption[+].valueString = "New ipsilateral"
    * answerOption[+].valueString = "New contralateral"


// GROUP 4 - BASELINE TUMOR FACTORS
* item[+]
  * linkId =  "Baseline-Tumor-Factors"
  * type = #group
  * text = "Tumor factors"
  * required = true

  * item[+]
    * linkId = "HistologicalDiagnosisDate"
    * type = #date
    * text = "The initial date of histological diagnosis"

  * item[+]
    * linkId = "HISTOTYPE"
    * type = #choice
    * text = "Indicate histologic type of the tumor (select all that apply)"
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
    * text = "Indicate grade of invasive component of tumor"
    * answerOption[+].valueString = "Grade 1"
    * answerOption[+].valueString = "Grade 2"
    * answerOption[+].valueString = "Grade 3"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "GRADEDCIS"
    * type = #choice
    * text = "Indicate tumor grade of DCIS component of tumor"
    * answerOption[+].valueString = "Low"
    * answerOption[+].valueString = "Intermediate"
    * answerOption[+].valueString = "High"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "TNMCT_BREAST"
    * type = #choice
    * text = "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(ClinicalTumorStage)
  //* insert enableWhenTrue(received_neoadjuvant_therapy)

  * item[+]
    * linkId = "TNMCN_BREAST"
    * type = #choice
    * text = "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(ClinicalNodalStage)
    //* insert enableWhenTrue(received_neoadjuvant_therapy)

  * item[+]
    * linkId = "TNMCM_BREAST"
    * type = #choice
    * text = "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerValueSet = Canonical(ClinicalDistantMetastasis)
    //* insert enableWhenTrue(received_neoadjuvant_therapy)

  * item[+]
    * linkId = "ERSTATUS"
    * type = #choice
    * text = "Indicate if the estrogen receptor status is positive"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unkown"
    * required = true
  // * insert enableWhenTrue(received_surgery)

  * item[+]
    * linkId = "PRSTATUS"
    * type = #choice
    * text = "Indicate if the progesterone receptor status is positive"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unkown"
  // * insert enableWhenTrue(received_surgery)
    * required = true

  * item[+]
    * linkId = "HER2STATUS"
    * type = #choice
    * text = "Indicate if the HER2 receptor status is positive"
    * answerOption[+].valueString = "Negative"
    * answerOption[+].valueString = "Positive"
    * answerOption[+].valueString = "Equivocal"
    * answerOption[+].valueString = "HER2 receptor status not tested"
  // * insert enableWhenTrue(received_surgery)

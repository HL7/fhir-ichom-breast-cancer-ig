Instance: BaselineResponse
InstanceOf: Questionnaire
Usage: #definition
Description: "Questionnaire response during baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "BaselineReponse"
* title = "Baseline questionnaire response"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId =  "Baseline-general-information"
  * type = #group
  * text = "Baseling general information"
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
  * linkId =  "Baseline-Demographics"
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

* item[+]
  * linkId = "COUNTRY"
  * type = #choice
  * text = "What is your country of residence?"
  * answerValueSet = Canonical(DemographicCountry)
  * required = true

* item[+]
  * linkId = "Ethnicity"
  * type = #string
  * text = "Please indicate the ethnicity that you identify with."
    //Canonical is missing

* item[+]
  * linkId = "Race"
  * type = #string
  * text = "Please indicate the biological race that you identify with."
    //Canonical is missing

* item[+]
  * linkId = "EducationLevel"
  * type = #choice
  * text = "Please indicate your highest level of schooling."
  * answerOption[+].valueCoding = #none "none"
  * answerOption[+].valueCoding = #primary "Primary"
  * answerOption[+].valueCoding = #secondary "Secondary"
  * answerOption[+].valueCoding = #tertiary "Tertiary"
  * required = true


* item[+]
  * linkId = "RelationshipStatus"
  * type = #choice
  * text = "Please indicate your current relationship status."
  * answerValueSet = Canonical(RelationshipStatus)
  * required = true
// valueset described in dictionary not standard, currently referring to standard value set

* item[+]
  * linkId = "MENOPAUSE"
  * type = #choice
  * text = "What is your current menopausal status?"
  * answerOption[+].valueCoding = #0 "Pre-menopause"
  * answerOption[+].valueCoding = #1 "Post-menopausei (natural/surgical) - if you have not had your period >12 months, caused by natural decline of hormones or due to surgery (e.g. menopause that develops after the ovaries are surgically removed)"
  * answerOption[+].valueCoding = #2 "I don't know what my current menopausal status is"
  * enableWhen
    * question = "Sex"
    * operator = #=
    * answerCoding = http://hl7.org/fhir/administrative-gender#female

// GROUP 3 - BASELINE CLINICAL FACTORS

// RuleSet: enableWhenComorbidity(code)
// * enableWhen
//   * question = "ComorbiditiesSACQ"
//   * operator = #=
//   * answerCoding = {code}

* item[+]
  * linkId =  "Baseline-clinical-factors"
  * type = #group
  * text = "Baseline clinical factors"
  * required = true

* item[+]
  * linkId = "ComorbiditiesSACQ"
  * type = #choice
  * text = "Have you been told by a doctor that you have any of the following?"
  * answerValueSet = Canonical(SACQPatientComorbidityHistory)
  * required = true
  * repeats = true

* item[+]
  * linkId = "ComorbiditiesSACQ_HeartDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for heart disease (For example, angina, heart failure, or heart attack)?"
  * insert enableWhenComorbidity($SCT#56265001)

* item[+]
  * linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
  * type = #boolean
  * text = "Does your heart disease limit your activities?"
  * insert enableWhenComorbidity($SCT#56265001)

* item[+]
  * linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
  * type = #boolean
  * text = "Do you receive treatment for high blood pressure?"
  * insert enableWhenComorbidity($SCT#38341003)

* item[+]
  * linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
  * type = #boolean
  * text = "Does your high blood pressure limit your activities?"
  * insert enableWhenComorbidity($SCT#38341003)

* item[+]
  * linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for lung disease?"
  * insert enableWhenComorbidity($SCT#19829001)

* item[+]
  * linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
  * type = #boolean
  * text = "Does your lung disease limit your activities?"
  * insert enableWhenComorbidity($SCT#19829001)

* item[+]
  * linkId = "ComorbiditiesSACQ_DiabetesFU1"
  * type = #boolean
  * text = "Do you receive treatment for diabetes?"
  * insert enableWhenComorbidity($SCT#73211009)

* item[+]
  * linkId = "ComorbiditiesSACQ_DiabetesFU2"
  * type = #boolean
  * text = "Does your diabetes limit your activities?"
  * insert enableWhenComorbidity($SCT#73211009)

* item[+]
  * linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for an ulcer or stomach disease?"
  * insert enableWhenComorbidity($SCT#429040005)

* item[+]
  * linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
  * type = #boolean
  * text = "Does your ulcer or stomach disease limit your activities?"
  * insert enableWhenComorbidity($SCT#429040005)

* item[+]
  * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for kidney disease?"
  * insert enableWhenComorbidity($SCT#90708001)

* item[+]
  * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
  * type = #boolean
  * text = "Does your kidney disease limit your activities?"
  * insert enableWhenComorbidity($SCT#90708001)

* item[+]
  * linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for liver disease?"
  * insert enableWhenComorbidity($SCT#235856003)

* item[+]
  * linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
  * type = #boolean
  * text = "Does your liver disease limit your activities?"
  * insert enableWhenComorbidity($SCT#235856003)

* item[+]
  * linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for anemia or other blood disease?"
  * insert enableWhenComorbidity($SCT#271737000)

* item[+]
  * linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
  * type = #boolean
  * text = "Does your anemia or other blood disease limit your activities?"
  * insert enableWhenComorbidity($SCT#271737000)

* item[+]
  * linkId = "ComorbiditiesSACQ_CancerFU1"
  * type = #boolean
  * text = "Do you receive treatment for cancer/another cancer?"
  * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#cancer-within-5yrs)

* item[+]
  * linkId = "ComorbiditiesSACQ_CancerFU2"
  * type = #boolean
  * text = "Does your cancer/other cancer limit your activities?"
  * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#cancer-within-5yrs)

* item[+]
  * linkId = "ComorbiditiesSACQ_DepressionFU1"
  * type = #boolean
  * text = "Do you receive treatment for depression?"
  * insert enableWhenComorbidity($SCT#35489007)

* item[+]
  * linkId = "ComorbiditiesSACQ_DepressionFU2"
  * type = #boolean
  * text = "Does your depression limit your activities?"
  * insert enableWhenComorbidity($SCT#35489007)

* item[+]
  * linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
  * type = #boolean
  * text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"
  * insert enableWhenComorbidity($SCT#396275006)

* item[+]
  * linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
  * type = #boolean
  * text = "Does your osteoarthritis/degenerative arthritis limit your activities?"
  * insert enableWhenComorbidity($SCT#396275006)

* item[+]
  * linkId = "ComorbiditiesSACQ_BackPainFU1"
  * type = #boolean
  * text = "Do you receive treatment for back pain?"
  * insert enableWhenComorbidity($SCT#161891005)

* item[+]
  * linkId = "ComorbiditiesSACQ_BackPainFU2"
  * type = #boolean
  * text = "Does your back pain limit your activities?"
  * insert enableWhenComorbidity($SCT#161891005)

* item[+]
  * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
  * type = #boolean
  * text = "Do you receive treatment for rheumatoid arthritis?"
  * insert enableWhenComorbidity($SCT#69896004)

* item[+]
  * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
  * type = #boolean
  * text = "Does your rheumatoid arthritis limit your activities?"
  * insert enableWhenComorbidity($SCT#69896004)

* item[+]
  * linkId = "ComorbiditiesSACQ_Other"
  * type = #text
  * text = "What other medical problems are you experiencing?"
  * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#other-medical-problems)

* item[+]
  * linkId = "ComorbiditiesSACQ_Score"
  * type = #integer
  * text = "What is the total summed score of the patient's SACQ responses?"
  * maxLength = 2
// Add answerOptions to limit the possible answers?

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
  * text = "Indicate the laterality of breast cancer: "
  * answerOption[+].valueString = "Left breast"
  * answerOption[+].valueString = "Right breast"
  * answerOption[+].valueString = "Both breasts"

* item[+]
  * linkId = "FIRSTBC"
  * type = #choice
  * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast: "
  * answerOption[+].valueString = "Primary tumor"
  * answerOption[+].valueString = "New ipsilateral"
  * answerOption[+].valueString = "New contralateral"


// GROUP 4 - BASELINE TUMOR FACTORS
* item[+]
  * linkId = "HistologicalDiagnosisDate"
  * type = #date
  * text = "The initial date of histological diagnosis"

* item[+]
  * linkId = "HISTOTYPE"
  * type = #choice
  * text = "Indicate histologic type of the tumor (select all that apply)"
  * answerOption[+].valueCoding = #0 "Ductal carcinoma in situ"
  * answerOption[+].valueCoding = #1 "Invasive ductal carcinoma"
  * answerOption[+].valueCoding = #2 "Invasive lobular carcinoma"
  * answerOption[+].valueCoding = #3 "Other"
  * answerOption[+].valueCoding = #999 "Unknown"
  * required = true
  * repeats = true

* item[+]
  * linkId = "MUTBC"
  * type = #choice
  * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
  * answerOption[+].valueCoding = #0 "No mutation"
  * answerOption[+].valueCoding = #1 "BRCA 1"
  * answerOption[+].valueCoding = #2 "BRCA 2"
  * answerOption[+].valueCoding = #3 "Other mutation"
  * answerOption[+].valueCoding = #4 "Not tested"
  * required = true

* item[+]
  * linkId = "GRADEINV"
  * type = #choice
  * text = "Indicate grade of invasive component of tumor"
  * answerOption[+].valueCoding = #0 "Grade 1"
  * answerOption[+].valueCoding = #1 "Grade 2"
  * answerOption[+].valueCoding = #2 "Grade 3"
  * answerOption[+].valueCoding = #3 "Not reported"
  * required = true

* item[+]
  * linkId = "GRADEDCIS"
  * type = #choice
  * text = "Indicate tumor grade of DCIS component of tumor"
  * answerOption[+].valueCoding = #0 "Low"
  * answerOption[+].valueCoding = #1 "Intermediate"
  * answerOption[+].valueCoding = #2 "High"
  * answerOption[+].valueCoding = #3 "Not reported"
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
  * answerOption[+].valueCoding = #0 "No"
  * answerOption[+].valueCoding = #1 "Yes"
  * answerOption[+].valueCoding = #2 "Not performed"
  * answerOption[+].valueCoding = #999 "Unkown"
  * required = true
 // * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "PRSTATUS"
  * type = #choice
  * text = "Indicate if the progesterone receptor status is positive"
  * answerOption[+].valueCoding = #0 "No"
  * answerOption[+].valueCoding = #1 "Yes"
  * answerOption[+].valueCoding = #2 "Not performed"
  * answerOption[+].valueCoding = #999 "Unkown"
 // * insert enableWhenTrue(received_surgery)
  * required = true

* item[+]
  * linkId = "HER2STATUS"
  * type = #choice
  * text = "Indicate if the HER2 receptor status is positive"
  * answerOption[+].valueCoding = #0 "Negative"
  * answerOption[+].valueCoding = #1 "Positive"
  * answerOption[+].valueCoding = #2 "Equivocal"
  * answerOption[+].valueCoding = #3 "HER2 receptor status not tested"
 // * insert enableWhenTrue(received_surgery)

// GROUP 5 - DEGREE OF HEALTH
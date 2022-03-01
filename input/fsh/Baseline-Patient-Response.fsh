// Rulesets:
// shorthand notation to only show a particular question based on the type of comorbidity
RuleSet: enableWhenComorbidity(code)
* enableWhen
  * question = "ComorbiditiesSACQ"
  * operator = #=
  * answerCoding = {code}


// shorthand notation to only show questions based on the surgery the patient received
RuleSet: enableWhenSurgeryType(code)
* enableWhen[+]
  * question = "BreastQ_Surgery"
  * operator = #=
  * answerCoding = BreastQSurgeryCodeSystem{code}

Instance: BaselinePatientReported
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient-reported response during baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "BaselinePatientReported"
* title = "Patient reported response at baseline"
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

  // * item[+]
  //   * linkId = "Sex"
  //   * type = #choice
  //   * text = "Please indicate your sex at birth."
  //   * answerValueSet = Canonical(DemographicFactorsSex)
  //   * required = true

  // * item[+]
  //   * linkId = "YearOfBirth"
  //   * type = #date
  //   * text = "In what year were you born?"
  //   * required = true

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
    * answerOption[+].valueString = "none"
    * answerOption[+].valueString = "Primary"
    * answerOption[+].valueString = "Secondary"
    * answerOption[+].valueString = "Tertiary"
    * required = true


  * item[+]
    * linkId = "RelationshipStatus"
    * type = #choice
    * text = "Please indicate your current relationship status."
    * answerValueSet = Canonical(RelationshipStatus)
    * required = true
  // valueset described in dictionary not standard, currently referring to standard value set
  // AnswerOptions?

  * item[+]
    * linkId = "MENOPAUSE"
    * type = #choice
    * text = "What is your current menopausal status?"
    * answerOption[+].valueString = "Pre-menopause"
    * answerOption[+].valueString = "Post-menopausei (natural/surgical) - if you have not had your period >12 months, caused by natural decline of hormones or due to surgery (e.g. menopause that develops after the ovaries are surgically removed)"
    * answerOption[+].valueString = "I don't know what my current menopausal status is"
    // * enableWhen
    //   * question = "Sex"
    //   * operator = #=
    //   * answerCoding = http://hl7.org/fhir/administrative-gender#female

// GROUP 3 - BASELINE CLINICAL FACTORS
* item[+]
  * linkId =  "Baseline-Clinical-Factors"
  * type = #group
  * text = "Clinical factors"
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

  // * item[+]
  //   * linkId = "HeightValue"
  //   * type = #integer
  //   * text =  "Please indicate your body height."
  //   * maxLength = 3

  // * item[+]
  //   * linkId = "HeightUnit" 
  //   * type = #choice
  //   * text = "Please indicate what units of measurement (centimeters or inches) that you recorded your height in."
  //   * answerOption[+].valueString = "cm"
  //   * answerOption[+].valueString = "inches"

  // * item[+]
  //   * linkId = "WeightValue"
  //   * type = #integer
  //   * text = "Please indicate your body weight." 
  //   * maxLength = 3

  // * item[+]
  //   * linkId = "WeightUnit" 
  //   * type = #choice
  //   * text = "Please indicate what units of measurement (kilograms or pounds) that you recorded your weight in." 
  //   * answerOption[+].valueString = "kilograms"
  //   * answerOption[+].valueString = "lbs"

  // * item[+]
  //   * linkId = "LATERAL"
  //   * type = #choice
  //   * text = "Indicate the laterality of breast cancer:"
  //   * answerOption[+].valueString = "Left breast"
  //   * answerOption[+].valueString = "Right breast"
  //   * answerOption[+].valueString = "Both breasts"

  // * item[+]
  //   * linkId = "FIRSTBC"
  //   * type = #choice
  //   * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
  //   * answerOption[+].valueString = "Primary tumor"
  //   * answerOption[+].valueString = "New ipsilateral"
  //   * answerOption[+].valueString = "New contralateral"


// // GROUP 4 - BASELINE TUMOR FACTORS
// * item[+]
//   * linkId =  "Baseline-Tumor-Factors"
//   * type = #group
//   * text = "Tumor factors"
//   * required = true

//   * item[+]
//     * linkId = "HistologicalDiagnosisDate"
//     * type = #date
//     * text = "The initial date of histological diagnosis"

//   * item[+]
//     * linkId = "HISTOTYPE"
//     * type = #choice
//     * text = "Indicate histologic type of the tumor (select all that apply)"
//     * answerOption[+].valueString = "Ductal carcinoma in situ"
//     * answerOption[+].valueString = "Invasive ductal carcinoma"
//     * answerOption[+].valueString = "Invasive lobular carcinoma"
//     * answerOption[+].valueString = "Other"
//     * answerOption[+].valueString = "Unknown"
//     * required = true
//     * repeats = true

//   * item[+]
//     * linkId = "MUTBC"
//     * type = #choice
//     * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
//     * answerOption[+].valueString = "No mutation"
//     * answerOption[+].valueString = "BRCA 1"
//     * answerOption[+].valueString = "BRCA 2"
//     * answerOption[+].valueString = "Other mutation"
//     * answerOption[+].valueString = "Not tested"
//     * required = true

//   * item[+]
//     * linkId = "GRADEINV"
//     * type = #choice
//     * text = "Indicate grade of invasive component of tumor"
//     * answerOption[+].valueString = "Grade 1"
//     * answerOption[+].valueString = "Grade 2"
//     * answerOption[+].valueString = "Grade 3"
//     * answerOption[+].valueString = "Not reported"
//     * required = true

//   * item[+]
//     * linkId = "GRADEDCIS"
//     * type = #choice
//     * text = "Indicate tumor grade of DCIS component of tumor"
//     * answerOption[+].valueString = "Low"
//     * answerOption[+].valueString = "Intermediate"
//     * answerOption[+].valueString = "High"
//     * answerOption[+].valueString = "Not reported"
//     * required = true

//   * item[+]
//     * linkId = "TNMCT_BREAST"
//     * type = #choice
//     * text = "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
//     * answerValueSet = Canonical(ClinicalTumorStage)
//   //* insert enableWhenTrue(received_neoadjuvant_therapy)

//   * item[+]
//     * linkId = "TNMCN_BREAST"
//     * type = #choice
//     * text = "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
//     * answerValueSet = Canonical(ClinicalNodalStage)
//     //* insert enableWhenTrue(received_neoadjuvant_therapy)

//   * item[+]
//     * linkId = "TNMCM_BREAST"
//     * type = #choice
//     * text = "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
//     * answerValueSet = Canonical(ClinicalDistantMetastasis)
//     //* insert enableWhenTrue(received_neoadjuvant_therapy)

//   * item[+]
//     * linkId = "ERSTATUS"
//     * type = #choice
//     * text = "Indicate if the estrogen receptor status is positive"
//     * answerOption[+].valueString = "No"
//     * answerOption[+].valueString = "Yes"
//     * answerOption[+].valueString = "Not performed"
//     * answerOption[+].valueString = "Unkown"
//     * required = true
//   // * insert enableWhenTrue(received_surgery)

//   * item[+]
//     * linkId = "PRSTATUS"
//     * type = #choice
//     * text = "Indicate if the progesterone receptor status is positive"
//     * answerOption[+].valueString = "No"
//     * answerOption[+].valueString = "Yes"
//     * answerOption[+].valueString = "Not performed"
//     * answerOption[+].valueString = "Unkown"
//   // * insert enableWhenTrue(received_surgery)
//     * required = true

//   * item[+]
//     * linkId = "HER2STATUS"
//     * type = #choice
//     * text = "Indicate if the HER2 receptor status is positive"
//     * answerOption[+].valueString = "Negative"
//     * answerOption[+].valueString = "Positive"
//     * answerOption[+].valueString = "Equivocal"
//     * answerOption[+].valueString = "HER2 receptor status not tested"
//   // * insert enableWhenTrue(received_surgery)

// GROUP 5 - DEGREE OF HEALTH
* item[+]
  * linkId = "Degree-of-Health-EORTC-QLQ"
  * text = "Degree of Health - EORTC-QLQ"
  * type = #group  

  * item[+]
    * linkId = "EORTC-QLQ-Q01-Q05"
    * text = "We are interested in some things about you and your health. Please answer all of the questions yourself by selecting the answer that best applies to you. 
    There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."
    * type = #group 

    * item[+]
      * linkId = "EORTCQLQC30_Q01"
      * type = #choice
      * text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q02"
      * type = #choice
      * text = "Do you have any trouble taking a long walk?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q03"
      * type = #choice
      * text = "Do you have any trouble taking a short walk outside of the house?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q04"
      * type = #choice
      * text = "Do you need to stay in bed or a chair during the day?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q05"
      * type = #choice
      * text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId =  "EORTC-QLQ-Q06-Q28"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQC30_Q06"
      * type = #choice
      * text = "Were you limited in doing either your work or other daily activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q07"
      * type = #choice
      * text = "Were you limited in pursuing your hobbies or other leisure time activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q08"
      * type = #choice
      * text = "Were you short of breath?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q09"
      * type = #choice
      * text = "Have you had pain?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q10"
      * type = #choice
      * text = "Did you need to rest?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q11"
      * type = #choice
      * text = "Have you had trouble sleeping?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q12"
      * type = #choice
      * text = "Have you felt weak?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q13"
      * type = #choice
      * text = "Have you lacked appetite?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q14"
      * type = #choice
      * text = "Have you felt nauseated?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q15"
      * type = #choice
      * text = "Have you vomited?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q16"
      * type = #choice
      * text = "Have you been constipated?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q17"
      * type = #choice
      * text = "Have you had diarrhea?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q18"
      * type = #choice
      * text = "Were you tired?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q19"
      * type = #choice
      * text = "Did pain interfere with your daily activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q20"
      * type = #choice
      * text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q21"
      * type = #choice
      * text = "Did you feel tense?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q22"
      * type = #choice
      * text = "Did you worry?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q23"
      * type = #choice
      * text = "Did you feel irritable?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q24"
      * type = #choice
      * text = "Did you feel depressed?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q25"
      * type = #choice
      * text = "Have you had difficulty remembering things?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q26"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your family life?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q27"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your social activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q28"
      * type = #choice
      * text = "Has your physical condition or medical treatment caused you financial difficulties?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId =  "EORTC-QLQ-Q29-Q30"
    * type = #group
    * text = "For the following questions please select the number between 1 and 7 that best applies to you, with 1 = Very poor and 7 = Excellent."

    * item[+]
      * linkId = "EORTCQLQC30_Q29"
      * type = #choice
      * text = "How would you rate your overall health during the past week?"
      * required = true
      * answerOption[+].valueInteger = 1
      * answerOption[+].valueInteger = 2
      * answerOption[+].valueInteger = 3
      * answerOption[+].valueInteger = 4
      * answerOption[+].valueInteger = 5
      * answerOption[+].valueInteger = 6
      * answerOption[+].valueInteger = 7

    * item[+]
      * linkId = "EORTCQLQC30_Q30"
      * type = #choice
      * text = "How would you rate your overall quality of life during the past week?"
      * required = true
      * answerOption[+].valueInteger = 1
      * answerOption[+].valueInteger = 2
      * answerOption[+].valueInteger = 3
      * answerOption[+].valueInteger = 4
      * answerOption[+].valueInteger = 5
      * answerOption[+].valueInteger = 6
      * answerOption[+].valueInteger = 7

  * item[+]
    * linkId =  "EORTC-QLQ-Q31-Q43"
    * type = #group
    * text = "Patients sometimes report that they have the following symptoms or problems. Please indicate the extent to which you have experienced these symptoms or problems during the past week. 
  Please answer by selecting the answer that best applies to you. During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q31"
      * type = #choice
      * text = "Did you have a dry mouth?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q32"
      * type = #choice
      * text = "Did food and drink taste different than usual?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q33"
      * type = #choice
      * text = "Were your eyes painful, irritated or watery?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q34"
      * type = #choice
      * text = "Have you lost any hair?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q35"
      * type = #choice
      * text = "Were you upset by the loss of your hair?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * insert enableWhenTrue(EORTCQLQBR23_Q34) 

    * item[+]
      * linkId = "EORTCQLQBR23_Q36"
      * type = #choice
      * text = "Did you feel ill or unwell?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q37"
      * type = #choice
      * text = "Did you have hot flushes?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q38"
      * type = #choice
      * text = "Did you have headaches?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q39"
      * type = #choice
      * text = "Have you felt physically less attractive as a result of your disease or treatment?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q40"
      * type = #choice
      * text = "Have you been feeling less feminine as a result of your disease or treatment?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q41"
      * type = #choice
      * text = "Did you find it difficult to look at yourself naked?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q42"
      * type = #choice
      * text = "Have you been dissatisfied with your body?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q43"
      * type = #choice
      * text = "Were you worried about your health in the future?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId =  "EORTC-QLQ-Q44-Q46"
    * type = #group
    * text = "During the past four weeks:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q44"
      * type = #choice
      * text = "To what extent were you interested in sex?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q45"
      * type = #choice
      * text = "To what extent were you sexually active? (with or without intercourse)"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q46"
      * type = #choice
      * text = "To what extent was sex enjoyable for you?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * insert enableWhenTrue(EORTCQLQBR23_Q45) 

  * item[+]
    * linkId =  "EORTC-QLQ-Q47-Q53"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q47"
      * type = #choice
      * text = "Did you have any pain in your arm or shoulder?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

      * item[+]
      * linkId = "EORTCQLQBR23_Q48"
      * type = #choice
      * text = "Did you have a swollen arm or hand?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q49"
      * type = #choice
      * text = "Was it difficult to raise your arm or to move it sideways?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q50"
      * type = #choice
      * text = "Have you had any pain in the area of your affected breast?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q51"
      * type = #choice
      * text = "Was the area of your affected breast swollen?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q52"
      * type = #choice
      * text = "Was the area of your affected breast oversensitive?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q53"
      * type = #choice
      * text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTC QLQ-LMC21"
      * type = #choice
      * text = "Have you had tingling hands or feet?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

// BREASTQ
* item[+]
  * linkId = "Degree-of-Health-BreastQ"
  * text = "Degree of Health - BreastQ"
  * type = #group  
  
  * item[+]
    * linkId =  "BreastQ_Surgery"
    * type = #choice
    * text = "Which type of surgery did you receive?"
    * answerValueSet = Canonical(BreastQSurgeryValueSet) 
    * required = true

  //Group 1: Patients with mastectomy (#2) 
  * item[+]
    * linkId =  "Mastectomy"
    * type = #group
    * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
    how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

    * item[+]
      * linkId =  "BREASTQMAST_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType(#2)
      * enableBehavior = #all

    * item[+]
      * linkId =  "BREASTQMAST_Q02"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType(#2)
      * enableBehavior = #all

    * item[+]
      * linkId =  "BREASTQMAST_Q03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType(#2)
      * enableBehavior = #all

    * item[+]
      * linkId =  "BREASTQMAST_Q04"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType(#2)
      * enableBehavior = #all


  // Group 2 - Patients with breast conserving therapy (#0 and #1)
  * item[+]
    * linkId =  "Breast-Conserving-Therapy"
    * type = #group
    * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
    how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #any


    * item[+]
      * linkId =  "BREASTQBCT_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId =  "BREASTQBCT_Q02"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any


    * item[+]
      * linkId =  "BREASTQBCT_Q03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any


    * item[+]
      * linkId =  "BREASTQBCT_Q04"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any


  // Group 3 - Patients with reconstruction (#3, #4 and #5) 
  * item[+]
    * linkId =  "Resection"
    * type = #group
    * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
    how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#3)
    * insert enableWhenSurgeryType(#4)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #any

    * item[+]
      * linkId =  "BREASTQREC_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType(#3)
      * insert enableWhenSurgeryType(#4)
      * insert enableWhenSurgeryType(#5)
      * enableBehavior = #any

    * item[+]
      * linkId =  "BREASTQREC_Q02"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType(#3)
      * insert enableWhenSurgeryType(#4)
      * insert enableWhenSurgeryType(#5)
      * enableBehavior = #any

    * item[+]
      * linkId =  "BREASTQREC_Q03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType(#3)
      * insert enableWhenSurgeryType(#4)
      * insert enableWhenSurgeryType(#5)
      * enableBehavior = #any

    * item[+]
      * linkId =  "BREASTQREC_Q04"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType(#3)
      * insert enableWhenSurgeryType(#4)
      * insert enableWhenSurgeryType(#5)
      * enableBehavior = #any

// FACT-ES
* item[+]
  * linkId =  "Degree-of-Health-FACTES"
  * type = #group
  * text = "Please indicate your response as it applies to the past 7 days:"

  * item[+]
    * linkId = "FACTES_BRM1"
    * type = #choice
    * text = "I have pain in my joints"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES4"
    * type = #choice
    * text = "I have vaginal discharge"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES5"
    * type = #choice
    * text = "I have vaginal itching/irritation"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES6"
    * type = #choice
    * text = "I have vaginal bleeding or spotting"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES7" 
    * type = #choice
    * text = "I have vaginal dryness"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES8" 
    * type = #choice
    * text = "I have pain or discomfort with intercourse"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)


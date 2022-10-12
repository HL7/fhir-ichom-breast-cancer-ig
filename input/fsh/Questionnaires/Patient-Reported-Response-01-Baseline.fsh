Instance: PatientReportedBaseline
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient-reported response at baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "PatientReportedBaseline"
* title = "Patient reported response at baseline"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
    * type = #string 
    * text = "What is the patient's medical record number?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "What is the patient's last name?"
    * required = true

// GROUP 2 - DEMOGRAPHIC FACTORS
* item[+]
  * linkId = "Demographics"
  * type = #group
  * text = "Demographic factors"
  * required = true

  * item[+]
    * linkId = "Sex"
    * type = #choice
    * text = "Please indicate your sex at birth."
    * answerValueSet = Canonical(AdministrativeGenderVS)
    * required = true

  * item[+]
    * linkId = "COUNTRY"
    * type = #choice
    * text = "What is your country of residence?"
    * answerValueSet = Canonical(CountryVS)
    * required = true

  * item[+]
    * linkId = "Ethnicity"
    * type = #choice
    * text = "Please indicate the ethnicity that you identify with."
    * answerValueSet = Canonical(EthnicityVS)
    * required = true
    
  * item[+]
    * linkId = "Race"
    * type = #choice
    * text = "Please indicate the biological race that you identify with."
    * answerValueSet = Canonical(RaceVS)
    * required = true
 
  * item[+]
    * linkId = "EducationLevel"
    * type = #choice
    * text = "Please indicate your highest level of schooling."
    * answerValueSet = Canonical(EducationLevelVS)
    * required = true
   
  * item[+]
    * linkId = "RelationshipStatus"
    * type = #choice
    * text = "Please indicate your current relationship status."
    * answerValueSet = Canonical(RelationshipStatusVS)
    * required = true

  * item[+]
    * linkId = "MENOPAUSE"
    * type = #choice
    * text = "Please indicate your current menopausal status:"
    * answerValueSet = Canonical(MenopausalStatusVS)   
    * enableWhen
      * question = "Sex"
      * operator = #=
      * answerCoding = AdministrativeGenderCS#female
    * required = true

// GROUP 3 - BASELINE CLINICAL FACTORS
* item[+]
  * linkId = "Baseline-Clinical-Factors"
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
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#1)

  * item[+]
    * linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
    * type = #boolean
    * text = "Does your heart disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#1)

  * item[+]
    * linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
    * type = #boolean
    * text = "Do you receive treatment for high blood pressure?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#2)

  * item[+]
    * linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
    * type = #boolean
    * text = "Does your high blood pressure limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#2)

  * item[+]
    * linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
    * type = #boolean
    * text = "Do you receive treatment for lung disease?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#3)

  * item[+]
    * linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
    * type = #boolean
    * text = "Does your lung disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#3)

  * item[+]
    * linkId = "ComorbiditiesSACQ_DiabetesFU1"
    * type = #boolean
    * text = "Do you receive treatment for diabetes?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#4)

  * item[+]
    * linkId = "ComorbiditiesSACQ_DiabetesFU2"
    * type = #boolean
    * text = "Does your diabetes limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#4)

  * item[+]
    * linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
    * type = #boolean
    * text = "Do you receive treatment for an ulcer or stomach disease?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#5)

  * item[+]
    * linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
    * type = #boolean
    * text = "Does your ulcer or stomach disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#5)

  * item[+]
    * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
    * type = #boolean
    * text = "Do you receive treatment for kidney disease?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#6)

  * item[+]
    * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
    * type = #boolean
    * text = "Does your kidney disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#6)

  * item[+]
    * linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
    * type = #boolean
    * text = "Do you receive treatment for liver disease?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#7)

  * item[+]
    * linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
    * type = #boolean
    * text = "Does your liver disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#7)

  * item[+]
    * linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
    * type = #boolean
    * text = "Do you receive treatment for anemia or other blood disease?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#8)

  * item[+]
    * linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
    * type = #boolean
    * text = "Does your anemia or other blood disease limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#8)

  * item[+]
    * linkId = "ComorbiditiesSACQ_CancerFU1"
    * type = #boolean
    * text = "Do you receive treatment for cancer/another cancer?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#9)

  * item[+]
    * linkId = "ComorbiditiesSACQ_CancerFU2"
    * type = #boolean
    * text = "Does your cancer/other cancer limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#9)

  * item[+]
    * linkId = "ComorbiditiesSACQ_DepressionFU1"
    * type = #boolean
    * text = "Do you receive treatment for depression?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#10)

  * item[+]
    * linkId = "ComorbiditiesSACQ_DepressionFU2"
    * type = #boolean
    * text = "Does your depression limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#10)

  * item[+]
    * linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
    * type = #boolean
    * text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#11)

  * item[+]
    * linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
    * type = #boolean
    * text = "Does your osteoarthritis/degenerative arthritis limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#11)

  * item[+]
    * linkId = "ComorbiditiesSACQ_BackPainFU1"
    * type = #boolean
    * text = "Do you receive treatment for back pain?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#12)

  * item[+]
    * linkId = "ComorbiditiesSACQ_BackPainFU2"
    * type = #boolean
    * text = "Does your back pain limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#12)

  * item[+]
    * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
    * type = #boolean
    * text = "Do you receive treatment for rheumatoid arthritis?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#13)

  * item[+]
    * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
    * type = #boolean
    * text = "Does your rheumatoid arthritis limit your activities?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#13)

  * item[+]
    * linkId = "ComorbiditiesSACQ_Other"
    * type = #text
    * text = "What other medical problems are you experiencing?"
    * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#14)

  // * item[+]
  //   * linkId = "ComorbiditiesSACQ_Score"
  //   * type = #integer
  //   * text = "What is the total summed score of the patient's SACQ responses?"
  //   * maxLength = 2
  // Add answerOptions to limit the possible answers?

// GROUP 4 - TREATMENT VARIABLES
* item[+]
  * linkId = "Treatment-Variables"
  * type = #group
  * text = "Treatment Variables"
  * required = true

  * item[+]
    * linkId = "PatientEducation" 
    * text = "Did you feel you received sufficient information about your treatment options?"
    * type = #choice
    * answerValueSet = Canonical(PatientEducationVS)
    * required = true


// GROUP 5 - DEGREE OF HEALTH
* insert EORTCQuestionnaire

// BREASTQ - Baseline
* item[+]
  * linkId = "Degree-of-Health-BreastQ"
  * text = "Degree of Health - BreastQ:"
  * type = #group

  * item[+]
    * linkId = "IntroBreastQ"
    * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
      how satisfied or dissatisfied have you been with:"
    * type = #group
    
    * item[+]
      * linkId = "BREASTQMAST_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * required = true

    * item[+]
      * linkId = "BREASTQMAST_Q02"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * required = true

    * item[+]
      * linkId = "BREASTQMAST_Q03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * required = true

    * item[+]
      * linkId = "BREASTQMAST_Q04"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * required = true

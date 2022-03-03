// // shorthand notation to only show a particular question in the context of this questionnaire
// RuleSet: enableWhenComorbidity(code)
// * enableWhen
//   * question = "ComorbiditiesSACQ"
//   * operator = #=
//   * answerCoding = {code}

// Instance: SACQComorbidities
// InstanceOf: Questionnaire
// Usage: #definition
// Description: "Based upon the Self-administered Comorbidity Questionnaire (Sangha et al, 2003)."
// * insert PublicationInstanceRuleset

// * name = "SACQComorbidities"
// * title = "SACQ comorbidities"
// * status = #draft

// * item[+]
//   * linkId = "ComorbiditiesSACQ"
//   * type = #choice
//   * text = "Have you been told by a doctor that you have any of the following?"
//   * answerValueSet = Canonical(SACQPatientComorbidityHistory)
//   * required = true
//   * repeats = true

// * item[+]
//   * linkId = "ComorbiditiesSACQ_HeartDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for heart disease (For example, angina, heart failure, or heart attack)?"
//   * insert enableWhenComorbidity($SCT#56265001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
//   * type = #boolean
//   * text = "Does your heart disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#56265001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for high blood pressure?"
//   * insert enableWhenComorbidity($SCT#38341003)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
//   * type = #boolean
//   * text = "Does your high blood pressure limit your activities?"
//   * insert enableWhenComorbidity($SCT#38341003)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for lung disease?"
//   * insert enableWhenComorbidity($SCT#19829001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
//   * type = #boolean
//   * text = "Does your lung disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#19829001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_DiabetesFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for diabetes?"
//   * insert enableWhenComorbidity($SCT#73211009)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_DiabetesFU2"
//   * type = #boolean
//   * text = "Does your diabetes limit your activities?"
//   * insert enableWhenComorbidity($SCT#73211009)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for an ulcer or stomach disease?"
//   * insert enableWhenComorbidity($SCT#429040005)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
//   * type = #boolean
//   * text = "Does your ulcer or stomach disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#429040005)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for kidney disease?"
//   * insert enableWhenComorbidity($SCT#90708001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
//   * type = #boolean
//   * text = "Does your kidney disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#90708001)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for liver disease?"
//   * insert enableWhenComorbidity($SCT#235856003)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
//   * type = #boolean
//   * text = "Does your liver disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#235856003)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for anemia or other blood disease?"
//   * insert enableWhenComorbidity($SCT#271737000)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
//   * type = #boolean
//   * text = "Does your anemia or other blood disease limit your activities?"
//   * insert enableWhenComorbidity($SCT#271737000)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_CancerFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for cancer/another cancer?"
//   * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#cancer-within-5yrs)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_CancerFU2"
//   * type = #boolean
//   * text = "Does your cancer/other cancer limit your activities?"
//   * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#cancer-within-5yrs)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_DepressionFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for depression?"
//   * insert enableWhenComorbidity($SCT#35489007)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_DepressionFU2"
//   * type = #boolean
//   * text = "Does your depression limit your activities?"
//   * insert enableWhenComorbidity($SCT#35489007)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"
//   * insert enableWhenComorbidity($SCT#396275006)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
//   * type = #boolean
//   * text = "Does your osteoarthritis/degenerative arthritis limit your activities?"
//   * insert enableWhenComorbidity($SCT#396275006)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_BackPainFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for back pain?"
//   * insert enableWhenComorbidity($SCT#161891005)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_BackPainFU2"
//   * type = #boolean
//   * text = "Does your back pain limit your activities?"
//   * insert enableWhenComorbidity($SCT#161891005)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
//   * type = #boolean
//   * text = "Do you receive treatment for rheumatoid arthritis?"
//   * insert enableWhenComorbidity($SCT#69896004)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
//   * type = #boolean
//   * text = "Does your rheumatoid arthritis limit your activities?"
//   * insert enableWhenComorbidity($SCT#69896004)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_Other"
//   * type = #text
//   * text = "What other medical problems are you experiencing?"
//   * insert enableWhenComorbidity(SACQPatientComorbidityCodeSystem#other-medical-problems)

// * item[+]
//   * linkId = "ComorbiditiesSACQ_Score"
//   * type = #integer
//   * text = "What is the total summed score of the patient's SACQ responses?"

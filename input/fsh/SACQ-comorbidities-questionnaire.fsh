Instance: SACQComorbidities
InstanceOf: Questionnaire
Usage: #definition
Title: "SACQ comorbidities"
Description: "Based upon the Self-administered Comorbidity Questionnaire (Sangha et al, 2003)."
* insert PublicationInstanceRuleset

* name = "SACQComorbidities"
* status = #draft

// ^\t(?<linkId>[^\t]+)\t[^\t]+\t[^\t]+\t[^\t]+\t(?<text>[^\t]+).+
// * item[+].linkId = "$+{linkId}"
// * type = #boolean
// * text = "$+{text}"

* item[+]
  * linkId = "ComorbiditiesSACQ"
  * type = #choice
  * text = "Have you been told by a doctor that you have any of the following?"
  * answerValueSet = Canonical(PatientComorbidityHistory)
  * required = true

* item[+]
  * linkId = "ComorbiditiesSACQ_HeartDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for heart disease (For example, angina, heart failure, or heart attack)?"

* item[+]
  * linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
  * type = #boolean
  * text = "Does your heart disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
  * type = #boolean
  * text = "Do you receive treatment for high blood pressure?"

* item[+]
  * linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
  * type = #boolean
  * text = "Does your high blood pressure limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for lung disease?"

* item[+]
  * linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
  * type = #boolean
  * text = "Does your lung disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_DiabetesFU1"
  * type = #boolean
  * text = "Do you receive treatment for diabetes?"

* item[+]
  * linkId = "ComorbiditiesSACQ_DiabetesFU2"
  * type = #boolean
  * text = "Does your diabetes limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for an ulcer or stomach disease?"

* item[+]
  * linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
  * type = #boolean
  * text = "Does your ulcer or stomach disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for kidney disease?"

* item[+]
  * linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
  * type = #boolean
  * text = "Does your kidney disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for liver disease?"

* item[+]
  * linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
  * type = #boolean
  * text = "Does your liver disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
  * type = #boolean
  * text = "Do you receive treatment for anemia or other blood disease?"

* item[+]
  * linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
  * type = #boolean
  * text = "Does your anemia or other blood disease limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_CancerFU1"
  * type = #boolean
  * text = "Do you receive treatment for cancer/another cancer?"

* item[+]
  * linkId = "ComorbiditiesSACQ_CancerFU2"
  * type = #boolean
  * text = "Does your cancer/other cancer limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_DepressionFU1"
  * type = #boolean
  * text = "Do you receive treatment for depression?"

* item[+]
  * linkId = "ComorbiditiesSACQ_DepressionFU2"
  * type = #boolean
  * text = "Does your depression limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
  * type = #boolean
  * text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"

* item[+]
  * linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
  * type = #boolean
  * text = "Does your osteoarthritis/degenerative arthritis limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_BackPainFU1"
  * type = #boolean
  * text = "Do you receive treatment for back pain?"

* item[+]
  * linkId = "ComorbiditiesSACQ_BackPainFU2"
  * type = #boolean
  * text = "Does your back pain limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
  * type = #boolean
  * text = "Do you receive treatment for rheumatoid arthritis?"

* item[+]
  * linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
  * type = #boolean
  * text = "Does your rheumatoid arthritis limit your activities?"

* item[+]
  * linkId = "ComorbiditiesSACQ_Other"
  * type = #boolean
  * text = "What other medical problems are you experiencing?"

* item[+]
  * linkId = "ComorbiditiesSACQ_Score"
  * type = #boolean
  * text = "What is the total summed score of the patient's SACQ responses?"


// FIXME: does it have to be on top?
Alias: $SCT = http://snomed.info/sct

ValueSet: PatientComorbidityHistory
Id: patient-comorbidity-history
Title: "Patient's comorbidity history"
Description: "Patient's documented history of comorbidities"
// fix the mappings 
* $SCT#56265001 "Heart disease (For example, angina, heart attack, or heart failure)"
* $SCT#38341003 "High blood pressure"
* $SCT#202569003 "Leg pain when walking due to poor circulation"
* $SCT#19829001 "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* $SCT#73211009 "Diabetes"
* $SCT#90708001 "Kidney disease"
* $SCT#235856003 "Liver disease"
* $SCT#230690007 "Problems caused by stroke"
* $SCT#35489007 "Depression"
* $SCT#3723001 "Arthritis"
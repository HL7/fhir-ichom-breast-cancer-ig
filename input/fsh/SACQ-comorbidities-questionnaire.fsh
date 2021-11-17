Instance: SACQ-comorbidities
InstanceOf: Questionnaire
Usage: #definition
Title: "SACQ comorbidities"
Description: "Based upon the Self-administered Comorbidity Questionnaire (Sangha et al, 2003)."

* id = "SACQ-comorbidities"
* name = "SACQ-comorbidities"
* status = #draft

// ^\t(?<linkId>[^\t]+)\t[^\t]+\t[^\t]+\t[^\t]+\t(?<text>[^\t]+).+
// * item[+].linkId = "$+{linkId}"
// * item[=].type = #boolean
//* item[=].text = "$+{text}"

* item[+].linkId = "ComorbiditiesSACQ"
* item[=].type = #choice
* item[=].text = "Have you been told by a doctor that you have any of the following?"
* item[=].answerValueSet="https://connect.ichom.org/fhir/ValueSet/PatientComorbidityHistory"
* item[=].required = true

* item[+].linkId = "ComorbiditiesSACQ_HeartDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for heart disease (For example, angina, heart failure, or heart attack)?"

* item[+].linkId = "ComorbiditiesSACQ_HeartDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your heart disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_HighBloodPressureFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for high blood pressure?"

* item[+].linkId = "ComorbiditiesSACQ_HighBloodPressureFU2"
* item[=].type = #boolean
* item[=].text = "Does your high blood pressure limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_LungDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for lung disease?"

* item[+].linkId = "ComorbiditiesSACQ_LungDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your lung disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_DiabetesFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for diabetes?"

* item[+].linkId = "ComorbiditiesSACQ_DiabetesFU2"
* item[=].type = #boolean
* item[=].text = "Does your diabetes limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_StomachDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for an ulcer or stomach disease?"

* item[+].linkId = "ComorbiditiesSACQ_StomachDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your ulcer or stomach disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_KidneyDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for kidney disease?"

* item[+].linkId = "ComorbiditiesSACQ_KidneyDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your kidney disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_LiverDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for liver disease?"

* item[+].linkId = "ComorbiditiesSACQ_LiverDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your liver disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_BloodDiseaseFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for anemia or other blood disease?"

* item[+].linkId = "ComorbiditiesSACQ_BloodDiseaseFU2"
* item[=].type = #boolean
* item[=].text = "Does your anemia or other blood disease limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_CancerFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for cancer/another cancer?"

* item[+].linkId = "ComorbiditiesSACQ_CancerFU2"
* item[=].type = #boolean
* item[=].text = "Does your cancer/other cancer limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_DepressionFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for depression?"

* item[+].linkId = "ComorbiditiesSACQ_DepressionFU2"
* item[=].type = #boolean
* item[=].text = "Does your depression limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_OsteoarthritisFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for osteoarthritis/degenerative arthritis?"

* item[+].linkId = "ComorbiditiesSACQ_OsteoarthritisFU2"
* item[=].type = #boolean
* item[=].text = "Does your osteoarthritis/degenerative arthritis limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_BackPainFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for back pain?"

* item[+].linkId = "ComorbiditiesSACQ_BackPainFU2"
* item[=].type = #boolean
* item[=].text = "Does your back pain limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU1"
* item[=].type = #boolean
* item[=].text = "Do you receive treatment for rheumatoid arthritis?"

* item[+].linkId = "ComorbiditiesSACQ_RheumatoidArthritisFU2"
* item[=].type = #boolean
* item[=].text = "Does your rheumatoid arthritis limit your activities?"

* item[+].linkId = "ComorbiditiesSACQ_Other"
* item[=].type = #boolean
* item[=].text = "What other medical problems are you experiencing?"

* item[+].linkId = "ComorbiditiesSACQ_Score"
* item[=].type = #boolean
* item[=].text = "What is the total summed score of the patient's SACQ responses?"

Alias: $SCT = http://snomed.info/sct

ValueSet: PatientComorbidityHistory
Id: PatientComorbidityHistory
Title: "Patient's comorbidity history"
Description: "Patient's documented history of comorbidities"
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

Alias: $SCT = http://snomed.info/sct

// standard set is published separately for re-use in other IGs

CodeSystem: SACQPatientComorbidityCodeSystem
Id: SACQPatientComorbidity
Title: "SACQ patient's comorbidity history"
Description: "Codes used in SACQ patient's comorbidity history that are not available yet in standard terminologies"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/sacq-patient-comorbidity-history
* ^caseSensitive = true

* #no-other-diseases "No other diseases known"
* #cancer-within-5yrs "Cancer/other cancer (within last 5 years)"
* #other-medical-problems "Other medical problems"
  "Other medical problems affecting the patient, outside of those that have been asked explicitly"


ValueSet: SACQPatientComorbidityHistory
Id: SACQ-patient-comorbidity-history
Title: "SACQ Patient's comorbidity history"
Description: "Patient's documented history of comorbidities"
* SACQPatientComorbidityCodeSystem#no-other-diseases
* $SCT#56265001 "Heart disease (For example, angina, heart attack, or heart failure)"
* $SCT#38341003 "High blood pressure"
* $SCT#19829001 "Lung disease (For example,  asthma, chronic bronchitis, or emphysema)"
* $SCT#73211009 "Diabetes"
* $SCT#429040005 "Ulcer"
* $SCT#90708001 "Kidney disease"
* $SCT#235856003 "Liver disease"
* $SCT#271737000 "Anemia"
* SACQPatientComorbidityCodeSystem#cancer-within-5yrs
* $SCT#35489007 "Depression"
* $SCT#396275006 "Osteoarthritis"
* $SCT#161891005 "Back pain"
* $SCT#69896004 "Rheumatoid arthritis"
* SACQPatientComorbidityCodeSystem#other-medical-problems
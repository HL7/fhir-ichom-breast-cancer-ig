Instance: DebugSACQComorbiditiesBundle
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaired related to SACQComorbidities"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/SACQ-patient-comorbidity-history"
  * request.method = #PUT
  * resource = SACQPatientComorbidityHistory

* entry[+]
  * request.url = "Questionnaire/SACQComorbidities"
  * request.method = #PUT
  * resource = SACQComorbidities

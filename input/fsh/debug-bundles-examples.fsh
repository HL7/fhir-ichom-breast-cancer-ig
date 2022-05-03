// Example data for testing auto-fill
Instance: DebugBundlePatientData
InstanceOf: Bundle
Usage: #example
Title: "Bundle the patient data used for testing the auto-completion"
Description: "Bundle of all examples needed for auto-completion"
* type = #transaction

* entry[+]
  * request.url = "Practitioner/Practitioner01"
  * request.method = #PUT
  * resource = Practitioner01

* entry[+]
  * request.url = "Patient/patientWithBreastCancer1"
  * request.method = #PUT
  * resource = patientWithBreastCancer1

* entry[+]
  * request.url = "Observation/ichom-p1-weight"
  * request.method = #PUT
  * resource = p1Weight

* entry[+]
  * request.url = "Observation/ichom-p1-height"
  * request.method = #PUT
  * resource = p1Height

* entry[+]
  * request.url = "Condition/ichom-p1-primary"
  * request.method = #PUT
  * resource = BreastCancerCondition01

* entry[+]
  * request.url = "Observation/mCodeTnmClinicalStageGroup"
  * request.method = #PUT
  * resource = mCodeTnmClinicalStageGroup

* entry[+]
  * request.url = "Observation/tnmPrimaryTumor1"
  * request.method = #PUT
  * resource = tnmPrimaryTumor1

* entry[+]
  * request.url = "Observation/tnmRegionalNodes1"
  * request.method = #PUT
  * resource = tnmRegionalNodes1

* entry[+]
  * request.url = "Observation/tnmDistantMetastases1"
  * request.method = #PUT
  * resource = tnmDistantMetastases1

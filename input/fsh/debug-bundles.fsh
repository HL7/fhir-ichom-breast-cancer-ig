// BaselineClinicalResponse
Instance: DebugBundleBaselineClinical
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to baseline clinical response"
Description: "Bundle of the breastcancer set at baseline clinical response"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSex"
  * request.method = #PUT
  * resource = DemographicFactorsSex

* entry[+]
  * request.url = "Questionnaire/BaselineClinical"
  * request.method = #PUT
  * resource = BaselineClinical

// BaselinePatientReported
Instance: DebugBundleBaselinePatient
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to baseline patient response"
Description: "Bundle of the breastcancer set at baseline patient response"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicCountry"
  * request.method = #PUT
  * resource = DemographicCountry

* entry[+]
  * request.url = "CodeSystem/SACQPatientComorbidityCodeSystem"
  * request.method = #PUT
  * resource = SACQPatientComorbidityCodeSystem

* entry[+]
  * request.url = "ValueSet/SACQPatientComorbidityHistory"
  * request.method = #PUT
  * resource = SACQPatientComorbidityHistory

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/BreastQCodeSystem"
  * request.method = #PUT
  * resource = BreastQCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastQValueSet"
  * request.method = #PUT
  * resource = BreastQValueSet 

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/BaselinePatientReported"
  * request.method = #PUT
  * resource = BaselinePatientReported

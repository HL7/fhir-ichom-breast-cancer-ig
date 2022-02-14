// SACQComorbidities
Instance: DebugBundleSACQPatientComorbidity
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to SACQComorbidities"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/SACQPatientComorbidityCodeSystem"
  * request.method = #PUT
  * resource = SACQPatientComorbidityCodeSystem

* entry[+]
  * request.url = "ValueSet/SACQ-patient-comorbidity-history"
  * request.method = #PUT
  * resource = SACQPatientComorbidityHistory

* entry[+]
  * request.url = "Questionnaire/SACQComorbidities"
  * request.method = #PUT
  * resource = SACQComorbidities

//European Organization for Research and Treatment of Cancer Quality of Life Questionnaire (EORTC QLQ)
Instance: DebugBundleEORTCQLQ
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to EORTCQLQ"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/ResponseTimingCodeSystem"
  * request.method = #PUT
  * resource = ResponseTimingCodeSystem

* entry[+]
  * request.url = "ValueSet/ResponseTimingValueSet"
  * request.method = #PUT
  * resource = ResponseTimingValueSet

* entry[+]
  * request.url = "Questionnaire/EORTCQLQ"
  * request.method = #PUT
  * resource = EORTCQLQ

//BreastQ questionnaire
Instance: DebugBundleBreastQ
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to BreastQ"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/BreastQCodeSystem"
  * request.method = #PUT
  * resource = BreastQCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastQValueSet"
  * request.method = #PUT
  * resource = BreastQValueSet

* entry[+]
  * request.url = "CodeSystem/BreastQSurgeryCodeSystem"
  * request.method = #PUT
  * resource = BreastQSurgeryCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastQSurgeryValueSet"
  * request.method = #PUT
  * resource = BreastQSurgeryValueSet

* entry[+]
  * request.url = "CodeSystem/ResponseTimingCodeSystem"
  * request.method = #PUT
  * resource = ResponseTimingCodeSystem

* entry[+]
  * request.url = "ValueSet/ResponseTimingBreastQValueSet"
  * request.method = #PUT
  * resource = ResponseTimingBreastQValueSet

* entry[+]
  * request.url = "Questionnaire/BreastQ"
  * request.method = #PUT
  * resource = BreastQ

//Factes questionnaire
Instance: DebugBundleFACTES
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to FACT-ES"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "CodeSystem/ResponseTimingCodeSystem"
  * request.method = #PUT
  * resource = ResponseTimingCodeSystem

* entry[+]
  * request.url = "ValueSet/ResponseTimingValueSet"
  * request.method = #PUT
  * resource = ResponseTimingValueSet

* entry[+]
  * request.url = "Questionnaire/FACTES"
  * request.method = #PUT
  * resource = FACTES

//Survival and disease control questionnaire
Instance: DebugBundleSurvival
InstanceOf: Bundle
Usage: #example
Title: "Bundle of all valuesystems and questionnaires related to Survival and Disease control"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/RecurrenceCodeSystem"
  * request.method = #PUT
  * resource = RecurrenceCodeSystem

* entry[+]
  * request.url = "ValueSet/RecurrenceValueSet"
  * request.method = #PUT
  * resource = RecurrenceValueSet

* entry[+]
  * request.url = "CodeSystem/RecurrenceMethodCodeSystem"
  * request.method = #PUT
  * resource = RecurrenceMethodCodeSystem

* entry[+]
  * request.url = "ValueSet/RecurrenceMethodValueSet"
  * request.method = #PUT
  * resource = RecurrenceMethodValueSet

* entry[+]
  * request.url = "CodeSystem/ResponseTimingCodeSystem"
  * request.method = #PUT
  * resource = ResponseTimingCodeSystem

* entry[+]
  * request.url = "ValueSet/ResponseTimingSurvivalValueSet"
  * request.method = #PUT
  * resource = ResponseTimingSurvivalValueSet

* entry[+]
  * request.url = "Questionnaire/Survival"
  * request.method = #PUT
  * resource = Survival


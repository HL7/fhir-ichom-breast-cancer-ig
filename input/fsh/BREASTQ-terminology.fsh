CodeSystem: QualityOfLifeCodeSystem
Id: QualityOfLifeCodeSystem
Title: "Questionnaire-BreastQ response"
Description: "Codes used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: QualityOfLifeValueSet 
Id: QualityOfLifeValueSet
Title: "Questionnaire-BreastQ response"
Description: "Valueset used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* include codes from system QualityOfLifeCodeSystem

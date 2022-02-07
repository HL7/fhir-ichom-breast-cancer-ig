CodeSystem: QualityOfLifeCodeSystem
Id: QualityOfLifeCodeSystem
Title: "Questionnaire-BreastQ response"
Description: "Codes used in quality of life questionnaire in women who underwent breast surgery"
//* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: QualityOfLifeValueSet 
Id: QualityOfLifeValueSet
Title: "Questionnaire-BreastQ response"
Description: "Valueset used in quality of life questionnaire in women who underwent breast surgery"
* include codes from system QualityOfLifeCodeSystem

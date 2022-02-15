// BreastQ Codesystem
CodeSystem: BreastQCodeSystem
Id: BreastQCodeSystem
Title: "Patient Reported Outcomes Instrument response (BreastQ)"
Description: "Codes used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q
* ^caseSensitive = true

* #1 "Very dissatisfied"
* #2 "Somewhat dissatisfied"
* #3 "Somewhat satisfied"
* #4 "Very satisfied"

ValueSet: BreastQValueSet 
Id: BreastQValueSet
Title: "Patient Reported Outcomes Instrument response (BreastQ)"
Description: "Valueset used in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* BreastQCodeSystem#1
* BreastQCodeSystem#2
* BreastQCodeSystem#3
* BreastQCodeSystem#4

// Surgery Type - Codesystem
CodeSystem: BreastQSurgeryCodeSystem
Id: BreastQSurgeryCodeSystem
Title: "Type of surgery for the Patient Reported Outcomes Instrument (BreastQ)"
Description: "Type of surgery of the patient in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* ^url = http://connect.ichom.org/fhir/CodeSystem/Breast-Q-surgery
* ^caseSensitive = true

* #0 "Breast conserving surgery"
* #1 "Breast conserving surgery with mammoplasty" 
* #2 "Mastectomy without immediate reconstruction"
* #3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* #4 "Mastectomy with immediate reconstruction (autologous)"
* #5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"

ValueSet: BreastQSurgeryValueSet 
Id: BreastQSurgeryValueSet
Title: "Type of surgery for the Patient Reported Outcomes Instrument (BreastQ)"
Description: "Type of surgery of the patient in the Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* BreastQSurgeryCodeSystem#0
* BreastQSurgeryCodeSystem#1
* BreastQSurgeryCodeSystem#2
* BreastQSurgeryCodeSystem#3
* BreastQSurgeryCodeSystem#4
* BreastQSurgeryCodeSystem#5

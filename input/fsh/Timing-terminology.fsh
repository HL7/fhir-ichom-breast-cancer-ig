// General response timing
CodeSystem: ResponseTimingCodeSystem
Id: ResponseTimingCodeSystem
Title: "Timing of the response of the patient reported outcome measures"
Description: "Patient reported outcome measures are repeatedly collected from patients starting at the first doctor's visit (baseline) up untill 10 years after treatment."
* ^url = http://connect.ichom.org/fhir/CodeSystem/Timing
* ^caseSensitive = true

* #0 "Patient's first doctor's visit (baseline)"
* #6mnd "6 months post-treatment"
* #1 "1 year post-treatment"
* #2 "2 years post-treatment"
* #3 "3 years post-treatment"
* #4 "4 years post-treatment"
* #5 "5 years post-treatment"
* #6 "6 years post-treatment"
* #7 "7 years post-treatment"
* #8 "8 years post-treatment"
* #9 "9 years post-treatment"
* #10 "10 years post-treatment"

ValueSet: ResponseTimingValueSet 
Id: ResponseTimingValueSet
Title: "Timing of the response of the patient reported outcome measures"
Description: "Patient reported outcome measures are repeatedly collected from patients starting at the first doctor's visit (baseline) up untill 10 years after treatment."
* ^version  = 0.0.1
* include codes from system ResponseTimingCodeSystem

//BreastQ response timing
ValueSet: ResponseTimingBreastQValueSet 
Id: ResponseTimingBreastQValueSet
Title: "Timing of the response of the BreastQ patient reported outcome measures"
Description: "Patient reported outcome measures are repeatedly collected from patients."
* ^version  = 0.0.1
* ResponseTimingCodeSystem#0
* ResponseTimingCodeSystem#1
* ResponseTimingCodeSystem#2

// Survival response timing 
ValueSet: ResponseTimingSurvivalValueSet 
Id: ResponseTimingSurvivalValueSet
Title: "Timing of the response of survival questionnaire"
Description: "The survival questionnaire is repeatedly collected from patients starting at the first year post-treatment up untill 10 years post-treatment."
* ^version  = 0.0.1
* ResponseTimingCodeSystem#1
* ResponseTimingCodeSystem#2
* ResponseTimingCodeSystem#3
* ResponseTimingCodeSystem#4
* ResponseTimingCodeSystem#5
* ResponseTimingCodeSystem#6
* ResponseTimingCodeSystem#7
* ResponseTimingCodeSystem#8
* ResponseTimingCodeSystem#9
* ResponseTimingCodeSystem#10
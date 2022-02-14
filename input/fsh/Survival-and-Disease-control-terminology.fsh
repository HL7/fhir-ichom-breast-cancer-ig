CodeSystem: RecurrenceCodeSystem
Id: RecurrenceCodeSystem 
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"
* ^url = http://connect.ichom.org/fhir/CodeSystem/recurrence
* ^caseSensitive = true

* #0 "No"
* #1 "Yes, local recurrence"
* #2 "Yes, regional recurrence" 
* #3 "Yes, distant recurrence"
* #999 "Unknown"

ValueSet: RecurrenceValueSet
Id: RecurrenceValueSet
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"
* include codes from system RecurrenceCodeSystem

CodeSystem: RecurrenceMethodCodeSystem
Id: RecurrenceMethodCodeSystem
Title: "Method of confirming recurrence"
Description: "Codes used describe the method to confirm recurrence of neoplasm"
* ^url = http://connect.ichom.org/fhir/CodeSystem/recurrence_method
* ^caseSensitive = true

* #0 "Radiological diagnosis"
* #1 "Histological diagnosis"
* #2 "Radiological and histological diagnosis"
* #999 "Unknown"

ValueSet: RecurrenceMethodValueSet
Id: RecurrenceMethodValueSet
Title: "Method of confirming recurrence"
Description: "Codes used describe the method to confirm recurrence of neoplasm"
* include codes from system RecurrenceMethodCodeSystem

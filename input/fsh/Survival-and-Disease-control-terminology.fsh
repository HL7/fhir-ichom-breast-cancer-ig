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
* RecurrenceCodeSystem#0
* RecurrenceCodeSystem#1
* RecurrenceCodeSystem#2
* RecurrenceCodeSystem#3
* RecurrenceCodeSystem#999

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
* RecurrenceMethodCodeSystem#0
* RecurrenceMethodCodeSystem#1
* RecurrenceMethodCodeSystem#2
* RecurrenceMethodCodeSystem#999
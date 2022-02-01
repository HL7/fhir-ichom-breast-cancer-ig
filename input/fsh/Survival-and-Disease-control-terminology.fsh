CodeSystem: Survival-recurrenceCodeSystem
Id: Recurrence-CodeSystem 
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"

#0 "No"
#1 "Yes, local recurrence"
#2 "Yes, regional recurrence"
#3 "Yes, distant recurrence"
#999 "Unknown"

ValueSet: Recurrence-VS
Id: Recurrence-VS
Title: "Recurrence of neoplasm"
Description: "Codes used to indicate recurrence of neoplasm"
* include codes from system Recurrence-CodeSystem

CodeSystem: Survival-Recurrencemethod-CodeSystem
Id: Recurrencemethod-CodeSystem
Title: "Method of confirming recurrence"
Description: "The method used to confirm recurrence of neoplasm"

#0 "Radiological diagnosis"
#1 "Histological diagnosis"
#2 "Radiological and histological diagnosis"
#999 "Unknown"

ValueSet: Recurrencemethod-VS
Id: Recurrencemethod-VS
Title: "Method of confirming recurrence"
Description: "The method used to confirm recurrence of neoplasm"
* include codes from system Recurrencemethod-CodeSystem

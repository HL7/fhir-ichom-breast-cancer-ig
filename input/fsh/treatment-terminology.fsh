// standard set is published separately for re-use in other IGs

Alias: $treatment = http://connect.ichom.org/fhir/CodeSystem/treatment-variables

CodeSystem: TreatmentTypesCodeSystem
Id: TreatmentTypesCodeSystem
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient undertook"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/treatment-variables
* ^caseSensitive = true

* #0 "No treatment"
* #1 "Surgery"
* #2 "Surgery to axilla"
* #3 "Delayed reconstruction"
* #4 "Radiotherapy"
* #5 "Chemotherapy"
* #6 "Hormonal therapy"
* #7 "Targeted therapy"
* #8 "Best supportive care"
* #999 "Unknown"

ValueSet: TreatmentTypes
Id: TreatmentTypes
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient undertook"
* include codes from system TreatmentTypesCodeSystem

CodeSystem: BreastSurgeryTypesCodeSystem
Id: BreastSurgeryTypesCodeSystem
Title: "Breast surgery types"
Description: "Codes indicating the kind of surgery a patient undertook"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/breast-surgery-types
* ^caseSensitive = true

* #0 "Breast conserving surgery (BCS)"
* #1 "BCS with mammoplasty"
* #2 "Mastectomy without immediate reconstruction"
* #3 "Mastectomy with immediate reconstruction (direct/staged implant)"
* #4 "Mastectomy with immediate reconstruction (autologous)"
* #5 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
* #999 "Unknown"


CodeSystem: SurgeryAxillaCodeSystem
Id: SurgeryAxillaCodeSystem
Title: "Surgery Axilla Code System"
Description: "Codes indicating the kind of surgery axilla was performed"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/surgery-axilla
* ^caseSensitive = true

* #0 "Sentinel lymph node biopsy"
* #1 "Axillary sampling"
* #2 "Axillary clearance"
* #999 "Unknown"

ValueSet: SurgeryAxillaTypes
Id: SurgeryAxillaTypes
Title: "Surgery Axilla Types"
Description: "Codes indicating the kind of surgery axilla was performed"
* include codes from system SurgeryAxillaCodeSystem
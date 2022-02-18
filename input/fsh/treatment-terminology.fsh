// standard set is published separately for re-use in other IGs

Alias: $treatment = http://connect.ichom.org/fhir/CodeSystem/treatment-variables


//TreatmentType
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

ValueSet: TreatmentTypeValueSet
Id: TreatmentTypeValueSet
Title: "Treatment variables"
Description: "Codes indicating the kind of treatment a patient undertook"
* include codes from system TreatmentTypesCodeSystem


//Surgery Type
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

ValueSet: BreastSurgeryTypeValueSet
Id: BreastSurgeryTypeValueSet
Title: "BreastSurgeryTypes"
Description: "Codes indicating the kind of surgery a patient undertook"
* include codes from system BreastSurgeryTypesCodeSystem


// Axilla Surgery
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

ValueSet: SurgeryAxillaTypeValueSet
Id: SurgeryAxillaTypeValueSet
Title: "Surgery Axilla Types"
Description: "Codes indicating the kind of axilla surgery was performed"
* include codes from system SurgeryAxillaCodeSystem



// Axilla Clearance -- General anwers
CodeSystem: BooleanExtendedCodeSystem
Id: BooleanExtendedCodeSystem
Title: "Boolean extended Code System"
Description: "Extended Code System of boolean"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Boolean-Extended
* ^caseSensitive = true

* #0 "No"
* #1 "Yes"
* #999 "Unknown"

ValueSet: BooleanExtendedValueSet
Id: BooleanExtendedValueSet
Title: "Boolean extended Code System"
Description: "Extended Code System of boolean"
* include codes from system BooleanExtendedCodeSystem


// Delayed Reconstruction
CodeSystem: DelayedReconstructionCodeSystem
Id: DelayedReconstructionCodeSystem
Title: "Delayed reconstruction Code System"
Description: "Codes indicating type of delayed reconstruction"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Delayed-Reconstruction
* ^caseSensitive = true
* #0 "Delayed reconstruction  (direct/staged implant)"
* #1 "Delayed reconstruction ( autologous)"
* #2 "Delayed reconstruction  (implant/autologous)"
* #999 "Unknown"

ValueSet: DelayedReconstructionValueSet
Id: DelayedReconstructionValueSet
Title: "Delayed reconstruction Code System"
Description:  "Codes indicating type of delayed reconstruction"
* include codes from system DelayedReconstructionCodeSystem


// Therapy Intent
CodeSystem: TherapyIntentCodeSystem
Id:  TherapyIntentCodeSystem
Title: "Intent of Therapy Code System"
Description: "Codes indicating the intent of Therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Therapy-Intent
* ^caseSensitive = true
* #0 "Neoadjuvant"
* #1 "Adjuvant"
* #999 "Unknown"

ValueSet: TherapyIntentValueSet
Id: TherapyIntentValueSet
Title: "Intent of Therapy ValueSet"
Description: "Codes indicating the intent of Therapy"
* include codes from system TherapyIntentCodeSystem


// Location of radiotherapy
CodeSystem: RadiotherapyLocationCodeSystem
Id: RadiotherapyLocationCodeSystem
Title: "Location of radiotherapy Code System"
Description: "Codes indicating the location of radiotherapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Radiotherapy-location
* ^caseSensitive = true

* #0 "Breast"
* #1 "Chest wall"
* #2 "Axillary nodal irradiation"
* #3 "Supraclavicular irradiation"
* #4 "Internal mammary node irradiation"
* #5 "Tumor bed boost"
* #6 "Brain metastases"
* #7 "Bone metastases"
* #8 "Any metastatic site"
* #9 "Other"
* #999 "Unknown"

ValueSet: RadiotherapyLocationValueSet
Id: RadiotherapyLocationValueSet
Title: "Location of radiotherapy ValueSet"
Description: "Codes indicating the Location of radiotherapy"
* include codes from system RadiotherapyLocationCodeSystem


// ChemotherapyType
CodeSystem: ChemotherapyTypeCodeSystem
Id: ChemotherapyTypeCodeSystem
Title: "Type of chemotherapy Code System"
Description: "Codes indicating the type of chemotherapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Chemotherapy
* ^caseSensitive = true
* #0 "Anthracycline containing"
* #1 "Taxane containing"
* #2 "Platinum containing"
* #3 "Other"
* #999 "Unknown"

ValueSet: ChemotherapyTypeValueSet
Id: ChemotherapyTypeValueSet
Title: "Type of chemotherapy ValueSet"
Description: "Codes indicating the type of chemotherapy"
* include codes from system ChemotherapyTypeCodeSystem


// HormonalTherapyType
CodeSystem: HormonalTherapyTypeCodeSystem
Id: HormonalTherapyTypeCodeSystem
Title: "Hormonal therapy type Code System"
Description: "Codes indicating the type of hormonal therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Hormonal-Therapy
* ^caseSensitive = true
* #0 "Aromatase inhibitor"
* #1 "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
* #2 "Oophorectomy"
* #3 "LHRH agonist"
* #4 "Other"
* #999 "Unknown"

ValueSet: HormonalTherapyTypeValueSet
Id: HormonalTherapyTypeValueSet
Title: "Hormonal therapy type ValueSet"
Description: "Codes indicating the type of hormonal therapy"
* include codes from system HormonalTherapyTypeCodeSystem


// Targeted Therapy
CodeSystem: TargetedTherapyCodeSystem
Id: TargetedTherapyCodeSystem
Title: "Targeted Therapy Code System"
Description: "Codes indicating type of targeted therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Targeted-Therapy
* ^caseSensitive = true
* #0 "Her-2 targeting therapy"
* #1 "Other"
* #999 "Unknown"

ValueSet: TargetedTherapyValueSet
Id: TargetedTherapyValueSet
Title: "Targeted Therapy ValueSet"
Description: "Codes indicating type of targeted therapy"
* include codes from system TargetedTherapyCodeSystem


// Reoperations
CodeSystem: ReoperationsCodeSystem
Id: ReoperationsCodeSystem
Title: "Reoperations Code System"
Description: "Codes indicating if the patient received a reoperation"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Reoperations
* ^caseSensitive = true
* #0 "No"
* #1 "Breast reconstruction surgery"
* #2 "Mastectomy"
* #3 "Axillary dissection"
* #999 "Unknown"

ValueSet: ReoperationsValueSet
Id: ReoperationsValueSet
Title: "Reoperations ValueSet"
Description: "Codes indicating if the patient received a reoperation"
* include codes from system ReoperationsCodeSystem


// Systemic therapy
CodeSystem: SystemicTherapyCodeSystem
Id: SystemicTherapyCodeSystem
Title: "Systemic Therapy Code System"
Description: "Codes indicating if the patient received systemic therapy"
* ^url =  http://connect.ichom.org/fhir/CodeSystem/Systemic-Therapy
* ^caseSensitive = true
* #0 "no, never had systemic treatment"
* #1 "yes, but the treatment has stopped"
* #2 "yes, on chemotherapy"
* #3 "yes, on targeted therapy"
* #4 "yes, on hormone therapy"
* #999 "unkown"

ValueSet: SystemicTherapyValueSet
Id: SystemicTherapyValueSet
Title: "Systemic Therapy ValueSet"
Description: "Codes indicating if the patient received systemic therapy"
* include codes from system SystemicTherapyCodeSystem


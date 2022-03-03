// // Involved margins reoperation
// CodeSystem: InvolvedMarginsCodeSystem
// Id: InvolvedMarginsCodeSystem
// Title: "Involved margins Code System"
// Description: "Codes indicating if the patient received surgery due to involved margins"
// * ^url =  http://connect.ichom.org/fhir/CodeSystem/Involved-Margins 
// * ^caseSensitive = true
// * #0 "No reoperation due to involved margins" 
// * #1 "Breast conserving surgery (BCS)"
// * #2 "BCS with mammoplasty"
// * #3 "Mastectomy without immediate reconstruction"
// * #4 "Mastectomy with immediate reconstruction (direct/staged implant)"
// * #5 "Mastectomy with immediate reconstruction (autologous)"
// * #6 "Mastectomy with immediate reconstruction (direct/staged implant and autologous)"
// * #999 "Unknown"

// ValueSet: InvolvedMarginsValueSet
// Id: InvolvedMarginsValueSet
// Title: "Involved margins ValueSet"
// Description: "Codes indicating if the patient received surgery due to involved margins"
// * include codes from system InvolvedMarginsCodeSystem


// // Complication impact
// CodeSystem: ComplicationImpactCodeSystem
// Id: ComplicationImpactCodeSystem
// Title: "Complication impact Code System"
// Description: "Codes indicating if the impact of complications"
// * ^url =  http://connect.ichom.org/fhir/CodeSystem/Complication-Impact
// * ^caseSensitive = true
// * #0 "No complication"
// * #1 "Complication requiring intervention (surgical, radiological, endoscopic)"
// * #2 "Complication leading to prolonged hospitalization ( >14days)"
// * #3 "Complication leading to unplanned readmission"
// * #4 "Complication leading to ICU admission"
// * #5 "Complication leading to discontinuing of treatment"
// * #6 "Complication leading to reduced dosing"
// * #7 "Complication leading to death"
// * #8 "Complication, but did not result in any of the abovementioned"
// * #999 "Unknown"

// ValueSet: ComplicationImpactValueSet
// Id: ComplicationImpactValueSet
// Title: "Complication impact ValueSet"
// Description: "Codes indicating if the impact of complications"
// * include codes from system ComplicationImpactCodeSystem


// //Complication type
// CodeSystem: ComplicationTypeCodeSystem
// Id: ComplicationTypeCodeSystem
// Title: "Complication type Code System"
// Description: "Codes indicating the type of complication"
// * ^url =  http://connect.ichom.org/fhir/CodeSystem/Complication-type
// * ^caseSensitive = true
// * #0 "Wound infection"
// * #1 "Seroma/hematoma"
// * #2 "Hemorrhage"
// * #3 "Mastectomy skin flap necrosis"
// * #4 "Partial autologous graft loss"
// * #5 "Total autologous graft loss"
// * #6 "Loss of implant"
// * #7 "Thromboembolic event"
// * #8 "Nerve damage"
// * #9 "Delay wound healing/dehiscence"
// * #10 "Skin toxicity"
// * #11 "Pneumonia"
// * #12 "Neutropenic sepsis"
// * #999  "Unknown"

// ValueSet: ComplicationTypeValueSet
// Id: ComplicationTypeValueSet
// Title: "Complication type ValueSet"
// Description: "Codes indicating the type of complication"
// * include codes from system ComplicationTypeCodeSystem


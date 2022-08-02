Profile: InvolvedMarginsReoperation
Parent: Procedure 
Id: involved-margins-reoperation
Title: "Involved Margins Reoperation"
Description: "A reoperation due to involved margins after primary surgery"
* insert PublicationProfileRuleset
* code from InvolvedMarginsReoperationType (required)
* subject only Reference(BreastCancerPatient)
* partOf MS
  * ^short = "Original procedure that prompted the reoperation"
  * ^definition = "A larger event of which this particular procedure is a component or step. In this case, the original procedure that prompted the reoperation."
* performed[x] MS

// TODO include a refence to the original procedure once treatment variables are modelled

Instance: Reoperation147
InstanceOf: InvolvedMarginsReoperation
Description: "Example of a reoperation due to involved margins after primary surgery"
* status = #completed
* code = IchomReoperation#4 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* bodySite = SCT#80248007 "Left breast"

Mapping: InvolvedMarginsReoperationToICHOM
Source:	InvolvedMarginsReoperation
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reoperationmapping
Title: "Involved margins reoperation to ICHOM set"
Description: "Mapping of the involved margins reoperation procedure to the ICHOM breast cancer PCOM set." 	
* -> "Involved margins reoperation"
* performed[x] -> "Positive margins reoperation date"

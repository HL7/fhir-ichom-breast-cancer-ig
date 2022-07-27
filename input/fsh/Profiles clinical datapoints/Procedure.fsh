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

// TODO include a refence to the original procedure once treatment variables are modelled

Profile: BreastCancerPatient
Parent: Patient 
Id: patient
Title: "Breast Cancer Patient Profile"
Description: "Represents the patient characteristics and demographic factors as defined by ICHOM's [Breast Cancer set](https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/)."
* insert PublicationProfileRuleset
* birthDate 0..1 MS
* deceased[x] only dateTime 
* deceased[x] MS 
* address.country from CountryVS (required)
* address.country 0..1 MS
* maritalStatus from RelationshipStatusVS (required)
* maritalStatus 0..1 MS
* extension contains EducationLevel named educationLevel 0..1 MS
* extension contains Ethnicity named ethnicity 0..1 MS
* extension contains Race named race 0..1 MS

Profile: MenopausalStatus
Parent: Observation 
Id: menopausal-status
Title: "Menopausal status Profile"
Description: "The observation profiles represent the menopausal status of a patient"
* insert PublicationProfileRuleset
* code = SCT#161712005 "Menopause, function (observable entity)"
* value[x] only CodeableConcept 
* value[x] from MenopausalStatusVS (required)
* value[x] MS

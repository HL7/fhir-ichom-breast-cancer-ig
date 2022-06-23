Profile: BreastCancerPatient
Parent: Patient 
Id: ichom-patient
Title: "Breast Cancer Patient Profile"
Description: "The patient profiles represent the patient characteristics and demograhic factors"
* birthDate 0..1  // is it possible to set this to datatype = date year?
* deceased[x] only dateTime 
* deceased[x] MS 
* address.country from CountryVS
* address.country 0..1
* maritalStatus from RelationshipStatusVS 
* maritalStatus 0..1
* extension contains EducationLevel named educationLevel 0..1 
* extension contains Ethnicity named ethnicity 0..1 
* extension contains Race named race 0..1 

Profile: MenopausalStatus
Parent: Observation 
Id: ichom-meopausalstatus
Title: "Menopausal status Profile"
Description: "The observation profiles represent the menopausal status of a patient"
* code = SCT#161712005 "Menopause, function (observable entity)"
* value[x] only CodeableConcept
* value[x] from MenopausalStatusVS

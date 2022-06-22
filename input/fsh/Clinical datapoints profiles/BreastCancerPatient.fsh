Profile: BreastCancerPatient
Parent: Patient 
Id: ichom-patient
Title: "Breast Cancer Patient Profile"
Description: "The patient profiles represent the patient characteristics and demograhic factors"
* identifier 1..*
* gender 1..1
* birthDate 1..1  // is it possible to set this to datatype = date year?
* deceased[x] only dateTime 
* deceased[x] MS 
* address 1..1
* address.country from http://hl7.org/fhir/ValueSet/iso3166-1-3
* address.country 1..1
* maritalStatus from RelationshipStatusVS
* maritalStatus 1..1
* extension contains EducationLevelEx named educationLevel 1..1 
* extension contains MenopausestatusEx named menopausalStatus 1..1 
* extension contains EthnicityEx named ethnicity 1..1 
* extension contains RaceEx named race 1..1 
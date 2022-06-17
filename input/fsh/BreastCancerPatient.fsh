Profile: BreastCancerPatient
Parent: Patient // should be USCorePatient, but that gives an error
Id: ichom-patient
Title: "Breast Caner Patient Profile"
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

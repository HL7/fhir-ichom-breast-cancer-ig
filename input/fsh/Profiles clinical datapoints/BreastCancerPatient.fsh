Profile: BreastCancerPatient
Parent: Patient 
Id: patient
Title: "Breast Cancer Patient"
Description: "Represents the patient characteristics and demographic factors"
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

Instance: BreastCancerPatient147
InstanceOf: BreastCancerPatient 
Title: "Example of Breast Cancer Patient"
Description: "The characteristics and demograhic factors of an example patient. The aim is to align with UScore or mCODE here in the future."
* birthDate = "1920"
* name.family = "Letsche"
* address.country = CountryCS#USA
* gender = GenderCS#male
* extension[educationLevel].valueCodeableConcept  = SCT#224297003
* extension[ethnicity].valueCodeableConcept = EthnicityCS#2135-2
* extension[race].valueCodeableConcept  = RaceCS#2076-8
* maritalStatus = NullFlavor#UNK

Mapping: BreastCancerPatientToICHOM
Source:	BreastCancerPatient
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: patientmapping
Title: "Breast cancer patient to ICHOM set"
Description: "Mapping of the breast cancer patient profile to the ICHOM breast cancer PCOM set." 	
* identifier.value -> "Patient ID"
* name.family -> "Last name"
* birthDate -> "Year of birth"
* gender -> "Sex"
* deceased[x] -> "Deceased date"
* address.country -> "Country"
* maritalStatus -> "Relationship status"
* extension[educationLevel] -> "Education level"
* extension[ethnicity] -> "Ethnicity"
* extension[race] -> "Race"



Profile: BreastCancerPatient
Parent: Patient
Id: patient
Title: "Breast cancer patient"
Description: "A patient who has been diagnosed with or is receiving medical treatment for breast cancer. This profile includes the ICHOM patient characteristics and demographic factors."
* insert PublicationProfileRuleset
* identifier.value and name.family and birthDate and maritalStatus and deceased[x] MS
* deceased[x] only dateTime
* address.country from CountryVS (required)
* address.country 0..1 MS
* maritalStatus from RelationshipStatusVS (required)
* extension contains patient-sexParameterForClinicalUse named sexForClinicalUse 0..1 MS
* extension contains EducationLevel named educationLevel 0..1 MS
* extension contains Ethnicity named ethnicity 0..1 MS
* extension contains Race named race 0..1 MS

Instance: BreastCancerPatient147
InstanceOf: BreastCancerPatient
Title: "Example of Breast Cancer Patient Letsche"
Description: "The characteristics and demographic factors of an example patient."
* identifier.value = "147"
* name.family = "Letsche"
* birthDate = "1920"
* address.country = CountryCS#USA
* extension[sexForClinicalUse]
  * extension[value].valueCodeableConcept = SexForClinicalUseCS#male-typical
* extension[educationLevel].valueCodeableConcept = SCT#224297003
* extension[ethnicity].valueCodeableConcept = EthnicityCS#2135-2
* extension[race].valueCodeableConcept  = RaceCS#2076-8
* maritalStatus = NullFlavor#UNK

Instance: BreastCancerPatient121
InstanceOf: BreastCancerPatient
Title: "Example of Breast Cancer Patient Cornetet"
Description: "The characteristics and demographic factors of an example patient."
* identifier.value = "121"
* name.family = "Cornetet"
* birthDate = "1933"
* address.country = CountryCS#GB
* extension[sexForClinicalUse]
  * extension[value].valueCodeableConcept = SexForClinicalUseCS#male-typical
* extension[educationLevel].valueCodeableConcept = SCT#224297003
* extension[ethnicity].valueCodeableConcept = EthnicityCS#2186-5
* extension[race].valueCodeableConcept  = RaceCS#2054-5
* maritalStatus = RelationshipStatusCS#D "Divorced"
* deceasedDateTime = "1990-05-26"

Instance: BreastCancerPatient134
InstanceOf: BreastCancerPatient
Title: "Example of Breast Cancer Patient Mortera"
Description: "The characteristics and demographic factors of an example patient."
* identifier.value = "134"
* name.family = "Mortera"
* birthDate = "1978"
* address.country = CountryCS#GB
* extension[sexForClinicalUse]
  * extension[value].valueCodeableConcept = SexForClinicalUseCS#male-typical
* extension[educationLevel].valueCodeableConcept = SCT#224297003
* extension[ethnicity].valueCodeableConcept = EthnicityCS#2135-2
* extension[race].valueCodeableConcept  = RaceCS#2028-9
* maritalStatus = RelationshipStatusCS#D "Divorced"
* deceasedDateTime = "2014-01-13"

Mapping: BreastCancerPatientToICHOM
Source:	BreastCancerPatient
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: patientmapping
Title: "Breast cancer patient to ICHOM set"
Description: "Mapping of the breast cancer patient profile to the ICHOM breast cancer PCOM set."
* identifier.value -> "Patient ID"
* name.family -> "Last name"
* birthDate -> "Year of birth"
* deceased[x] -> "Date of death"
* deceased[x] -> "Vital status"
* address.country -> "Country"
* maritalStatus -> "Relationship status"
* extension[sexForClinicalUse] -> "Sex"
* extension[educationLevel] -> "Level of education"
* extension[ethnicity] -> "Ethnicity"
* extension[race] -> "Race"

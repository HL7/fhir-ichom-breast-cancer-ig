Mapping: BreastCancerPatientToICHOM
Source:	BreastCancerPatient
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/"
Id: patientmapping
Title: "Breast cancer patient to ICHOM set"
Description: "Mapping of the breast cancer patient profile to the ICHOM breast cancer PCOM set." 	
* identifier.value -> "N/A" "PatientID"
* name.family -> "LastName"
* birthDate -> "YearOfBirth"
* gender -> "Sex"
* deceased[x] -> "DeceasedDate"
* address.country -> "Country"
* maritalStatus -> "RelationshipStatus"
* extension[educationLevel] -> "EducationLevel"
* extension[ethnicity] -> "Ethnicity"
* extension[race] -> "Race"


Mapping: MenopausalStatusToICHOM
Source:	MenopausalStatus
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/"
Id: MenopausalStatusMapping
Title: "Observation of menopausal status to ICHOM set"
Description: "Mapping of the menopausal status to the ICHOM breast cancer PCOM set." 	
* value[x] -> "MENOPAUSE" "Menopause status"


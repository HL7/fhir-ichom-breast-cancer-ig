Instance: BreastCancerPatient147
InstanceOf: BreastCancerPatient 
Title: "Example of Breast Cancer Patient"
Description: "The characteristics and demograhic factors of an example patient"
* birthDate = "1920"
* name.family = "Letsche"
* address.country = CountryCS#USA
* gender = GenderCS#male
* extension[educationLevel].valueCodeableConcept  = SCT#224297003
* extension[ethnicity].valueCodeableConcept = EthnicityCS#2135-2
* extension[race].valueCodeableConcept  = RaceCS#2076-8
* maritalStatus = NullFlavor#UNK

Instance: MenopausalStatusPatient147
InstanceOf: MenopausalStatus 
Title: "Example of menopausal status"
Description: "An example of the menopausal status of a patient"
* status = ObservationStatusCS#unknown
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#309606002

Instance: BodyHeightPatient147
InstanceOf: ClinicalFactorsBodyHeight
Description: "Example of the height of a person diagnosed with breastcancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 48
* valueQuantity.unit = "Inch"
* valueQuantity.code = SCT#258677007
* effectiveDateTime = "2019-04-01" // this is required in the vital signs profile but is not in the ichom set. What do we do? Create our own measures for body weight and height?

Instance: BodyWeightPatient147
InstanceOf: ClinicalFactorsBodyWeight
Description: "Example of the weight of a person diagnosed with breastcancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 482
* valueQuantity.unit = "pounds"
* valueQuantity.code = SCT#258693003
* effectiveDateTime = "2019-04-01" // this is required in the vital signs profile but is not in the ichom set. What do we do?
Instance: BodyHeightPatient147
InstanceOf: BodyHeight
Description: "Example of the height of a patient diagnosed with breastcancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 48
* valueQuantity.unit = "[in_i]"
* valueQuantity.code = UCUM#[in_i]
* effectiveDateTime = "2019-04-01" 

Instance: BodyWeightPatient147
InstanceOf: BodyWeight
Description: "Example of the weight of a patient diagnosed with breastcancer"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueQuantity.value = 482
* valueQuantity.unit = "[lb_av]"
* valueQuantity.code = UCUM#[lb_av]
* effectiveDateTime = "2019-04-01"
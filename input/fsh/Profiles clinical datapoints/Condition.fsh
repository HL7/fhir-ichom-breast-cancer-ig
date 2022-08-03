// Primary Breast Cancer
Profile: PrimaryBreastCancerCondition
Parent: Condition 
Id: primary-breastcancer
Title: "Primary Breast Cancer Condition"
Description: "Represent the properties of the primary breast cancer diagnosis"
* insert PublicationProfileRuleset
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* subject only Reference(BreastCancerPatient)
* bodySite from LateralityVS (preferred)
* clinicalStatus MS
* recordedDate MS
* stage ^slicing.discriminator.type = #pattern
* stage ^slicing.discriminator.path = "summary"
* stage ^slicing.rules = #open
* stage ^slicing.description = "Slice based on the stage.value pattern"
* stage contains 
    ClinicalTumorStage 0..1 MS and 
    ClinicalNodalStage 0..1 MS and
    ClinicalMetastasesStage 0..1 MS and
    PathologicalTumorStage 0..1 MS and
    PathologicalNodalStage 0..1 MS and
    PathologicalMetastasesStage 0..1 MS

* stage[ClinicalTumorStage] ^short = "Clinical TNM tumor stage"
* stage[ClinicalTumorStage] ^definition = "Represents the clinical tumor stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[ClinicalTumorStage].type = TNMstages#cT "Clinical tumor stage"
* stage[ClinicalTumorStage].summary only CodeableConcept
* stage[ClinicalTumorStage].summary from TNMPrimaryTumorVS (required)

* stage[ClinicalNodalStage] ^short = "Clinical TNM nodal stage"
* stage[ClinicalNodalStage] ^definition = "Represents the clinical regional nodal stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[ClinicalNodalStage].type = TNMstages#cN "Clinical nodal stage"
* stage[ClinicalNodalStage].summary only CodeableConcept
* stage[ClinicalNodalStage].summary from TNMRegionalNodesVS (required)

* stage[ClinicalMetastasesStage] ^short = "Clinical TNM distant metastases stage"
* stage[ClinicalMetastasesStage] ^definition = "Represents the clinical distant metastases stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[ClinicalMetastasesStage].type = TNMstages#cM "Clinical distant metastasis"
* stage[ClinicalMetastasesStage].summary only CodeableConcept
* stage[ClinicalMetastasesStage].summary from TNMDistantMetastasesVS (required)

* stage[PathologicalTumorStage] ^short = "Pathological TNM tumor stage"
* stage[PathologicalTumorStage] ^definition = "Represents the pathological tumor stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[PathologicalTumorStage].type = TNMstages#pT "Pathological tumor stage"
* stage[PathologicalTumorStage].summary only CodeableConcept
* stage[PathologicalTumorStage].summary from TNMPrimaryTumorVS (required)

* stage[PathologicalNodalStage] ^short = "Pathological TNM nodal stage"
* stage[PathologicalNodalStage] ^definition = "Represents the pathological regional nodal stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[PathologicalNodalStage].type = TNMstages#pN "Pathological nodal stage"
* stage[PathologicalNodalStage].summary only CodeableConcept
* stage[PathologicalNodalStage].summary from TNMRegionalNodesVS (required)

* stage[PathologicalMetastasesStage] ^short = "Pathological TNM distant metastases stage"
* stage[PathologicalMetastasesStage] ^definition = "Represents the pathological distant metastases stage according to the tumor-node-metastasis (TNM) staging (per AJCC 8th Ed.)"
* stage[PathologicalMetastasesStage].type = TNMstages#pM "Pathological distant metastasis"
* stage[PathologicalMetastasesStage].summary only CodeableConcept
* stage[PathologicalMetastasesStage].summary from TNMDistantMetastasesVS (required)

Instance: PrimaryBreastCancerPatient147
InstanceOf: PrimaryBreastCancerCondition
Description: "Example of the primary condition breast cancer diagnosed in a patient"
* code = SCT#372137005 "Primary malignant neoplasm of breast"
* clinicalStatus = ConditionStatusCS#recurrence "Recurrence"
* bodySite = SCT#80248007 "Left breast"
* subject = Reference(BreastCancerPatient147)
* stage[ClinicalTumorStage].summary.coding = AJCC#cTis
* stage[ClinicalNodalStage].summary.coding = AJCC#cN1
* stage[ClinicalMetastasesStage].summary.coding = AJCC#cMX
* stage[PathologicalTumorStage].summary.coding = AJCC#pTis
* stage[PathologicalNodalStage].summary.coding = AJCC#pN0
* stage[PathologicalMetastasesStage].summary.coding = AJCC#pMX

Mapping: PrimaryBreastCancerConditionToICHOM
Source:	PrimaryBreastCancerCondition
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: primaryconditionmapping
Title: "Primary condition to ICHOM set"
Description: "Mapping of the primary breast cancer condition to the ICHOM breast cancer PCOM set. To ensure this is the first breast cancer diagnosed in a patient, the application can search for previous conditions." 	
* -> "First breast cancer"
* clinicalStatus -> "Recurrence" 
* stage[ClinicalTumorStage] -> "Clinical tumor stage"
* stage[ClinicalNodalStage] -> "Clinical nodal stage"
* stage[ClinicalMetastasesStage] -> "Clinical distant metastatsis"
* stage[PathologicalTumorStage] -> "Pathological tumor stage"
* stage[PathologicalNodalStage] -> "Pathological nodal stage"
* stage[PathologicalMetastasesStage] -> "Pathological distant metastasis"

// Secondary Breast Cancer
Profile: SecondaryBreastCancerCondition
Parent: Condition 
Id: secondary-breastcancer
Title: "Secondary Breast Cancer Condition"
Description: "Represent the properties of the secondary breast cancer diagnosis"
* insert PublicationProfileRuleset
* code = SCT#145501000119108 "Secondary malignant neoplasm of breast"
* subject only Reference(BreastCancerPatient)
* bodySite from LateralityNewCancerVS
* bodySite MS
* clinicalStatus MS
* recordedDate MS

Instance: SecondaryBreastCancerPatient147
InstanceOf: SecondaryBreastCancerCondition
Description: "Example of the secondary condition breast cancer diagnosed in a patient"
* code = SCT#145501000119108 "Secondary malignant neoplasm of breast"
* clinicalStatus = ConditionStatusCS#active "Active"
* bodySite = SCT#255209002 "Contralateral"
* subject = Reference(BreastCancerPatient147)

Mapping: SecondaryBreastCancerConditionToICHOM
Source:	SecondaryBreastCancerCondition
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: secondaryconditionmapping
Title: "Secondary condition to ICHOM set"
Description: "Mapping of the secondary breast cancer condition to the ICHOM breast cancer PCOM set. To ensure this is secondary breast cancer diagnosed in a patient, the application can search for previous conditions." 	
* -> "New cancer"

Profile: DeathAttributableBC
Parent: Observation 
Id: death-attr-bc
Title: "Death BC"
Description: "Death attributable to breast cancer"
* insert PublicationProfileRuleset
* code = SCT#419620001:42752001=254837009 "Death where Due to = Malignant tumor of breast"
* value[x] only CodeableConcept 
* value[x] from NoYesUnknownValueSet (required)
* value[x] MS

Instance: DeathAttributableBCPatient147
InstanceOf: DeathAttributableBC
Description: "Example of death attributable to breast cancer"
* code = SCT#419620001:42752001=254837009 "Death where Due to = Malignant tumor of breast"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = YesNoUnkCS#N

Mapping: DeathAttributableBCToICHOM
Source:	DeathAttributableBC
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: deathbcmapping
Title: "Death attributable to breast cancer to ICHOM set"
Description: "Mapping of death attributable to breast cancer to the ICHOM breast cancer PCOM set." 	
* value[x] -> "Death attributable to breast cancer"

Profile: RecurrenceMethod
Parent: Observation 
Id: recr-method
Title: "Recurrence Method"
Description: "The method of confirming recurrence breast cancer"
* insert PublicationProfileRuleset
* code = SCT#103693007 "Diagnostic procedure"
* value[x] only CodeableConcept 
* value[x] from RecurrenceMethod (required)
* value[x] MS

Instance: RecurrenceMethodPatient147
InstanceOf: RecurrenceMethod
Description: "Example of method of confirming recurrence breast cancer"
* code = SCT#103693007 "Diagnostic procedure"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = SCT#67151002 "Histologic"

Mapping: RecurrenceMethodToICHOM
Source:	RecurrenceMethod
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: recr-methodmapping
Title: "Recurrence method to ICHOM set"
Description: "Mapping of method of confirming recurrence breast cancer to the ICHOM breast cancer PCOM set." 	
* value[x] -> "Recurrence method"

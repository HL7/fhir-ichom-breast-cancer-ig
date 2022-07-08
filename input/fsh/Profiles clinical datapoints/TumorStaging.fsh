ValueSet: TNMStageGroupVS
Id: tnm-stage-group-vs
Title: "Value Set of Staging Type for Stage Group"
Description: "Valueset indicating the type of staging, clinical or pathological, of breast cancer."
* LNC#21908-9 "Stage group.clinical Cancer"
* LNC#21902-2 "Stage group.pathology Cancer"

Profile: BreastCancerStageGroup
Id: breast-cancer-stage-group
Parent: Observation
Title: "Cancer Stage Group"
Description: "A staging system to describe the amount and spread of breast cancer in a patient's body, using TNM."
* insert PublicationProfileRuleset
* code from TNMStageGroupVS (required)
* subject only Reference(BreastCancerPatient)
* hasMember MS
* hasMember only Reference(Observation)
* hasMember ^slicing.discriminator.type = #pattern  
* hasMember ^slicing.discriminator.path = "$this.resolve().code"
* hasMember ^slicing.rules = #open
* hasMember ^slicing.description = "Slicing based on referenced resource code attribute."
* hasMember contains
    tnmPrimaryTumorCategory 0..1 MS and
    tnmRegionalNodesCategory 0..1 MS and
    tnmDistantMetastasesCategory 0..1 MS
// Set metadata attributes that show up in the IG
* hasMember[tnmPrimaryTumorCategory] only Reference(TNMPrimaryTumorCategory)
* hasMember[tnmPrimaryTumorCategory] ^short = "TNM Primary Tumor Category"
* hasMember[tnmPrimaryTumorCategory] ^definition = "Category of the primary tumor, based on its size and extent, and based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmRegionalNodesCategory] only Reference(TNMRegionalNodesCategory)
* hasMember[tnmRegionalNodesCategory] ^short = "TNM  Regional Nodes Category"
* hasMember[tnmRegionalNodesCategory] ^definition = "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* hasMember[tnmDistantMetastasesCategory] only Reference(TNMDistantMetastasesCategory)
* hasMember[tnmDistantMetastasesCategory] ^short = "TNM  Distant Metastases Category"
* hasMember[tnmDistantMetastasesCategory] ^definition = "Category describing the presence or absence of metastases in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."

Profile:  TNMPrimaryTumorCategory
Id: tnm-primary-tumor-category
Parent: Observation
Title: "TNM Primary Tumor Category"
Description: "Category of the primary tumor, based on its size and extent, based on evidence such as physical examination, imaging, and/or biopsy."
* insert PublicationProfileRuleset
* code = SCT#385356007 "Tumor stage finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

Profile:  TNMRegionalNodesCategory
Id: tnm-regional-nodes-category
Parent: Observation
Title: "TNM Regional Nodes Category"
Description: "Category of the presence or absence of metastases in regional lymph nodes, based on evidence such as physical examination, imaging, and/or biopsy."
* insert PublicationProfileRuleset
* code = SCT#385382003 "Node stage finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

Profile:  TNMDistantMetastasesCategory
Id: tnm-distant-metastases-category
Parent: Observation
Title: "TNM Distant Metastases Category"
Description: "Category describing the extent of a tumor metastasis in remote anatomical locations, based on evidence such as physical examination, imaging, and/or biopsy."
* insert PublicationProfileRuleset
* code = SCT#385380006 "Metastasis category finding"
* subject only Reference(BreastCancerPatient)

// First we need to have codes for the TNM stages
// * value[x] only CodeableConcept 
// * value[x] from  (required)
// * value[x] MS

// Example by mCODE
// Instance: primary-cancer-condition-jenny-m
// InstanceOf: PrimaryCancerCondition
// Description: "Extended example: example showing primary cancer condition"
// * extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#413448000 "Adenocarcinoma, no subtype, intermediate grade (morphologic abnormality)"
// * clinicalStatus = ClinStatus#remission
// * verificationStatus = VerStatus#confirmed
// * category = CondCat#problem-list-item
// * code = SCT#353431000119107 "Primary malignant neoplasm of female left breast (disorder)"
// * subject = Reference(cancer-patient-jenny-m)
// * onsetDateTime = "2018-03-16"
// * asserter = Reference(us-core-practitioner-owen-oncologist)
// * stage.summary = AJCC#3C
// * stage.assessment = Reference(tnm-clinical-stage-group-jenny-m)

// Instance: tnm-clinical-stage-group-jenny-m
// InstanceOf: CancerStageGroup
// Description: "Extended example: example showing TNM staging (stage group)"
// * status = #final "final"
// * code = LNC#21908-9 "Stage group.clinical Cancer"
// * subject = Reference(cancer-patient-jenny-m)
// * effectiveDateTime = "2018-03-16"
// * valueCodeableConcept = AJCC#2B "IIB"
// * method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"
// * hasMember[0] = Reference(tnm-pathologic-primary-tumor-category-jenny-m)
// * hasMember[1] = Reference(tnm-pathologic-regional-nodes-category-jenny-m)
// * hasMember[2] = Reference(tnm-pathologic-distant-metastases-category-jenny-m)

// Instance: tnm-clinical-primary-tumor-category-jenny-m
// InstanceOf: TNMPrimaryTumorCategory
// Description: "Extended example: example showing TNM staging (T)"
// * status = #final "final"
// * code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"
// * subject = Reference(cancer-patient-jenny-m)
// * effectiveDateTime = "2018-03-16"
// * valueCodeableConcept = AJCC#cT3
// * method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

// Instance: tnm-clinical-regional-nodes-category-jenny-m
// InstanceOf: TNMRegionalNodesCategory
// Description: "Extended example: example showing TNM staging (N)"
// * status = #final "final"
// * code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"
// * subject = Reference(cancer-patient-jenny-m)
// * effectiveDateTime = "2018-03-16"
// * valueCodeableConcept = AJCC#cN0
// * method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

// Instance: tnm-clinical-distant-metastases-category-jenny-m
// InstanceOf: TNMDistantMetastasesCategory
// Description: "Extended example: example showing TNM staging (M)"
// * status = #final "final"
// * code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
// * subject = Reference(cancer-patient-jenny-m)
// * effectiveDateTime = "2018-03-16"
// * valueCodeableConcept = AJCC#cM0
// * method = SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition neoplasm staging system (tumor staging)"

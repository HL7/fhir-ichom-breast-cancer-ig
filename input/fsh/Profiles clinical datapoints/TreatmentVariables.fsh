// BREAST SURGERY
Profile: BreastCancerSurgery
Parent: Procedure 
Id: breast-cancer-surgery
Title: "Breast cancer surgery"
Description: "Represents if the breast cancer patient received surgery during the last year. This profile is in alignment with mCODE."
* category = SCT#387713003 "Surgical procedure" 
* code from BreastSurgeryTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: BreastCancerSurgeryPatient147
InstanceOf: BreastCancerSurgery 
Description: "Example of the surgical procedure the breast cancer patient underwent"
* status = EventStatusCS#completed
* code = BreastSurgeryTypesCodeSystem#3 "Mastectomy with immediate reconstruction"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "1989-03-25"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: BreastCancerSurgeryToICHOM
Source:	BreastCancerSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: breast-cancer-surgery-mapping
Title: "Breast cancer surgery to ICHOM set"
Description: "Mapping of the breast cancer surgery to the ICHOM breast cancer PCOM set."
* -> "Treatment"
* code -> "Surgery"
* performedDateTime -> "Surgery date" 

// AXILLA SURGERY
Profile: AxillaSurgery
Parent: Procedure 
Id: axilla-surgery
Title: "Axilla surgery"
Description: "Represents if the breast cancer patient received surgery to the axilla during the last year. This profile is in alignment with mCODE."
* category = SCT#699455008 "Operative procedure on axilla"
* code from AxillaSurgeryVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* subject and performedDateTime and reasonReference MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: AxillaSurgeryPatient147
InstanceOf: AxillaSurgery 
Description: "Example of a breast cancer patient who underwent surgery to the axilla"
* status = EventStatusCS#completed
* category = SCT#699455008 "Operative procedure on axilla"
* code = SCT#234262008 "Excision of axillary lymph node"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-02-12"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: AxillaSurgeryToICHOM
Source:	AxillaSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: axilla-surgery-mapping
Title: "Axilla surgery to ICHOM set"
Description: "Mapping of the axilla surgery to the ICHOM breast cancer PCOM set." 
* -> "Treatment"	
* category -> "Treatment"
* code -> "Surgery axilla"
* performedDateTime -> "Surgery axilla date" 

// AXILLARY CLEARANCE
Profile: AxillaryClearance
Parent: Procedure 
Id: axillary-clearance
Title: "Axillary clearance"
Description: "Represents if the breast cancer patient received axillary clearance during the last year. Axilla clearance could be due to lymph node involvement after sentinel lymph node biopsy."
* code = SCT#79544006 "Complete axillary lymphadenectomy"
* subject only Reference(BreastCancerPatient)
* subject and performedDateTime	and complication and reasonReference MS
* reasonReference only Reference (AxillaSurgery)

Instance: AxillaryClearancePatient147
InstanceOf: AxillaryClearance
Description: "Example of a breast cancer patient who received axilla clearance"
* status = EventStatusCS#completed
* code = SCT#79544006 "Complete axillary lymphadenectomy"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-02-12"
* reasonReference = Reference(AxillaSurgeryPatient147)

Mapping: AxillaryClearanceToICHOM
Source:	AxillaryClearance
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: axillary-clearance-mapping
Title: "Axillary clearance to ICHOM set"
Description: "Mapping of axillary clearance to the ICHOM breast cancer PCOM set" 	
* -> "Treatment"
* code -> "Axillary clearance"
* performedDateTime -> "Axillary clearance date" 

// RECONSTRUCTION
Profile: ReconstructionSurgery
Parent: Procedure 
Id: reconstruction-surgery
Title: "Reconstruction surgery"
Description: "Represents if the breast cancer patient received reconstruction surgery during the last year. This profile is in alignment with mCODE."
* code = SCT#33496007 "Reconstruction of breast" 
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* bodySite from ImplantLocationVS (required)
* usedCode from ReconstructionTypeVS (required)
* bodySite and usedCode MS 

Instance: ReconstructionSurgeryPatient147
InstanceOf: ReconstructionSurgery
Description: "Example of a breast cancer patient who underwent reconstruction surgery"
* status = EventStatusCS#completed
* code = SCT#33496007 "Reconstruction of breast"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "1999-02-13"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* bodySite = ImplantLocationCodeSystem#Pre_pect "Pre-pectoral"
* usedCode = ReconstructionTypeCodeSystem#Staged_imp "Staged implant"

Mapping: ReconstructionSurgeryToICHOM
Source:	ReconstructionSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reconstruction-surgery-mapping
Title: "Reconstruction surgery to ICHOM set"
Description: "Mapping of the reconstruction surgery to the ICHOM breast cancer PCOM set" 
* -> "Treatment"
* code -> "Delayed Reconstruction"
* performedDateTime -> "Surgery date" 
* bodySite -> "Implant Reconstruction"
* usedCode -> "Reconstruction Type"

// RADIOTHERAPY
Profile: Radiotherapy
Parent: Procedure 
Id: radiotherapy
Title: "Radiotherapy"
Description: "Represents if the breast cancer patient received radiotherapy during the last year." 
* code = SCT#108290001 "Radiation oncology AND/OR radiotherapy" 
* subject only Reference(BreastCancerPatient)
* performedPeriod MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)
* bodySite from LocationRadiotherapyVS (preferred) 

Instance: RadiotherapyPatient147
InstanceOf: Radiotherapy
Description: "Example of a breast cancer patient who received radiotherapy"
* status = EventStatusCS#completed
* code = SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2021-06-19"
* performedPeriod.end = "2021-12-01"
* reasonCode = SCT#373846009 "Adjuvant - intent" 
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* bodySite = SCT#263601005 "Site of tumor"

Mapping: RadiotherapyToICHOM
Source:	Radiotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: radiotherapy-mapping
Title: "Radiotherapy to ICHOM set"
Description: "Mapping of radiotherapy to the ICHOM breast cancer PCOM set" 	
* -> "Treatment"
* performedPeriod.start -> "Radiotherapy start date" 
* performedPeriod.end -> "Radiotherapy stop date" 
* reasonCode -> "Radiotherapy"
* bodySite -> "Radiotherapy type"

// CHEMOTHERAPY
Profile: Chemotherapy
Parent: Procedure 
Id: chemotherapy
Title: "Chemotherapy"
Description: "Represents if the patient received chemotherapy during the last year."
* code = SCT#385786002 "Chemotherapy care"
* subject only Reference(BreastCancerPatient)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)
* performedPeriod and subject and reasonReference and reasonCode MS
* extension contains ProcedureMethodEx named method 0..1 MS
* extension[method].valueCodeableConcept from ChemoTherapyTypeVS (preferred)

Instance: ChemotherapyPatient147
InstanceOf: Chemotherapy
Description: "Example of a breast cancer patient who received chemotherapy"
* status = EventStatusCS#completed
* code = SCT#385786002 "Chemotherapy care"
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2019-01-09"
* performedPeriod.end = "2019-09-04"
* reasonCode = SCT#373846009 "Adjuvant - intent" 
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* extension[method].valueCodeableConcept = NullFlavor#OTH "other"

Mapping: ChemotherapyToICHOM
Source:	Chemotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: chemotherapy-mapping
Title: "Chemotherapy to ICHOM set"
Description: "Mapping of chemotherapy to the ICHOM breast cancer PCOM set" 
* -> "Treatment"
* performedPeriod.start -> "Chemotherapy start date" 
* performedPeriod.end -> "Chemotherapy stop date" 
* reasonCode -> "Chemotherapy"
* extension[method] -> "Type of chemotherapy"

// HORMONAL THERAPY
Profile: Hormonaltherapy
Parent: Procedure 
Id: hormonal-therpay
Title: "Hormonal therapy"
Description: "Represents if the patient received hormonal therapy during the last year."
* code = SCT#169413002 "Hormone therapy" 
* subject only Reference(BreastCancerPatient)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)
* performedPeriod and subject and reasonReference and reasonCode MS
* extension contains ProcedureMethodEx named method 0..1 MS
* extension[method].valueCodeableConcept from HormonalTherapyTypeVS (preferred)

Instance: HormonaltherapyPatient147
InstanceOf: Hormonaltherapy
Description: "Example of a breast cancer patient who received hormonal therapy"
* status = EventStatusCS#completed
* code = SCT#169413002 "Hormone therapy" 
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2020-10-06"
* performedPeriod.end = "2021-06-04"
* reasonCode = SCT#373847000 "Neo-adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* extension[method].valueCodeableConcept = SCT#83152002 "Oophorectomy"

Mapping: HormonaltherapyToICHOM
Source:	Hormonaltherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: hormonal-therapy-mapping
Title: "Hormonal therapy to ICHOM set"
Description: "Mapping of hormonal therapy to the ICHOM breast cancer PCOM set" 
* -> "Treatment"
* performedPeriod.start -> "Start of hormonal therapy" 
* performedPeriod.end -> "Stop of hormonal therapy" 
* reasonCode -> "hormonal therapy"
* extension[method] -> "Type of hormonal therapy"

// BEST SUPPORTIVE CARE
Profile: BestSupportiveCare
Parent: Procedure 
Id: best-supportive-care
Title: "Best supportive care"
Description: "Represents if breast cancer patient received best supportive care during the last year."
* code = SCT#243114000 "Support"
* subject only Reference(BreastCancerPatient)
* performedDateTime and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: BestSupportiveCarePatient147
InstanceOf: BestSupportiveCare 
Description: "Example of a breast cancer patient who received best supportive care"
* status = EventStatusCS#completed
* code = SCT#243114000 "Support"
* subject = Reference(BreastCancerPatient147)
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: BestSupportiveCareToICHOM
Source:	BestSupportiveCare
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: best-supportive-care-mapping
Title: "Best supportive care of breast cancer patient to ICHOM set"
Description: "Mapping of best supportive care to the ICHOM breast cancer PCOM set" 	
* -> "Treatment"

// IMMUNOTHERAPY
Profile: Immunotherapy
Parent: Procedure 
Id: immunotherapy
Title: "Immunotherapy"
Description: "Represents if the breast cancer patient received immunotherapy during the last year."
* code = SCT#76334006 "Immunotherapy"
* subject only Reference(BreastCancerPatient)
* performedDateTime and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: ImmunotherapyPatient147
InstanceOf: Immunotherapy 
Description: "Example of a breast cancer patient who received immunotherapy"
* status = EventStatusCS#completed
* code = SCT#76334006 "Immunotherapy"
* subject = Reference(BreastCancerPatient147)
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: ImmunotherapyToICHOM
Source:	Immunotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: immunotherapy-mapping
Title: "Immunotherapy of the breast cancer patient to ICHOM set"
Description: "Mapping of immunotherapy to the ICHOM breast cancer PCOM set" 	
* -> "Treatment"

// TARGETED THERAPY
Profile: TargetedTherapy
Parent: Procedure 
Id: targeted-therapy
Title: "Targeted therapy"
Description: "Type and duration of targeted therapy"
* category = SCT#397747003 "Assertion"
* code from TargetedTherapyVS (preferred)
* subject only Reference(BreastCancerPatient)
* performedPeriod MS

Instance: TargetedTherapyPatient134
InstanceOf: TargetedTherapy 
Title: "Example of Targeted therapy"
Description: "Example of the targeted therapy for this patient."
* status = EventStatusCS#unknown
* subject = Reference(BreastCancerPatient134)
* code = SCT#784176007 "HER2 (Human epidermal growth factor receptor 2) inhibitor"
* performedPeriod.start = "1979-11-21"
* performedPeriod.end = "1979-11-23"

Mapping: TargetedTherapyToICHOM
Source:	TargetedTherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: targetedtherapymapping
Title: "Targeted therapy to ICHOM set"
Description: "Mapping of targeted thereapy to the ICHOM breast cancer PCOM set" 	
* code -> "Targeted therapy"
* performedPeriod.start -> "Targeted therapy start date"
* performedPeriod.end -> "Targeted therapy start date"

// REOPERATION
Profile: ReoperationSurgery
Parent: Procedure 
Id: reoperation-surgery
Title: "Re-operations since surgery for breast cancer"
Description: "Represents the type of surgery the patient has received since their surgery for breast cancer"
* category = SCT#387713003 "Surgical procedure"
* code from ReoperationTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS

Instance: ReoperationSurgeryPatient147
InstanceOf: ReoperationSurgery 
Title: "Example of Reoperation Surgery"
Description: "Example of the surgery the patient has received since their surgery for breast cancer."
* status = EventStatusCS#unknown
* subject = Reference(BreastCancerPatient147)
* code = SCT#373572006 "Clinical finding absent"
* performedDateTime = "1921-06-27"

Mapping: ReoperationSurgeryToICHOM
Source:	ReoperationSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: reoperationsurgerymapping
Title: "ReoperationSurgery to ICHOM set"
Description: "Mapping of reoperation surgery to the ICHOM breast cancer PCOM set" 	
* code -> "Surgery"
* performedDateTime -> "Surgery date"


// TreatmentPlanFollowed	
Profile: TreatmentPlanFollowed
Parent: Observation
Id: treatment-plan-followed
Title: "Real Treatment Plan Followed"
Description: "Indicate if the patient followed the multidisciplinary recommended treatment plan"
* insert PublicationProfileRuleset
* code = SCT#410110000 "Compliance care assessment"
* value[x] only CodeableConcept 
* value[x] from TreatmentPlanFollowedVS (required)
* value[x] MS

// no example yet available, this one is made up
Instance: TreatmentPlanFollowedPatient147
InstanceOf: TreatmentPlanFollowed 
Title: "Example Real Treatment Plan Followed"
Description: "Example of how the real treatment plan was followed"
* code = SCT#410110000 "Compliance care assessment"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = TreatmentPlanFollowedCodeSystem#1 "Yes, fully followed"

Mapping: TreatmentPlanFollowedToICHOM
Source:	TreatmentPlanFollowed
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: treatmentplanfollowedmapping
Title: "TreatmentPlanFollowed to ICHOM set"
Description: "Mapping of Treatment Plan Followed to the ICHOM breast cancer PCOM set" 	
* value[x] -> "Real Treatment Plan Followed"

// TreatmentPlanNotFollowed	
Profile: TreatmentPlanNotFollowed
Parent: Observation
Id: treatment-plan-not-followed
Title: "Treatment Plan Not Followed"
Description: "Indicate why the multidisciplinary recommended treatment plan was not followed"
* insert PublicationProfileRuleset
* code = TreatmentPlanComplianceCodeSystem#1 "Reason for not following original treatment plan"
* value[x] only CodeableConcept 
* value[x] from TreatmentPlanNotFollowedVS (required)
* value[x] MS

// no example yet available, this one is made up
Instance: TreatmentPlanNotFollowedPatient147
InstanceOf: TreatmentPlanNotFollowed 
Title: "Example Treatment Plan Not Followed"
Description: "Example of why the treatment plan was not followed"
* code = TreatmentPlanComplianceCodeSystem#1 "Reason for not following original treatment plan"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = TreatmentPlanNotFollowedCodeSystem#1 "Patient preference"

Mapping: TreatmentPlanNotFollowedToICHOM
Source:	TreatmentPlanNotFollowed
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: treatmentplannotfollowedmapping
Title: "TreatmentPlanNotFollowed to ICHOM set"
Description: "Mapping of Treatment Plan Not Followed to the ICHOM breast cancer PCOM set" 	
* value[x] -> "Treatment Plan Not Followed"

// TreatmentPlanNotFollowed	
Profile: PatientTreatPref
Parent: Observation
Id: patient-treat-pref
Title: "Patient Treatment Preference"
Description: "Indicate why the recommended treatment was not followed"
* insert PublicationProfileRuleset
* code = TreatmentPlanComplianceCodeSystem#2 "Patient reported reason for not following recommened treatment"
* value[x] only CodeableConcept 
* value[x] from PatientTreatPrefVS (required)
* value[x] MS

// no example yet available, this one is made up
Instance: PatientTreatPrefPatient147
InstanceOf: PatientTreatPref 
Title: "Example Patient Treatment Preference"
Description: "Example of why the patient did not follow the recommended treatment"
* code = TreatmentPlanComplianceCodeSystem#2 "Patient reported reason for not following recommened treatment"
* status = ObservationStatusCS#final
* subject = Reference(BreastCancerPatient147)
* valueCodeableConcept = PatientTreatPrefCodeSystem#2 "Treatment unavailable"

Mapping: PatientTreatPrefToICHOM
Source:	PatientTreatPref
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: patienttreatprefmapping
Title: "PatientTreatPref to ICHOM set"
Description: "Mapping of Patient Treatment Preference  to the ICHOM breast cancer PCOM set" 	
* value[x] -> "Patient Treatment Preference"












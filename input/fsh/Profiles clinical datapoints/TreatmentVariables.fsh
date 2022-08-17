// BREAST SURGERY
Profile: BreastCancerSurgery
Parent: Procedure 
Id: breast-cancer-surgery
Title: "Breast cancer surgery"
Description: "Represents if the breast cancer patient received surgery during the last year. This profile is in alignment with mCODE."
* category = SCT#387713003 "Surgical procedure" // this code is a bit too generic in my opinion, better to have one for breast (cancer) surgery
* code from BreastSurgeryTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: BreastCancerSurgeryPatient147
InstanceOf: BreastCancerSurgery 
Description: "Example of the surgical procedure the breast cancer patient underwent"
* status = ProcedureStatusCS#completed
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
* reasonReference only Reference (PrimaryBreastCancerCondition)

Instance: AxillaSurgeryPatient147
InstanceOf: AxillaSurgery 
Description: "Example of a breast cancer patient who underwent surgery to the axilla"
* status = ProcedureStatusCS#completed
* code = SCT#178294003 "Axillary lymph nodes sampling"
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
Description: "Represents if the breast cancer patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year. This profile is in alignment with mCODE."
* partOf only Reference(AxillaSurgery)
* code = SCT#79544006 "Complete axillary lymphadenectomy"
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (AxillaSurgery)

Instance: AxillaryClearancePatient147
InstanceOf: AxillaryClearance
Description: "Example of a breast cancer patient who received axilla clearance"
* status = ProcedureStatusCS#completed
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
* code = SCT#33496007 "Reconstruction of breast" // found this code myself, is not specifically delayed
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* bodySite MS // need codes for pre pectoral and sub-pectoral reconstruction
* focalDevice MS // need codes for the different types of impants (direct, staged, autologous implants)

Instance: ReconstructionSurgeryPatient147
InstanceOf: ReconstructionSurgery
Description: "Example of a breast cancer patient who underwent reconstruction surgery"
* status = ProcedureStatusCS#completed
* code = SCT#33496007 "Reconstruction of breast"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "1999-02-13"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
// need codes to create examples of location and type of reconstruction

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
* focalDevice -> "Reconstruction Type"

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
* status = ProcedureStatusCS#completed
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
* code from ChemoTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* performedPeriod MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)

Instance: ChemotherapyPatient147
InstanceOf: Chemotherapy
Description: "Example of a breast cancer patient who received chemotherapy"
* status = ProcedureStatusCS#completed
* code = NullFlavor#OTH "other"
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2019-01-09"
* performedPeriod.end = "2019-09-04"
* reasonCode = SCT#373846009 "Adjuvant - intent" 
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: ChemotherapyToICHOM
Source:	Chemotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: chemotherapy-mapping
Title: "Chemotherapy to ICHOM set"
Description: "Mapping of chemotherapy to the ICHOM breast cancer PCOM set" 
* -> "Treatment"
* performedPeriod.start -> "Chemotherapy start date" 
* performedPeriod.end -> "Chemotherapy stop date" 
* code -> "Type of chemotherapy"
* reasonCode -> "Chemotherapy"


// HORMONAL THERAPY
Profile: Hormonaltherapy
Parent: Procedure 
Id: hormonal-therpay
Title: "Hormonal therapy"
Description: "Represents if the patient received hormonal therapy during the last year."
* code from HormonalTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* performedPeriod MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)

Instance: HormonaltherapyPatient147
InstanceOf: Hormonaltherapy
Description: "Example of a breast cancer patient who received hormonal therapy"
* status = ProcedureStatusCS#completed
* code = SCT#83152002 "Oophorectomy"
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2020-10-06"
* performedPeriod.end = "2021-06-04"
* reasonCode = SCT#373847000 "Neo-adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: HormonaltherapyToICHOM
Source:	Hormonaltherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: hormonal-therapy-mapping
Title: "Hormonal therapy to ICHOM set"
Description: "Mapping of hormonal therapy to the ICHOM breast cancer PCOM set" 
* -> "Treatment"
* performedPeriod.start -> "Start of hormonal therapy" 
* performedPeriod.end -> "Stop of hormonal therapy" 
* code -> "Type of hormonal therapy"
* reasonCode -> "hormonal therapy"


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
* status = ProcedureStatusCS#completed
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
* status = ProcedureStatusCS#completed
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
* code from TargetedTherapyVS (required)
* subject only Reference(BreastCancerPatient)
* performedPeriod MS

Instance: TargetedTherapyPatient134
InstanceOf: TargetedTherapy 
Title: "Example of Targeted therapy"
Description: "Example of the targeted therapy for this patient."
* status = ProcedureStatusCS#unknown
* subject = Reference(BreastCancerPatient134)
* code = TargetedTherapyCodeSystem#0 "Her-2 targeting therapy"
* performedPeriod.start = "1979-11-21"
* performedPeriod.end = "1979-11-23"

Mapping: TargetedTherapyToICHOM
Source:	TargetedTherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: targetedtherapymapping
Title: "ReoperationSurgery to ICHOM set"
Description: "Mapping of reoperation surgery to the ICHOM breast cancer PCOM set" 	
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
* status = ProcedureStatusCS#unknown
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



// SYSTEMIC THERAPY





// TreatmentPlanFollowed	

















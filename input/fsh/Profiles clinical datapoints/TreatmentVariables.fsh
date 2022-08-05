//Treatment Variables
// TREATMENT_BREAST	Treatement (not sure if we need this one)
Profile: Treatment
Parent: Procedure 
Id: breast-cancer-treatment
Title: "Treatment the breast cancer patient received"
Description: "Represents the treatment the breast cancer patient received during the last year"
* code from TreatmentTypeValueSet (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* complication MS

Instance: TreatmentPatient147
InstanceOf: Treatment 
Description: "Example of the treatment the breast cancer patient received during the last year"
* status = ProcedureStatusCS#completed
* code = TreatmentTypesCodeSystem#5 "Chemotherapy"
* subject = Reference(BreastCancerPatient147)
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: TreatmentToICHOM
Source:	Treatment
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: treatment-mapping
Title: "Treatment of breast cancer patient to ICHOM set"
Description: "Mapping of the breast cancer treatment to the ICHOM breast cancer PCOM set" 	
* code -> "Treatment"

// BREAST SURGERY
Profile: BreastCancerSurgery
Parent: Procedure 
Id: breast-cancer-surgery
Title: "Surgery of a breast cancer patient"
Description: "Represents the surgery the breast cancer patient received during the last year"
* category = SCT#387713003 "Surgical procedure" // this code is a bit too generic in my opinion, better to have one for breast (cancer) surgery
* code from BreastSurgeryTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* complication MS

Instance: BreastCancerSurgeryPatient147
InstanceOf: BreastCancerSurgery 
Description: "Example of the surgery the breast cancer patient received during the last year"
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
* code -> "Surgery"
* performedDateTime -> "Surgery date" 

// AXILLA SURGERY
Profile: AxillaSurgery
Parent: Procedure 
Id: axilla-surgery
Title: "Surgery to the axilla of the breast cancer patient"
Description: "Represents if the patient received surgery to the axilla during the last year"
* category = SCT#699455008 "Operative procedure on axilla"
* code from AxillaSurgeryVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* complication MS

Instance: AxillaSurgeryPatient147
InstanceOf: AxillaSurgery 
Description: "Example of the axilla surgery the breast cancer patient received during the last year"
* status = ProcedureStatusCS#completed
* code = SCT#79544006 "Complete axillary lymphadenectomy"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-02-12"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: AxillaSurgeryToICHOM
Source:	AxillaSurgery
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: axilla-surgery-mapping
Title: "Axilla surgery to ICHOM set"
Description: "Mapping of the axilla surgery to the ICHOM breast cancer PCOM set." 	
* category -> "Treatment"
* code -> "Surgery axilla"
* performedDateTime -> "Surgery axilla date" 

// AXILLARY CLEARANCE
// -> not sure about this one since we dont have a code specific for axilla clearance. (i just found this code)
// How do we define that axillary clearance is due to lymph node involvement after sentinel lymph node biopsy
Profile: AxillaryClearance
Parent: Procedure 
Id: axillary-clearance
Title: "Axillary clearance of the breast cancer patient"
Description: "Represents if the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year"
* partOf only Reference(AxillaSurgery)
* code = SCT#234254000 "Excision of axillary lymph nodes group"
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* complication MS

Instance: AxillaryClearancePatient147
InstanceOf: AxillaryClearance
Description: "Example of the axilla clearance the breast cancer patient received during the last year"
* status = ProcedureStatusCS#completed
* code = SCT#234254000 "Excision of axillary lymph nodes group"
* subject = Reference(BreastCancerPatient147)
* performedDateTime = "2022-02-12"
* reasonReference = Reference(PrimaryBreastCancerPatient147)

Mapping: AxillaryClearanceToICHOM
Source:	AxillaryClearance
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: axillary-clearance-mapping
Title: "Axillary clearance to ICHOM set"
Description: "Mapping of axillary clearance to the ICHOM breast cancer PCOM set" 	
* code -> "Axillary clearance"
* performedDateTime -> "Axillary clearance date" 

// RECONSTRUCTION
Profile: ReconstructionSurgery
Parent: Procedure 
Id: reconstruction-surgery
Title: "Reconstruction surgery of a breast cancer patient"
Description: "Represents the reconstruction surgery the breast cancer patient received during the last year"
* code = LNC#21974-1 "Surgery reconstruction Cancer Rx" // found this code myself
* subject only Reference(BreastCancerPatient)
* performedDateTime	MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* bodySite MS // need codes for pre pectoral and sub-pectoral reconstruction
* complication MS
* focalDevice MS // need codes for the different types of impants (direct, staged, autologous implants)

Instance: ReconstructionSurgeryPatient147
InstanceOf: ReconstructionSurgery
Description: "Example of reconstruction surgery the breast cancer patient received during the last year"
* status = ProcedureStatusCS#completed
* code = LNC#21974-1 "Surgery reconstruction Cancer Rx" // found this code myself
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
* code -> "Delayed Reconstruction"
* performedDateTime -> "Surgery date" 
* bodySite -> "Implant Reconstruction"
* focalDevice -> "Reconstruction Type"

// RADIOTHERAPY
Profile: Radiotherapy
Parent: Procedure 
Id: radiotherapy
Title: "Radiotherapy of a breast cancer patient"
Description: "Represents if the patient received radiotherapy during the last year"
* code = SCT#108290001 "Radiation oncology AND/OR radiotherapy" // how to profile the intent?
* subject only Reference(BreastCancerPatient)
* performedPeriod MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* bodySite from LocationRadiotherapyVS (preferred) 

Instance: RadiotherapyPatient147
InstanceOf: Radiotherapy
Description: "Example of radiotherapy the breast cancer patient received during the last year"
* status = ProcedureStatusCS#completed
* code = SCT#108290001 "Radiation oncology AND/OR radiotherapy"
* subject = Reference(BreastCancerPatient147)
* performedPeriod.start = "2021-06-19"
* performedPeriod.end = "2021-12-01"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* bodySite = SCT#263601005 "Site of tumor"

Mapping: RadiotherapyToICHOM
Source:	Radiotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: radiotherapymapping
Title: "Radiotherapy to ICHOM set"
Description: "Mapping of radiotherapy to the ICHOM breast cancer PCOM set" 	
* performedPeriod.start -> "Radiotherapy start date" 
* performedPeriod.end -> "Radiotherapy stop date" 
* bodySite -> "Radiotherapy type"

// CHEMOTHERAPY




// HORMONAL THERAPY







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

















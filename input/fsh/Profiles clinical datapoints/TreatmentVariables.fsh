//Treatment Variables
// TREATMENT_BREAST	Treatement (not sure if we need this one)
Profile: Treatment
Parent: Procedure 
Id: breast-cancer-treatment
Title: "Breast cancer treatment"
Description: "Represents the treatment the breast cancer patient received during the last year"
* code from TreatmentTypeValueSet (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

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
Title: "Breast cancer surgery"
Description: "Represents the surgery the breast cancer patient received during the last year"
* category = SCT#387713003 "Surgical procedure" // this code is a bit too generic in my opinion, better to have one for breast (cancer) surgery
* code from BreastSurgeryTypeVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

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
Title: "Axilla surgery"
Description: "Represents if the patient received surgery to the axilla during the last year"
* category = SCT#699455008 "Operative procedure on axilla"
* code from AxillaSurgeryVS (required)
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

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
Title: "Axillary clearance"
Description: "Represents if the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year"
* partOf only Reference(AxillaSurgery)
* code = SCT#234254000 "Excision of axillary lymph nodes group"
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)

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
Title: "Reconstruction surgery"
Description: "Represents the reconstruction surgery the breast cancer patient received during the last year"
* code = LNC#21974-1 "Surgery reconstruction Cancer Rx" // found this code myself
* subject only Reference(BreastCancerPatient)
* performedDateTime	and complication MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* bodySite MS // need codes for pre pectoral and sub-pectoral reconstruction
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
Title: "Radiotherapy"
Description: "Represents if the patient received radiotherapy during the last year"
* code = SCT#108290001 "Radiation oncology AND/OR radiotherapy" // how to profile the intent?
* subject only Reference(BreastCancerPatient)
* performedPeriod MS
* reasonReference only Reference (PrimaryBreastCancerCondition)
* reasonCode from TherapyIntentVS (required)
* bodySite from LocationRadiotherapyVS (preferred) 

Instance: RadiotherapyPatient147
InstanceOf: Radiotherapy
Description: "Example of radiotherapy the breast cancer patient received during the last year"
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
* performedPeriod.start -> "Radiotherapy start date" 
* performedPeriod.end -> "Radiotherapy stop date" 
* reasonCode -> "Radiotherapy"
* bodySite -> "Radiotherapy type"

// CHEMOTHERAPY
Profile: Chemotherapy
Parent: MedicationAdministration
Id: chemotherapy-medication-administration
Title: "Chemotherapy"
Description: "Represents if the patient received chemotherapy during the last year. This profile is in alignment with mCODE."
* medication[x] only CodeableConcept 
* medication[x] from ChemoTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* reasonCode from TherapyIntentVS (required)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* medication[x] and subject and effectivePeriod and reasonCode and reasonReference MS

Instance: ChemotherapyPatient147
InstanceOf: Chemotherapy
Description: "Example of chemotherapy of the breast cancer patient received during the last year"
* status = MedicationAdministrationStatusCS#completed
* medicationCodeableConcept = NullFlavor#OTH "other"
* subject = Reference(BreastCancerPatient147)
* reasonCode = SCT#373846009 "Adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* effectivePeriod.start = "2019-01-09"
* effectivePeriod.end = "2019-09-04"

Mapping: ChemotherapyToICHOM
Source:	Chemotherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: chemotherapy-mapping
Title: "Chemotherapy to ICHOM set"
Description: "Mapping of chemotherapy to the ICHOM breast cancer PCOM set" 	
* effectivePeriod.start -> "Chemotherapy start date" 
* effectivePeriod.end -> "Chemotherapy stop date" 
* medication[x] -> "Type of chemotherapy"
* reasonCode -> "Chemotherapy"

Profile: ChemotherapyRequest
Parent: MedicationRequest
Id: chemotherapy-medication-request
Title: "Chemotherapy request"
Description: "Represents the order or request for chemotherapy of a breast cancer patient. This profile is in alignment with mCODE."
* medication[x] only CodeableConcept 
* medication[x] from ChemoTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* reasonCode from TherapyIntentVS (required)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* medication[x] and subject and dispenseRequest.validityPeriod and reasonCode and reasonReference MS

Instance: ChemotherapyRequestPatient147
InstanceOf: ChemotherapyRequest
Description: "Example of chemotherapy request of the breast cancer patient received during the last year"
* status = MedicationRequestStatusCS#completed
* intent = MedicationRequestIntentCS#order
* medicationCodeableConcept = NullFlavor#OTH "other"
* subject = Reference(BreastCancerPatient147)
* reasonCode = SCT#373846009 "Adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* dispenseRequest.validityPeriod.start = "2019-01-09"
* dispenseRequest.validityPeriod.end = "2019-09-04"

Mapping: ChemotherapyRequestToICHOM
Source:	ChemotherapyRequest
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: chemotherapy-request-mapping
Title: "Chemotherapy request to ICHOM set"
Description: "Mapping of chemotherapy request to the ICHOM breast cancer PCOM set" 	
* dispenseRequest.validityPeriod.start -> "Chemotherapy start date" 
* dispenseRequest.validityPeriod.end -> "Chemotherapy stop date" 
* medication[x] -> "Type of chemotherapy"
* reasonCode -> "Chemotherapy"

// HORMONAL THERAPY
Profile: Hormonaltherapy
Parent: MedicationAdministration
Id: hormonaltherapy-medication-administration
Title: "Hormonal therapy"
Description: "Represents if the patient received hormonal therapy during the last year. This profile is in alignment with mCODE."
* medication[x] only CodeableConcept 
* medication[x] from HormonalTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* reasonCode from TherapyIntentVS (required)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* medication[x] and subject and effectivePeriod and reasonCode and reasonReference MS

Instance: HormonaltherapyPatient147
InstanceOf: Hormonaltherapy
Description: "Example of hormonal therapy in a breast cancer patient"
* status = MedicationAdministrationStatusCS#completed
* medicationCodeableConcept = SCT#83152002 "Oophorectomy"
* subject = Reference(BreastCancerPatient147)
* reasonCode = SCT#373847000 "Neo-adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* effectivePeriod.start = "2020-10-06"
* effectivePeriod.end = "2021-06-04"

Mapping: HormonaltherapyToICHOM
Source:	Hormonaltherapy
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: hormonaltherapy-mapping
Title: "Hormonal therapy to ICHOM set"
Description: "Mapping of hormonal therapy to the ICHOM breast cancer PCOM set" 	
* effectivePeriod.start -> "Start of hormonal therapy" 
* effectivePeriod.end -> "Stop of hormonal therapy" 
* medication[x] -> "Type of hormonal therapy"
* reasonCode -> "Hormonal therapy"

Profile: HormonaltherapyRequest
Parent: MedicationRequest
Id: hormonaltherapy-medication-request
Title: "Hormonal therapy request"
Description: "Represents the order or request for hormonal therapy of a breast cancer patient. This profile is in alignment with mCODE."
* medication[x] only CodeableConcept 
* medication[x] from HormonalTherapyTypeVS (preferred)
* subject only Reference(BreastCancerPatient)
* reasonCode from TherapyIntentVS (required)
* reasonReference only Reference (PrimaryBreastCancerCondition)
* medication[x] and subject and dispenseRequest.validityPeriod and reasonCode and reasonReference MS

Instance: HormonaltherapyRequestPatient147
InstanceOf: HormonaltherapyRequest
Description: "Example of a hormonal therapy request in a breast cancer patient"
* status = MedicationRequestStatusCS#completed
* intent = MedicationRequestIntentCS#order
* medicationCodeableConcept = SCT#8315200 "Oophorectomy"
* subject = Reference(BreastCancerPatient147)
* reasonCode = SCT#373847000 "Neo-adjuvant - intent"
* reasonReference = Reference(PrimaryBreastCancerPatient147)
* dispenseRequest.validityPeriod.start = "2020-10-06"
* dispenseRequest.validityPeriod.end = "2021-06-04"

Mapping: HormonaltherapyRequestToICHOM
Source:	HormonaltherapyRequest
Target: "https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer"
Id: hormonal-therapy-request-mapping
Title: "Hormonal therapy request to ICHOM set"
Description: "Mapping of hormonal therapy request to the ICHOM breast cancer PCOM set" 	
* dispenseRequest.validityPeriod.start -> "Start of hormonal therapy" 
* dispenseRequest.validityPeriod.end -> "Stop of hormonal therapy" 
* medication[x] -> "Type of hormonal therapy"
* reasonCode -> "Hormonal therapy"



// TARGETED THERAPY






// REOPERATION




// SYSTEMIC THERAPY





// TreatmentPlanFollowed	

















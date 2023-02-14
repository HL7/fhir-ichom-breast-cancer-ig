// // Clinical Response at baseline
// Instance: DebugBundleClinical-01-Baseline
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle the clinical response at baseline"
// Description: "Bundle of all valuesystems and questionnaires related to the clinical response at baseline"
// * type = #transaction

// * entry[+]
//   * request.url = "ValueSet/LateralityVS"
//   * request.method = #PUT
//   * resource = LateralityVS

// * entry[+]
//   * request.url = "ValueSet/NoYesUnknownVS"
//   * request.method = #PUT
//   * resource = NoYesUnknownVS

// * entry[+]
//   * request.url = "ValueSet/LateralityNewCancerVS"
//   * request.method = #PUT
//   * resource = LateralityNewCancerVS

// * entry[+]
//   * request.url = "ValueSet/HistologicalTypeVS"
//   * request.method = #PUT
//   * resource = HistologicalTypeVS

// * entry[+]
//   * request.url = "ValueSet/GermlineMutationVS"
//   * request.method = #PUT
//   * resource = GermlineMutationVS

// * entry[+]
//   * request.url = "ValueSet/GradingVS"
//   * request.method = #PUT
//   * resource = GradingVS

// * entry[+]
//   * request.url = "ValueSet/TNMPrimaryTumorVS"
//   * request.method = #PUT
//   * resource = TNMPrimaryTumorVS

// * entry[+]
//   * request.url = "ValueSet/TNMRegionalNodesVS"
//   * request.method = #PUT
//   * resource = TNMRegionalNodesVS

// * entry[+]
//   * request.url = "ValueSet/TNMDistantMetastasesVS"
//   * request.method = #PUT
//   * resource = TNMDistantMetastasesVS

// * entry[+]
//   * request.url = "ValueSet/EstrogenStatusVS"
//   * request.method = #PUT
//   * resource = EstrogenStatusVS

// * entry[+]
//   * request.url = "ValueSet/ProgesteroneStatusVS"
//   * request.method = #PUT
//   * resource = ProgesteroneStatusVS

// * entry[+]
//   * request.url = "ValueSet/HER2ReceptorStatusVS"
//   * request.method = #PUT
//   * resource = HER2ReceptorStatusVS

// * entry[+]
//   * request.url = "CodeSystem/MolecularProfilingCodeSystem"
//   * request.method = #PUT
//   * resource = MolecularProfilingCodeSystem

// * entry[+]
//   * request.url = "ValueSet/MolecularProfilingStatusVS"
//   * request.method = #PUT
//   * resource = MolecularProfilingStatusVS

// * entry[+]
//   * request.url = "ValueSet/RecommendedTreatmentTypeVS"
//   * request.method = #PUT
//   * resource = RecommendedTreatmentTypeVS

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseBaseline"
//   * request.method = #PUT
//   * resource = ClinicalResponseBaseline

// // Clinical Response at 6 months follow-up
// Instance: DebugBundleClinical-02-SixMonths
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of the clinical response at 6 months follow-up"
// Description: "Bundle of all valuesystems and questionnaires related to the clinical response at 6 months follow-up"
// * type = #transaction

// * entry[+]
//   * request.url = "ValueSet/TNMPrimaryTumorVS"
//   * request.method = #PUT
//   * resource = TNMPrimaryTumorVS
// * entry[+]
//   * request.url = "ValueSet/TNMRegionalNodesVS"
//   * request.method = #PUT
//   * resource = TNMRegionalNodesVS
// * entry[+]
//   * request.url = "ValueSet/TNMDistantMetastasesVS"
//   * request.method = #PUT
//   * resource = TNMDistantMetastasesVS

// * entry[+]
//   * request.url = "CodeSystem/TreatmentTypesCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentTypesCodeSystem

// * entry[+]
//   * request.url = "ValueSet/TreatmentTypeVS"
//   * request.method = #PUT
//   * resource = TreatmentTypeVS

// * entry[+]
//   * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypesCodeSystem

// * entry[+]
//   * request.url = "ValueSet/BreastSurgeryTypeVS"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypeVS

// * entry[+]
//   * request.url = "ValueSet/AxillaSurgeryVS"
//   * request.method = #PUT
//   * resource = AxillaSurgeryVS

// * entry[+]
//   * request.url = "ValueSet/NoYesUnknownVS"
//   * request.method = #PUT
//   * resource = NoYesUnknownVS

// * entry[+]
//   * request.url = "CodeSystem/ReconstructionTypeCodeSystem"
//   * request.method = #PUT
//   * resource = ReconstructionTypeCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ReconstructionTypeVS"
//   * request.method = #PUT
//   * resource = ReconstructionTypeVS

// * entry[+]
//   * request.url = "CodeSystem/ImplantLocationCodeSystem"
//   * request.method = #PUT
//   * resource = ImplantLocationCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ImplantLocationVS"
//   * request.method = #PUT
//   * resource = ImplantLocationVS

// * entry[+]
//   * request.url = "ValueSet/TherapyIntentVS"
//   * request.method = #PUT
//   * resource = TherapyIntentVS

// * entry[+]
//   * request.url = "ValueSet/LocationRadiotherapyVS"
//   * request.method = #PUT
//   * resource = LocationRadiotherapyVS

// * entry[+]
//   * request.url = "ValueSet/ChemoTherapyTypeVS"
//   * request.method = #PUT
//   * resource = ChemoTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/HormonalTherapyTypeVS"
//   * request.method = #PUT
//   * resource = HormonalTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/TargetedTherapyVS"
//   * request.method = #PUT
//   * resource = TargetedTherapyVS
  
// * entry[+]
//   * request.url = "ValueSet/ReoperationTypeVS"
//   * request.method = #PUT
//   * resource = ReoperationTypeVS

// * entry[+]
//   * request.url = "ValueSet/InvolvedMarginsReoperationTypeVS"
//   * request.method = #PUT
//   * resource = InvolvedMarginsReoperationTypeVS

// * entry[+]
//   * request.url = "CodeSystem/ComplicationImpactCodeSystem"
//   * request.method = #PUT
//   * resource = ComplicationImpactCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ComplicationImpactVS"
//   * request.method = #PUT
//   * resource = ComplicationImpactVS

// * entry[+]
//   * request.url = "CodeSystem/ComplicationTypeCodeSystem"
//   * request.method = #PUT
//   * resource = ComplicationTypeCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ComplicationTypeVS"
//   * request.method = #PUT
//   * resource = ComplicationTypeVS

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseSixMonths"
//   * request.method = #PUT
//   * resource = ClinicalResponseSixMonths

// // Clinical Response at annual follow-up
// Instance: DebugBundleClinical-03-Annual
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of the clinical response at annual follow-up"
// Description: "Bundle of all valuesystems and questionnaires related to the clinical response at annual follow-up"
// * type = #transaction

// * entry[+]
//   * request.url = "ValueSet/GermlineMutationVS"
//   * request.method = #PUT
//   * resource = GermlineMutationVS

// * entry[+]
//   * request.url = "CodeSystem/TreatmentTypesCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentTypesCodeSystem

// * entry[+]
//   * request.url = "ValueSet/TreatmentTypeVS"
//   * request.method = #PUT
//   * resource = TreatmentTypeVS

// * entry[+]
//   * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypesCodeSystem

// * entry[+]
//   * request.url = "ValueSet/BreastSurgeryTypeVS"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypeVS

// * entry[+]
//   * request.url = "ValueSet/AxillaSurgeryVS"
//   * request.method = #PUT
//   * resource = AxillaSurgeryVS

// * entry[+]
//   * request.url = "ValueSet/NoYesUnknownVS"
//   * request.method = #PUT
//   * resource = NoYesUnknownVS

// * entry[+]
//   * request.url = "CodeSystem/ReconstructionTypeCodeSystem"
//   * request.method = #PUT
//   * resource = ReconstructionTypeCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ReconstructionTypeVS"
//   * request.method = #PUT
//   * resource = ReconstructionTypeVS

// * entry[+]
//   * request.url = "CodeSystem/ImplantLocationCodeSystem"
//   * request.method = #PUT
//   * resource = ImplantLocationCodeSystem

// * entry[+]
//   * request.url = "ValueSet/ImplantLocationVS"
//   * request.method = #PUT
//   * resource = ImplantLocationVS

// * entry[+]
//   * request.url = "ValueSet/TherapyIntentVS"
//   * request.method = #PUT
//   * resource = TherapyIntentVS

// * entry[+]
//   * request.url = "ValueSet/LocationRadiotherapyVS"
//   * request.method = #PUT
//   * resource = LocationRadiotherapyVS

// * entry[+]
//   * request.url = "ValueSet/ChemoTherapyTypeVS"
//   * request.method = #PUT
//   * resource = ChemoTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/HormonalTherapyTypeVS"
//   * request.method = #PUT
//   * resource = HormonalTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/TargetedTherapyVS"
//   * request.method = #PUT
//   * resource = TargetedTherapyVS
  
// * entry[+]
//   * request.url = "ValueSet/ReoperationTypeVS"
//   * request.method = #PUT
//   * resource = ReoperationTypeVS

// * entry[+]
//   * request.url = "CodeSystem/RecurrenceCodeSystem"
//   * request.method = #PUT
//   * resource = RecurrenceCodeSystem

// * entry[+]
//   * request.url = "ValueSet/RecurrenceVS"
//   * request.method = #PUT
//   * resource = RecurrenceVS
  
// * entry[+]
//   * request.url = "CodeSystem/RecurrenceMethodCodeSystem"
//   * request.method = #PUT
//   * resource = RecurrenceMethodCodeSystem

// * entry[+]
//   * request.url = "ValueSet/RecurrenceMethodVS"
//   * request.method = #PUT
//   * resource = RecurrenceMethodVS

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseAnnualUpdate"
//   * request.method = #PUT
//   * resource = ClinicalResponseAnnualUpdate

// // BaselinePatientReported
// Instance: DebugBundlePatient-01-Baseline
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of the patient response at baseline"
// Description: "Bundle of all valuesystems and questionnaires related to the patient response at baseline"
// * type = #transaction

// * entry[+]
//   * request.url = "ValueSet/SACQPatientComorbidityHistory"
//   * request.method = #PUT
//   * resource = SACQPatientComorbidityHistory

// * entry[+]
//   * request.url = "CodeSystem/AgreementResponseCodeSystem"
//   * request.method = #PUT
//   * resource = AgreementResponseCodeSystem

// * entry[+]
//   * request.url = "ValueSet/AgreementResponseVS"
//   * request.method = #PUT
//   * resource = AgreementResponseVS

// * entry[+]
//   * request.url = "CodeSystem/SatisfactionResponseCodeSystem"
//   * request.method = #PUT
//   * resource = SatisfactionResponseCodeSystem

// * entry[+]
//   * request.url = "ValueSet/SatisfactionResponseVS"
//   * request.method = #PUT
//   * resource = SatisfactionResponseVS 

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedBaseline"
//   * request.method = #PUT
//   * resource = PatientReportedBaseline

// // FollowUpPatientReported
// Instance: DebugBundlePatient-02-Follow-Up
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of the patient response during post-treatment follow-up"
// Description: "Bundle of all valuesystems and questionnaires related to the patient response during post-treatment follow-up"
// * type = #transaction

// * entry[+]
//   * request.url = "CodeSystem/AgreementResponseCodeSystem"
//   * request.method = #PUT
//   * resource = AgreementResponseCodeSystem

// * entry[+]
//   * request.url = "ValueSet/AgreementResponseVS"
//   * request.method = #PUT
//   * resource = AgreementResponseVS

// * entry[+]
//   * request.url = "CodeSystem/SatisfactionResponseCodeSystem"
//   * request.method = #PUT
//   * resource = SatisfactionResponseCodeSystem

// * entry[+]
//   * request.url = "ValueSet/SatisfactionResponseVS"
//   * request.method = #PUT
//   * resource = SatisfactionResponseVS 

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedFollowUp"
//   * request.method = #PUT
//   * resource = PatientReportedFollowUp


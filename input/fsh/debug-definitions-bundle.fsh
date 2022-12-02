// // Bundle containing all definitions from the ICHOM's IG

// // created from output/ImplementationGuide-hl7.fhir.uv.ichom-breast-cancer.json using regex:
// // \{\n +"reference": \{\n +"reference": "(\w+)\/(.+)"\n.+\n.+\n.+\n.+\n.+
// // with replacement:
// // * entry[+]
// //   * request.url = "$1/$2"
// //   * request.method = #PUT
// //   * resource = $2

// Instance: DebugBundleDefinitions
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of all the definitions in the IG"
// Description: "Bundle of all the conformance resources in the IG"
// // batch as some servers have a limit on the number of transactions possible
// * type = #batch

// * entry[+]
//   * request.url = "StructureDefinition/axilla-surgery"
//   * request.method = #PUT
//   * resource = axilla-surgery

// * entry[+]
//   * request.url = "StructureDefinition/axillary-clearance"
//   * request.method = #PUT
//   * resource = axillary-clearance

// * entry[+]
//   * request.url = "StructureDefinition/best-supportive-care"
//   * request.method = #PUT
//   * resource = best-supportive-care

// * entry[+]
//   * request.url = "StructureDefinition/ichom-body-height"
//   * request.method = #PUT
//   * resource = ichom-body-height

// * entry[+]
//   * request.url = "StructureDefinition/ichom-body-weight"
//   * request.method = #PUT
//   * resource = ichom-body-weight

// * entry[+]
//   * request.url = "StructureDefinition/patient"
//   * request.method = #PUT
//   * resource = patient

// * entry[+]
//   * request.url = "StructureDefinition/breast-cancer-stage-group"
//   * request.method = #PUT
//   * resource = breast-cancer-stage-group

// * entry[+]
//   * request.url = "StructureDefinition/breast-cancer-surgery"
//   * request.method = #PUT
//   * resource = breast-cancer-surgery

// * entry[+]
//   * request.url = "StructureDefinition/death-attr-bc"
//   * request.method = #PUT
//   * resource = death-attr-bc

// * entry[+]
//   * request.url = "StructureDefinition/chemotherapy"
//   * request.method = #PUT
//   * resource = chemotherapy

// * entry[+]
//   * request.url = "StructureDefinition/complication"
//   * request.method = #PUT
//   * resource = complication

// * entry[+]
//   * request.url = "StructureDefinition/er-status"
//   * request.method = #PUT
//   * resource = er-status

// * entry[+]
//   * request.url = "StructureDefinition/endopredicton-score"
//   * request.method = #PUT
//   * resource = endopredicton-score

// * entry[+]
//   * request.url = "StructureDefinition/germline-mutation"
//   * request.method = #PUT
//   * resource = germline-mutation

// * entry[+]
//   * request.url = "StructureDefinition/her-status"
//   * request.method = #PUT
//   * resource = her-status

// * entry[+]
//   * request.url = "StructureDefinition/histo-type"
//   * request.method = #PUT
//   * resource = histo-type

// * entry[+]
//   * request.url = "StructureDefinition/hormonal-therpay"
//   * request.method = #PUT
//   * resource = hormonal-therpay

// * entry[+]
//   * request.url = "StructureDefinition/immunotherapy"
//   * request.method = #PUT
//   * resource = immunotherapy

// * entry[+]
//   * request.url = "StructureDefinition/invasion-grade"
//   * request.method = #PUT
//   * resource = invasion-grade

// * entry[+]
//   * request.url = "StructureDefinition/involved-margins-reoperation"
//   * request.method = #PUT
//   * resource = involved-margins-reoperation

// * entry[+]
//   * request.url = "StructureDefinition/lymph-nodes-involved"
//   * request.method = #PUT
//   * resource = lymph-nodes-involved

// * entry[+]
//   * request.url = "StructureDefinition/lymph-nodes-resected"
//   * request.method = #PUT
//   * resource = lymph-nodes-resected

// * entry[+]
//   * request.url = "StructureDefinition/mammaprint-score"
//   * request.method = #PUT
//   * resource = mammaprint-score

// * entry[+]
//   * request.url = "StructureDefinition/menopausal-status"
//   * request.method = #PUT
//   * resource = menopausal-status

// * entry[+]
//   * request.url = "StructureDefinition/oncotype-score"
//   * request.method = #PUT
//   * resource = oncotype-score

// * entry[+]
//   * request.url = "StructureDefinition/pr-status"
//   * request.method = #PUT
//   * resource = pr-status

// * entry[+]
//   * request.url = "StructureDefinition/primary-breastcancer"
//   * request.method = #PUT
//   * resource = primary-breastcancer

// * entry[+]
//   * request.url = "StructureDefinition/radiotherapy"
//   * request.method = #PUT
//   * resource = radiotherapy

// * entry[+]
//   * request.url = "StructureDefinition/reconstruction-surgery"
//   * request.method = #PUT
//   * resource = reconstruction-surgery

// * entry[+]
//   * request.url = "StructureDefinition/recr-method"
//   * request.method = #PUT
//   * resource = recr-method

// * entry[+]
//   * request.url = "StructureDefinition/reoperation-surgery"
//   * request.method = #PUT
//   * resource = reoperation-surgery

// * entry[+]
//   * request.url = "StructureDefinition/secondary-breastcancer"
//   * request.method = #PUT
//   * resource = secondary-breastcancer

// * entry[+]
//   * request.url = "StructureDefinition/tnm-distant-metastases"
//   * request.method = #PUT
//   * resource = tnm-distant-metastases

// * entry[+]
//   * request.url = "StructureDefinition/tnm-primary-tumor-stage"
//   * request.method = #PUT
//   * resource = tnm-primary-tumor-stage

// * entry[+]
//   * request.url = "StructureDefinition/tnm-regional-nodes-stage"
//   * request.method = #PUT
//   * resource = tnm-regional-nodes-stage

// * entry[+]
//   * request.url = "StructureDefinition/targeted-therapy"
//   * request.method = #PUT
//   * resource = targeted-therapy

// * entry[+]
//   * request.url = "StructureDefinition/treatment-plan"
//   * request.method = #PUT
//   * resource = treatment-plan

// * entry[+]
//   * request.url = "StructureDefinition/treatment-plan-followed"
//   * request.method = #PUT
//   * resource = treatment-plan-followed

// * entry[+]
//   * request.url = "StructureDefinition/treatment-plan-not-followed"
//   * request.method = #PUT
//   * resource = treatment-plan-not-followed

// * entry[+]
//   * request.url = "StructureDefinition/tumor-grade"
//   * request.method = #PUT
//   * resource = tumor-grade

// * entry[+]
//   * request.url = "StructureDefinition/sizeinvasivetumor"
//   * request.method = #PUT
//   * resource = sizeinvasivetumor

// * entry[+]
//   * request.url = "StructureDefinition/EducationLevel"
//   * request.method = #PUT
//   * resource = EducationLevel

// * entry[+]
//   * request.url = "StructureDefinition/Ethnicity"
//   * request.method = #PUT
//   * resource = Ethnicity

// * entry[+]
//   * request.url = "StructureDefinition/Race"
//   * request.method = #PUT
//   * resource = Race

// * entry[+]
//   * request.url = "ValueSet/AxillaSurgeryVS"
//   * request.method = #PUT
//   * resource = AxillaSurgeryVS

// * entry[+]
//   * request.url = "ValueSet/BodyWeightVS"
//   * request.method = #PUT
//   * resource = BodyWeightVS

// * entry[+]
//   * request.url = "ValueSet/BreastQValueSet"
//   * request.method = #PUT
//   * resource = BreastQValueSet

// * entry[+]
//   * request.url = "ValueSet/BreastSurgeryTypeVS"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypeVS

// * entry[+]
//   * request.url = "ValueSet/ChemoTherapyTypeVS"
//   * request.method = #PUT
//   * resource = ChemoTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/ComplicationImpactVS"
//   * request.method = #PUT
//   * resource = ComplicationImpactVS

// * entry[+]
//   * request.url = "ValueSet/ComplicationTypeVS"
//   * request.method = #PUT
//   * resource = ComplicationTypeVS

// * entry[+]
//   * request.url = "ValueSet/EORTCQLQValueSet"
//   * request.method = #PUT
//   * resource = EORTCQLQValueSet

// * entry[+]
//   * request.url = "ValueSet/EducationLevelVS"
//   * request.method = #PUT
//   * resource = EducationLevelVS

// * entry[+]
//   * request.url = "ValueSet/EstrogenStatusVS"
//   * request.method = #PUT
//   * resource = EstrogenStatusVS

// * entry[+]
//   * request.url = "ValueSet/FACTESValueSet"
//   * request.method = #PUT
//   * resource = FACTESValueSet

// * entry[+]
//   * request.url = "ValueSet/GermlineMutationVS"
//   * request.method = #PUT
//   * resource = GermlineMutationVS

// * entry[+]
//   * request.url = "ValueSet/GradingVS"
//   * request.method = #PUT
//   * resource = GradingVS

// * entry[+]
//   * request.url = "ValueSet/HER2ReceptorStatusVS"
//   * request.method = #PUT
//   * resource = HER2ReceptorStatusVS

// * entry[+]
//   * request.url = "ValueSet/HistologicalTypeVS"
//   * request.method = #PUT
//   * resource = HistologicalTypeVS

// * entry[+]
//   * request.url = "ValueSet/HormonalTherapyTypeVS"
//   * request.method = #PUT
//   * resource = HormonalTherapyTypeVS

// * entry[+]
//   * request.url = "ValueSet/ImplantLocationVS"
//   * request.method = #PUT
//   * resource = ImplantLocationVS

// * entry[+]
//   * request.url = "ValueSet/InvolvedMarginsReoperationTypeVS"
//   * request.method = #PUT
//   * resource = InvolvedMarginsReoperationTypeVS

// * entry[+]
//   * request.url = "ValueSet/LateralityNewCancerVS"
//   * request.method = #PUT
//   * resource = LateralityNewCancerVS

// * entry[+]
//   * request.url = "ValueSet/LateralityVS"
//   * request.method = #PUT
//   * resource = LateralityVS

// * entry[+]
//   * request.url = "ValueSet/LocationRadiotherapyVS"
//   * request.method = #PUT
//   * resource = LocationRadiotherapyVS

// * entry[+]
//   * request.url = "ValueSet/MenopausalStatusVS"
//   * request.method = #PUT
//   * resource = MenopausalStatusVS

// * entry[+]
//   * request.url = "ValueSet/NoYesUnknownVS"
//   * request.method = #PUT
//   * resource = NoYesUnknownVS

// * entry[+]
//   * request.url = "ValueSet/PatientTreatPrefVS"
//   * request.method = #PUT
//   * resource = PatientTreatPrefVS

// * entry[+]
//   * request.url = "ValueSet/ProgesteroneStatusVS"
//   * request.method = #PUT
//   * resource = ProgesteroneStatusVS

// * entry[+]
//   * request.url = "ValueSet/RecommendedTreatmentTypeVS"
//   * request.method = #PUT
//   * resource = RecommendedTreatmentTypeVS

// * entry[+]
//   * request.url = "ValueSet/ReconstructionTypeVS"
//   * request.method = #PUT
//   * resource = ReconstructionTypeVS

// * entry[+]
//   * request.url = "ValueSet/RecurrenceMethodVS"
//   * request.method = #PUT
//   * resource = RecurrenceMethodVS

// * entry[+]
//   * request.url = "ValueSet/RelationshipStatusVS"
//   * request.method = #PUT
//   * resource = RelationshipStatusVS

// * entry[+]
//   * request.url = "ValueSet/ReoperationTypeVS"
//   * request.method = #PUT
//   * resource = ReoperationTypeVS

// * entry[+]
//   * request.url = "ValueSet/SACQPatientComorbidityHistory"
//   * request.method = #PUT
//   * resource = SACQPatientComorbidityHistory

// * entry[+]
//   * request.url = "ValueSet/tnm-distant-metastases-category-vs"
//   * request.method = #PUT
//   * resource = tnm-distant-metastases-category-vs

// * entry[+]
//   * request.url = "ValueSet/tnm-primary-tumor-category-vs"
//   * request.method = #PUT
//   * resource = tnm-primary-tumor-category-vs

// * entry[+]
//   * request.url = "ValueSet/tnm-regional-nodes-category-vs"
//   * request.method = #PUT
//   * resource = tnm-regional-nodes-category-vs

// * entry[+]
//   * request.url = "ValueSet/tnm-stage-group-vs"
//   * request.method = #PUT
//   * resource = tnm-stage-group-vs

// * entry[+]
//   * request.url = "ValueSet/TargetedTherapyVS"
//   * request.method = #PUT
//   * resource = TargetedTherapyVS

// * entry[+]
//   * request.url = "ValueSet/TherapyIntentVS"
//   * request.method = #PUT
//   * resource = TherapyIntentVS

// * entry[+]
//   * request.url = "ValueSet/TreatmentPlanComplianceVS"
//   * request.method = #PUT
//   * resource = TreatmentPlanComplianceVS

// * entry[+]
//   * request.url = "ValueSet/TreatmentPlanFollowedVS"
//   * request.method = #PUT
//   * resource = TreatmentPlanFollowedVS

// * entry[+]
//   * request.url = "ValueSet/TreatmentPlanNotFollowedVS"
//   * request.method = #PUT
//   * resource = TreatmentPlanNotFollowedVS

// * entry[+]
//   * request.url = "ValueSet/TreatmentTypeValueSet"
//   * request.method = #PUT
//   * resource = TreatmentTypeValueSet

// * entry[+]
//   * request.url = "CodeSystem/BreastQCodeSystem"
//   * request.method = #PUT
//   * resource = BreastQCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
//   * request.method = #PUT
//   * resource = BreastSurgeryTypesCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/ComplicationImpactCodeSystem"
//   * request.method = #PUT
//   * resource = ComplicationImpactCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/ComplicationTypeCodeSystem"
//   * request.method = #PUT
//   * resource = ComplicationTypeCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/EORTCQLQCodeSystem"
//   * request.method = #PUT
//   * resource = EORTCQLQCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/FACTESCodeSystem"
//   * request.method = #PUT
//   * resource = FACTESCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/ImplantLocationCodeSystem"
//   * request.method = #PUT
//   * resource = ImplantLocationCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/MolecularProfilingCodeSystem"
//   * request.method = #PUT
//   * resource = MolecularProfilingCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/PatientTreatPrefCodeSystem"
//   * request.method = #PUT
//   * resource = PatientTreatPrefCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/ReconstructionTypeCodeSystem"
//   * request.method = #PUT
//   * resource = ReconstructionTypeCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/RecurrenceMethodCodeSystem"
//   * request.method = #PUT
//   * resource = RecurrenceMethodCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/SACQPatientComorbidityCodeSystem"
//   * request.method = #PUT
//   * resource = SACQPatientComorbidityCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/TreatmentPlanComplianceCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentPlanComplianceCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/TreatmentPlanFollowedCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentPlanFollowedCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/TreatmentPlanNotFollowedCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentPlanNotFollowedCodeSystem

// * entry[+]
//   * request.url = "CodeSystem/TreatmentTypesCodeSystem"
//   * request.method = #PUT
//   * resource = TreatmentTypesCodeSystem

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseAnnualUpdate"
//   * request.method = #PUT
//   * resource = ClinicalResponseAnnualUpdate

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseBaseline"
//   * request.method = #PUT
//   * resource = ClinicalResponseBaseline

// * entry[+]
//   * request.url = "Questionnaire/ClinicalResponseSixMonths"
//   * request.method = #PUT
//   * resource = ClinicalResponseSixMonths

// * entry[+]
//   * request.url = "Bundle/DebugBundleClinical-01-Baseline"
//   * request.method = #PUT
//   * resource = DebugBundleClinical-01-Baseline

// * entry[+]
//   * request.url = "Bundle/DebugBundleClinical-02-SixMonths"
//   * request.method = #PUT
//   * resource = DebugBundleClinical-02-SixMonths

// * entry[+]
//   * request.url = "Bundle/DebugBundleClinical-03-Annual"
//   * request.method = #PUT
//   * resource = DebugBundleClinical-03-Annual

// * entry[+]
//   * request.url = "Bundle/DebugBundlePatient-01-Baseline"
//   * request.method = #PUT
//   * resource = DebugBundlePatient-01-Baseline

// * entry[+]
//   * request.url = "Bundle/DebugBundlePatient-02-SixMonths"
//   * request.method = #PUT
//   * resource = DebugBundlePatient-02-SixMonths

// * entry[+]
//   * request.url = "Bundle/DebugBundlePatient-03-Year1and2"
//   * request.method = #PUT
//   * resource = DebugBundlePatient-03-Year1and2

// * entry[+]
//   * request.url = "Bundle/DebugBundlePatient-04-Year3and4"
//   * request.method = #PUT
//   * resource = DebugBundlePatient-04-Year3and4

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedBaseline"
//   * request.method = #PUT
//   * resource = PatientReportedBaseline

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedSixMonths"
//   * request.method = #PUT
//   * resource = PatientReportedSixMonths

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedYear1and2"
//   * request.method = #PUT
//   * resource = PatientReportedYear1and2

// * entry[+]
//   * request.url = "Questionnaire/PatientReportedYear3and4"
//   * request.method = #PUT
//   * resource = PatientReportedYear3and4

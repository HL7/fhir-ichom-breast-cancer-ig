// // Bundle containing all the examples in the IG
// // backup option for loading all data into a FHIR server in case it does not support FHIR packages

// // created from output/ImplementationGuide-hl7.fhir.uv.ichom.breastcancer.json using regex:
// // \{\n +"reference": \{\n +"reference": "(\w+)\/(.+)"\n.+\n.+\n.+\n.+\n.+
// // with replacement:
// // * entry[+]
// //   * request.url = "$1/$2"
// //   * request.method = #PUT
// //   * resource = $2

// Instance: DebugBundleExamples
// InstanceOf: Bundle
// Usage: #example
// Title: "Bundle of all the examples"
// Description: "Bundle of all the instance resources in the IG"
// // batch as some servers have a limit on the number of transactions possible
// * type = #batch

// * entry[+]
//   * request.url = "Procedure/AxillaSurgeryPatient147"
//   * request.method = #PUT
//   * resource = AxillaSurgeryPatient147

// * entry[+]
//   * request.url = "Procedure/AxillaryClearancePatient147"
//   * request.method = #PUT
//   * resource = AxillaryClearancePatient147

// * entry[+]
//   * request.url = "Procedure/BestSupportiveCarePatient147"
//   * request.method = #PUT
//   * resource = BestSupportiveCarePatient147

// * entry[+]
//   * request.url = "Observation/BodyHeightPatient147"
//   * request.method = #PUT
//   * resource = BodyHeightPatient147

// * entry[+]
//   * request.url = "Observation/BodyWeightPatient147"
//   * request.method = #PUT
//   * resource = BodyWeightPatient147

// * entry[+]
//   * request.url = "Patient/BreastCancerPatient121"
//   * request.method = #PUT
//   * resource = BreastCancerPatient121

// * entry[+]
//   * request.url = "Patient/BreastCancerPatient134"
//   * request.method = #PUT
//   * resource = BreastCancerPatient134

// * entry[+]
//   * request.url = "Patient/BreastCancerPatient147"
//   * request.method = #PUT
//   * resource = BreastCancerPatient147

// * entry[+]
//   * request.url = "Procedure/BreastCancerSurgeryPatient147"
//   * request.method = #PUT
//   * resource = BreastCancerSurgeryPatient147

// * entry[+]
//   * request.url = "Procedure/ChemotherapyPatient147"
//   * request.method = #PUT
//   * resource = ChemotherapyPatient147

// * entry[+]
//   * request.url = "Observation/ClinicalMetastasesPatient147"
//   * request.method = #PUT
//   * resource = ClinicalMetastasesPatient147

// * entry[+]
//   * request.url = "Observation/ClinicalNodalStagePatient147"
//   * request.method = #PUT
//   * resource = ClinicalNodalStagePatient147


// * entry[+]
//   * request.url = "Observation/ClinicalTNMStagePatient147"
//   * request.method = #PUT
//   * resource = ClinicalTNMStagePatient147

// * entry[+]
//   * request.url = "Observation/ClinicalTumorStagePatient147"
//   * request.method = #PUT
//   * resource = ClinicalTumorStagePatient147

// * entry[+]
//   * request.url = "Condition/ComplicationPatient147"
//   * request.method = #PUT
//   * resource = ComplicationPatient147

// * entry[+]
//   * request.url = "Observation/DeathAttributableBCPatient147"
//   * request.method = #PUT
//   * resource = DeathAttributableBCPatient147

// * entry[+]
//   * request.url = "Observation/ERStatusPatient147"
//   * request.method = #PUT
//   * resource = ERStatusPatient147

// * entry[+]
//   * request.url = "Observation/EndopredictonPatient147"
//   * request.method = #PUT
//   * resource = EndopredictonPatient147

// * entry[+]
//   * request.url = "Observation/GermlineMutationPatient147"
//   * request.method = #PUT
//   * resource = GermlineMutationPatient147

// * entry[+]
//   * request.url = "Observation/HERStatusPatient147"
//   * request.method = #PUT
//   * resource = HERStatusPatient147

// * entry[+]
//   * request.url = "Observation/HistotypePatient147"
//   * request.method = #PUT
//   * resource = HistotypePatient147

// * entry[+]
//   * request.url = "Procedure/HormonaltherapyPatient147"
//   * request.method = #PUT
//   * resource = HormonaltherapyPatient147

// * entry[+]
//   * request.url = "Procedure/ImmunotherapyPatient147"
//   * request.method = #PUT
//   * resource = ImmunotherapyPatient147

// * entry[+]
//   * request.url = "Observation/InvasionGradePatient147"
//   * request.method = #PUT
//   * resource = InvasionGradePatient147

// * entry[+]
//   * request.url = "Observation/LymphNodesInvolvedPatient147"
//   * request.method = #PUT
//   * resource = LymphNodesInvolvedPatient147

// * entry[+]
//   * request.url = "Observation/LymphNodesResectedPatient147"
//   * request.method = #PUT
//   * resource = LymphNodesResectedPatient147

// * entry[+]
//   * request.url = "Observation/MammaprintPatient147"
//   * request.method = #PUT
//   * resource = MammaprintPatient147

// * entry[+]
//   * request.url = "Observation/MenopausalStatusPatient147"
//   * request.method = #PUT
//   * resource = MenopausalStatusPatient147

// * entry[+]
//   * request.url = "Observation/OncotypePatient147"
//   * request.method = #PUT
//   * resource = OncotypePatient147

// * entry[+]
//   * request.url = "Observation/PRStatusPatient147"
//   * request.method = #PUT
//   * resource = PRStatusPatient147

// * entry[+]
//   * request.url = "Observation/PathologicalMetastasesPatient147"
//   * request.method = #PUT
//   * resource = PathologicalMetastasesPatient147

// * entry[+]
//   * request.url = "Observation/PathologicalNodalStagePatient147"
//   * request.method = #PUT
//   * resource = PathologicalNodalStagePatient147

// * entry[+]
//   * request.url = "Observation/PathologicalTNMStagePatient147"
//   * request.method = #PUT
//   * resource = PathologicalTNMStagePatient147

// * entry[+]
//   * request.url = "Observation/PathologicalTumorStagePatient147"
//   * request.method = #PUT
//   * resource = PathologicalTumorStagePatient147

// * entry[+]
//   * request.url = "Condition/PrimaryBreastCancerPatient147"
//   * request.method = #PUT
//   * resource = PrimaryBreastCancerPatient147

// * entry[+]
//   * request.url = "Procedure/RadiotherapyPatient147"
//   * request.method = #PUT
//   * resource = RadiotherapyPatient147

// * entry[+]
//   * request.url = "Procedure/ReconstructionSurgeryPatient147"
//   * request.method = #PUT
//   * resource = ReconstructionSurgeryPatient147

// * entry[+]
//   * request.url = "Observation/RecurrenceMethodPatient147"
//   * request.method = #PUT
//   * resource = RecurrenceMethodPatient147

// * entry[+]
//   * request.url = "Procedure/ReoperationPatient147"
//   * request.method = #PUT
//   * resource = ReoperationPatient147

// * entry[+]
//   * request.url = "Procedure/ReoperationSurgeryPatient147"
//   * request.method = #PUT
//   * resource = ReoperationSurgeryPatient147

// * entry[+]
//   * request.url = "Condition/SecondaryBreastCancerPatient147"
//   * request.method = #PUT
//   * resource = SecondaryBreastCancerPatient147

// * entry[+]
//   * request.url = "Procedure/TargetedTherapyPatient134"
//   * request.method = #PUT
//   * resource = TargetedTherapyPatient134

// * entry[+]
//   * request.url = "Observation/TreatmentPlanFollowedPatient147"
//   * request.method = #PUT
//   * resource = TreatmentPlanFollowedPatient147

// * entry[+]
//   * request.url = "Observation/TreatmentPlanNotFollowedPatient147"
//   * request.method = #PUT
//   * resource = TreatmentPlanNotFollowedPatient147

// * entry[+]
//   * request.url = "CarePlan/TreatmentPlanPatient147"
//   * request.method = #PUT
//   * resource = TreatmentPlanPatient147

// * entry[+]
//   * request.url = "Observation/TumorGradePatient147"
//   * request.method = #PUT
//   * resource = TumorGradePatient147

// * entry[+]
//   * request.url = "Observation/TumorSizePatient147"
//   * request.method = #PUT
//   * resource = TumorSizePatient147

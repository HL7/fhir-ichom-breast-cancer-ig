// Clinical Response at baseline
Instance: DebugBundleClinicalBaseline
InstanceOf: Bundle
Usage: #example
Title: "Bundle the clinical response at baseline"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response ate baseline"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSex"
  * request.method = #PUT
  * resource = DemographicFactorsSex

* entry[+]
  * request.url = "Questionnaire/BaselineClinical"
  * request.method = #PUT
  * resource = BaselineClinical


// Clinical Response at 6 months follow-up
Instance: DebugBundleClinical6Months
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the clinical response at 6 months follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response at 6 months follow-up"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/TreatmentTypesCodeSystem"
  * request.method = #PUT
  * resource = TreatmentTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/TreatmentTypeValueSet"
  * request.method = #PUT
  * resource = TreatmentTypeValueSet

* entry[+]
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet

* entry[+]
  * request.url = "CodeSystem/SurgeryAxillaCodeSystem"
  * request.method = #PUT
  * resource = SurgeryAxillaCodeSystem

* entry[+]
  * request.url = "ValueSet/SurgeryAxillaTypeValueSet"
  * request.method = #PUT
  * resource = SurgeryAxillaTypeValueSet  

* entry[+]
  * request.url = "CodeSystem/ReoperationsCodeSystem"
  * request.method = #PUT
  * resource = ReoperationsCodeSystem

* entry[+]
  * request.url = "ValueSet/ReoperationsValueSet"
  * request.method = #PUT
  * resource = ReoperationsValueSet  

* entry[+]
  * request.url = "CodeSystem/InvolvedMarginsCodeSystem"
  * request.method = #PUT
  * resource = InvolvedMarginsCodeSystem

* entry[+]
  * request.url = "ValueSet/InvolvedMarginsValueSet"
  * request.method = #PUT
  * resource = InvolvedMarginsValueSet  

* entry[+]
  * request.url = "CodeSystem/ComplicationImpactCodeSystem"
  * request.method = #PUT
  * resource = ComplicationImpactCodeSystem

* entry[+]
  * request.url = "ValueSet/ComplicationImpactValueSet"
  * request.method = #PUT
  * resource = ComplicationImpactValueSet  

* entry[+]
  * request.url = "Questionnaire/6MonthsClinical"
  * request.method = #PUT
  * resource = 6MonthsClinical

// Clinical Response at 1 year follow-up
Instance: DebugBundleClinical1year
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the clinical response at 1 year follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response at 1 year follow-up"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/TreatmentTypesCodeSystem"
  * request.method = #PUT
  * resource = TreatmentTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/TreatmentTypeValueSet"
  * request.method = #PUT
  * resource = TreatmentTypeValueSet

* entry[+]
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet

* entry[+]
  * request.url = "CodeSystem/SurgeryAxillaCodeSystem"
  * request.method = #PUT
  * resource = SurgeryAxillaCodeSystem

* entry[+]
  * request.url = "ValueSet/SurgeryAxillaTypeValueSet"
  * request.method = #PUT
  * resource = SurgeryAxillaTypeValueSet  

* entry[+]
  * request.url = "CodeSystem/ReoperationsCodeSystem"
  * request.method = #PUT
  * resource = ReoperationsCodeSystem

* entry[+]
  * request.url = "ValueSet/ReoperationsValueSet"
  * request.method = #PUT
  * resource = ReoperationsValueSet  

* entry[+]
  * request.url = "CodeSystem/RecurrenceCodeSystem"
  * request.method = #PUT
  * resource = RecurrenceCodeSystem

* entry[+]
  * request.url = "ValueSet/RecurrenceValueSet"
  * request.method = #PUT
  * resource = RecurrenceValueSet  

* entry[+]
  * request.url = "Questionnaire/1YearClinical"
  * request.method = #PUT
  * resource = 1YearClinical

// Clinical Response at annual follow-up
Instance: DebugBundleClinicalAnnual
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the clinical response at annual follow-up after year 1"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response at annual follow-up after year 1"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/TreatmentTypesCodeSystem"
  * request.method = #PUT
  * resource = TreatmentTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/TreatmentTypeValueSet"
  * request.method = #PUT
  * resource = TreatmentTypeValueSet

* entry[+]
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet

* entry[+]
  * request.url = "CodeSystem/SurgeryAxillaCodeSystem"
  * request.method = #PUT
  * resource = SurgeryAxillaCodeSystem

* entry[+]
  * request.url = "ValueSet/SurgeryAxillaTypeValueSet"
  * request.method = #PUT
  * resource = SurgeryAxillaTypeValueSet  

* entry[+]
  * request.url = "CodeSystem/ReoperationsCodeSystem"
  * request.method = #PUT
  * resource = ReoperationsCodeSystem

* entry[+]
  * request.url = "ValueSet/ReoperationsValueSet"
  * request.method = #PUT
  * resource = ReoperationsValueSet  

* entry[+]
  * request.url = "CodeSystem/RecurrenceCodeSystem"
  * request.method = #PUT
  * resource = RecurrenceCodeSystem

* entry[+]
  * request.url = "ValueSet/RecurrenceValueSet"
  * request.method = #PUT
  * resource = RecurrenceValueSet  

* entry[+]
  * request.url = "Questionnaire/AnnualUpdateClinical"
  * request.method = #PUT
  * resource = AnnualUpdateClinical

// BaselinePatientReported
Instance: DebugBundleBaselinePatient
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at baseline"
Description: "Bundle all valuesystems and questionnaires related to the patient response at baseline"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSex"
  * request.method = #PUT
  * resource = DemographicFactorsSex

* entry[+]
  * request.url = "ValueSet/DemographicFactorsCountry"
  * request.method = #PUT
  * resource = DemographicFactorsCountry

* entry[+]
  * request.url = "ValueSet/DemographicFactorsEthnicity"
  * request.method = #PUT
  * resource = DemographicFactorsEthnicity
  
* entry[+]
  * request.url = "ValueSet/DemographicFactorsRace"
  * request.method = #PUT
  * resource = DemographicFactorsRace  

* entry[+]
  * request.url = "CodeSystem/SACQPatientComorbidityCodeSystem"
  * request.method = #PUT
  * resource = SACQPatientComorbidityCodeSystem

* entry[+]
  * request.url = "ValueSet/SACQPatientComorbidityHistory"
  * request.method = #PUT
  * resource = SACQPatientComorbidityHistory

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/BreastQCodeSystem"
  * request.method = #PUT
  * resource = BreastQCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastQValueSet"
  * request.method = #PUT
  * resource = BreastQValueSet 

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/BaselinePatientReported"
  * request.method = #PUT
  * resource = BaselinePatientReported

// 6MonthsPatientReported
Instance: DebugBundlePatient6Months
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at 6 months follow-up"
Description: "Bundle all valuesystems and questionnaires related to the patient response at 6 months follow-up"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/6MonthsPatientReported"
  * request.method = #PUT
  * resource = 6MonthsPatientReported

// 1YearPatientReported
Instance: DebugBundlePatientYear1and2
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at 1 and 2 years follow-up"
Description: "Bundle all valuesystems and questionnaires related to the patient response at 1 and 2 years follow-up"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/BreastQCodeSystem"
  * request.method = #PUT
  * resource = BreastQCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastQValueSet"
  * request.method = #PUT
  * resource = BreastQValueSet 

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/Year1and2PatientReported"
  * request.method = #PUT
  * resource = Year1and2PatientReported

// AnnulPatientReported
Instance: DebugBundlePatientAnnual
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at annual follow-up after two years"
Description: "Bundle all valuesystems and questionnaires related to the patient response at annual follow-up"
* type = #transaction

* entry[+]
  * request.url = "CodeSystem/EORTCQLQCodeSystem"
  * request.method = #PUT
  * resource = EORTCQLQCodeSystem

* entry[+]
  * request.url = "ValueSet/EORTCQLQValueSet"
  * request.method = #PUT
  * resource = EORTCQLQValueSet

* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/AnnualUpdatePatientReported"
  * request.method = #PUT
  * resource = AnnualUpdatePatientReported
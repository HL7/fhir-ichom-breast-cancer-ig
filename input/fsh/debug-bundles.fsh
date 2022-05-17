// Clinical Response at baseline
Instance: DebugBundleClinical-01-Baseline
InstanceOf: Bundle
Usage: #example
Title: "Bundle the clinical response at baseline"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response at baseline"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSexAtBirth"
  * request.method = #PUT
  * resource = DemographicFactorsSexAtBirth

* entry[+]
  * request.url = "Questionnaire/ClinicalResponseBaseline"
  * request.method = #PUT
  * resource = ClinicalResponseBaseline

// Clinical Response at 6 months follow-up
Instance: DebugBundleClinical-02-SixMonths
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
  * request.url = "ValueSet/YesNoUnknownValueSet"
  * request.method = #PUT
  * resource = YesNoUnknownValueSet

* entry[+]
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet

* entry[+]
  * request.url = "Questionnaire/ClinicalResponseSixMonths"
  * request.method = #PUT
  * resource = ClinicalResponseSixMonths

// Clinical Response at annual follow-up
Instance: DebugBundleClinical-03-Annual
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the clinical response at annual follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the clinical response at annual follow-up"
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
  * request.url = "ValueSet/YesNoUnknownValueSet"
  * request.method = #PUT
  * resource = YesNoUnknownValueSet

* entry[+]
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet

* entry[+]
  * request.url = "Questionnaire/ClinicalResponseAnnualUpdate"
  * request.method = #PUT
  * resource = ClinicalResponseAnnualUpdate

// BaselinePatientReported
Instance: DebugBundlePatient-01-Baseline
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at baseline"
Description: "Bundle of all valuesystems and questionnaires related to the patient response at baseline"
* type = #transaction

* entry[+]
  * request.url = "ValueSet/DemographicFactorsSexAtBirth"
  * request.method = #PUT
  * resource = DemographicFactorsSexAtBirth

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
  * request.url = "Questionnaire/PatientReportedBaseline"
  * request.method = #PUT
  * resource = PatientReportedBaseline

// 6MonthsPatientReported
Instance: DebugBundlePatient-02-SixMonths
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at 6 months follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the patient response at 6 months follow-up"
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
  * request.url = "Questionnaire/PatientReportedSixMonths"
  * request.method = #PUT
  * resource = PatientReportedSixMonths

// Year1and2PatientReported
Instance: DebugBundlePatient-03-Year1and2
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at 1 and 2 years of follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the patient response at 1 and 2 years of follow-up"
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
  * request.url = "CodeSystem/BreastSurgeryTypesCodeSystem"
  * request.method = #PUT
  * resource = BreastSurgeryTypesCodeSystem

* entry[+]
  * request.url = "ValueSet/BreastSurgeryTypeValueSet"
  * request.method = #PUT
  * resource = BreastSurgeryTypeValueSet
* entry[+]
  * request.url = "CodeSystem/FACTESCodeSystem"
  * request.method = #PUT
  * resource = FACTESCodeSystem

* entry[+]
  * request.url = "ValueSet/FACTESValueSet"
  * request.method = #PUT
  * resource = FACTESValueSet

* entry[+]
  * request.url = "Questionnaire/PatientReportedYear1and2"
  * request.method = #PUT
  * resource = PatientReportedYear1and2

// AnnulPatientReported
Instance: DebugBundlePatient-04-Year3and4
InstanceOf: Bundle
Usage: #example
Title: "Bundle of the patient response at 3 and 4 years of follow-up"
Description: "Bundle of all valuesystems and questionnaires related to the patient response at 3 and 4 years of follow-up"
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
  * request.url = "Questionnaire/PatientReportedYear3and4"
  * request.method = #PUT
  * resource = PatientReportedYear3and4
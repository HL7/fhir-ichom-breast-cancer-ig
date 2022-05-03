// Code Systems
Alias:   LNC = http://loinc.org
Alias:   SCT = http://snomed.info/sct
Alias:   UCUM = http://unitsofmeasure.org
Alias:   MTH = http://ncimeta.nci.nih.gov
Alias:   ICD10CM = http://hl7.org/fhir/sid/icd-10-cm 
Alias:   RXN = http://www.nlm.nih.gov/research/umls/rxnorm
Alias:   CPT = http://www.ama-assn.org/go/cpt
Alias:   ICD10PCS = http://www.nlm.nih.gov/research/umls/icd10pcs
Alias:   AJCC = http://cancerstaging.org
Alias:   GTR = http://www.ncbi.nlm.nih.gov/gtr
Alias:   CLINVAR = http://www.ncbi.nlm.nih.gov/clinvar
Alias:   IDTYPE = http://terminology.hl7.org/CodeSystem/v2-0203
Alias:   HGNC = http://www.genenames.org/geneId
Alias:   HGVS = http://varnomen.hgvs.org
Alias:   SPTY = http://terminology.hl7.org/CodeSystem/v2-0487
Alias:   ClinStatus = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias:   VerStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias:   MedStatus = http://hl7.org/fhir/CodeSystem/medication-statement-status
Alias:   MedCat = http://terminology.hl7.org/CodeSystem/medication-statement-category
Alias:   ObsCat = http://terminology.hl7.org/CodeSystem/observation-category
Alias:   ObsInt = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias:   DiagnosticService = http://terminology.hl7.org/CodeSystem/v2-0074
// Profiles
Alias:   USCoreCondition = http://hl7.org/fhir/us/core/StructureDefinition/us-core-condition
Alias:   USCoreDiagnosticReportLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-diagnosticreport-lab
Alias:   USCoreDocumentReference = http://hl7.org/fhir/us/core/StructureDefinition/us-core-documentReference
Alias:   USCoreEncounter = http://hl7.org/fhir/us/core/StructureDefinition/us-core-encounter
Alias:   USCoreLocation = http://hl7.org/fhir/us/core/StructureDefinition/us-core-location
Alias:   USCoreMedicationRequest = http://hl7.org/fhir/us/core/StructureDefinition/us-core-medicationrequest
Alias:   USCorePatient = http://hl7.org/fhir/us/core/StructureDefinition/us-core-patient
Alias:   USCorePractitioner = http://hl7.org/fhir/us/core/StructureDefinition/us-core-practitioner
Alias:   USCoreProcedure = http://hl7.org/fhir/us/core/StructureDefinition/us-core-procedure
Alias:   USCoreObservationLab = http://hl7.org/fhir/us/core/StructureDefinition/us-core-observation-lab
Alias:   USCoreOrganization = http://hl7.org/fhir/us/core/StructureDefinition/us-core-organization
// Extensions
Alias:   USCoreBirthSex = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
Alias:   USCoreRace = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
// mCODE
Alias:   PrimaryCancerCondition = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition
Alias:   TNMClinicalStageGroup = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-stage-group
Alias:   TNMClinicalPrimaryTumorCategory = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-primary-tumor-category
Alias:   TNMClinicalDistantMetastasesCategory = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-distant-metastases-category
Alias:   TNMClinicalRegionalNodesCategory = http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-regional-nodes-category


//
// Practitioner
//
Instance: Practitioner01
InstanceOf: USCorePractitioner
Description: "ICHOM Example for Practitioner"
* id = "Practitioner01"
* identifier[NPI].value = "9988776655"
* name.family = "Example"
* name.given = "Medical"
* name.prefix = "Dr."
* gender = #male
* address.use = #home
* address.line = "111 Hospital Drive"
* address.city = "Anytown"
* address.state = "MA"
* address.postalCode = "1122"
* address.country = "US"
* qualification.code = http://terminology.hl7.org/CodeSystem/v2-0360|2.7#MD "Doctor of Medicine"


//
// Patient
//
Instance: patientWithBreastCancer1
InstanceOf: Patient
Description: "Example patient with Breast Cancer (mCODE) for filling up ICHOM Questionnaires"
* id = "ichom-p-1"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-cancer-patient"
* identifier.use = #usual
* identifier.type = http://terminology.hl7.org/CodeSystem/v2-0203#MR "Medical Record Number"
* identifier.system = "http://hospital.example.org"
* identifier.value = "m123"
* name.family = "Example"
* name.given[0] = "Giorgetta"
* name.given[1] = "B."
* contact.telecom[0].system = #phone
* contact.telecom[0].value = "555-555-5555"
* contact.telecom[0].use = #home
* contact.telecom[1].system = #email
* contact.telecom[1].value = "giorgetta.example@example.com"
* gender = #female
* birthDate = "2951-01-20"
* address.line = "1 Street St"
* address.city = "Town"
* address.postalCode = "12345"
* address.country = "US"
* communication.language = urn:ietf:bcp:47#en-US "English (Region=United States)"
* communication.language.text = "English"
* extension[+]
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
  * extension[+]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238|#2163-4 "Canal Zone"
  * extension[+]
    * url = "text"
    * valueString = "Canal Zone"
* extension[+]
  * url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
  * extension[+]
    * url = "text"
    * valueString = "Kluti Kaah"
  * extension[+]
    * url = "detailed"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238|#1774-9 "Kluti Kaah"
  * extension[+]
    * url = "ombCategory"
    * valueCoding = urn:oid:2.16.840.1.113883.6.238|#1002-5 "American Indian or Alaska Native"
* contact
  * relationship = http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype|#HUSB "husband"
  * name[+]
    * given[+] = "Keysel"
    * given[+] = "Y."
    * family = "Example"


Instance: p1Weight
InstanceOf: Observation
Description: "The patient's weight is 53 kg"
* id = "ichom-p1-weight"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/bodyweight"
* status = #final
* subject = Reference(patientWithBreastCancer1)
* category[0]
  * coding[+] = ObsCat#vital-signs "Vital Signs"
* code[+]
  * coding[+] = LNC#29463-7 "Body Weight"
  * coding[+] = LNC#3141-9 "Body weight Measured"
  * coding[+] = SCT#27113001 "Body weight"
* effectiveDateTime = "2016-03-28"
* valueQuantity
  * value = 53
  * unit = "kg"
  * system = UCUM
  * code = #kg

Instance: p1Height
InstanceOf: Observation
Description: "The Patient's height is 168 cm"
* id = "ichom-p1-height"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/bodyheight"
* status = #final
* subject = Reference(patientWithBreastCancer1)
* category[0]
  * coding[+] = ObsCat#vital-signs "Vital Signs"
* code[+]
  * coding[+] = LNC#8302-2 "Body height"
* effectiveDateTime = "2016-03-28"
* valueQuantity
  * value = 168
  * unit = "cm"
  * system = UCUM
  * code = #cm

/*
 * Condition
 */

Instance: BreastCancerCondition01
InstanceOf: PrimaryCancerCondition
Description: "mCODE Primary Cancer Condition for ICHOM Test Patient"
* id = "ichom-p1-primary"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-primary-cancer-condition"
* clinicalStatus = ClinStatus#active "Active"
* verificationStatus = VerStatus#confirmed "Confirmed"
* code = SCT#286896005 "Carcinoma breast - lower, outer quadrant"
* extension[histologyMorphologyBehavior].valueCodeableConcept = SCT#286896005 "Carcinoma breast - lower, outer quadrant"
* bodySite = SCT#767050008 "Structure of lower inner quadrant of left female breast (body structure)"
* bodySite.extension[mcode-laterality-qualifier].valueCodeableConcept[+] = SCT#7771000 "Left (qualifier value)"
* subject = Reference(patientWithBreastCancer1)
* onsetDateTime = "2019-04-01"
* asserter = Reference(Practitioner01)
* stage.summary = AJCC#3C "IIIC"
* stage.assessment = Reference(mCodeTnmClinicalStageGroup)
* category = #problem

Instance: mCodeTnmClinicalStageGroup
InstanceOf: TNMClinicalStageGroup
Description: "mCODE Example for TNM Clinical Stage Group"
* id = "mCodeTnmClinicalStageGroup"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-stage-group"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(patientWithBreastCancer1)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#3C "IIIC"
* code = LNC#21908-9 "Stage group.clinical Cancer"
* hasMember[+] = Reference(tnmPrimaryTumor1)
* hasMember[+] = Reference(tnmRegionalNodes1)
* hasMember[+] = Reference(tnmDistantMetastases1)

Instance: tnmPrimaryTumor1
InstanceOf: TNMClinicalPrimaryTumorCategory
Description: "mCODE Example for TNM Clinical Primary Tumor Category"
* id = "tnmPrimaryTumor1"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-primary-tumor-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(patientWithBreastCancer1)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cT3 "T3"
* code = LNC#21905-5 "Primary tumor.clinical [Class] Cancer"


Instance: tnmRegionalNodes1
InstanceOf: TNMClinicalRegionalNodesCategory
Description: "mCODE Example for TNM Clinical Regional Nodes Category"
* id = "tnmRegionalNodes1"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-regional-nodes-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(patientWithBreastCancer1)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cN3 "N3"
* code = LNC#21906-3 "Regional lymph nodes.clinical [Class] Cancer"

Instance: tnmDistantMetastases1
InstanceOf: TNMClinicalDistantMetastasesCategory
Description: "mCODE Example for TNM Clinical Distant Metastases Category"
* id = "tnmDistantMetastases1"
* meta.profile = "http://hl7.org/fhir/us/mcode/StructureDefinition/mcode-tnm-clinical-distant-metastases-category"
* status = #final "final"
* category = ObsCat#survey "Survey"
* method = MTH#C146985 "AJCC Cancer Staging Manual 8th Edition"
* subject = Reference(patientWithBreastCancer1)
* effectiveDateTime = "2019-04-01"
* valueCodeableConcept = AJCC#cM0 "M0"
* code = LNC#21907-1 "Distant metastases.clinical [Class] Cancer"
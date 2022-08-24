You may notice that this FHIR IG is organized differently than the ICHOM reference guide and data dictionary. This is due to their different focuses or intended uses. The reference guide and data dictionary are meant to describe all of the data elements included in the Set so they are organized by data or variable type (e.g. Demographics, Baseline Clinical Factors). In contrast, this IG is meant to facilitate collection of the data elements. Therefore, it is organized by when when in the patient's care pathway the data is to be collected (e.g. Baseline, 1 year follow-up) and the source of the data (clinical or patient reported). Despite this difference in organization, the data elements with the FHIR IG and ICHOM's reference guide and data dictionary are completely aligned.

*include graphic created by ICHOM here*

### Clinical data points

| Variable ID                      | ITEM                                     | FHIR profile                     |
|:---------------------------------|:-----------------------------------------|:---------------------------------|
| **Demographic factors**          |                                          |                                  |
| Sex                              | Sex                                      | [BreastCancerPatient]            |
| YearOfBirth                      | Year of Birth                            | [BreastCancerPatient]            |
| COUNTRY                          | Country                                  | [BreastCancerPatient]            |
| Ethnicity                        | Ethnicity                                | [BreastCancerPatient]            |
| Race                             | Race                                     | [BreastCancerPatient]            |
| EducationLevel                   | Level of education                       | [BreastCancerPatient]            |
| RelationshipStatus               | Relationship status                      | [BreastCancerPatient]            |
| MENOPAUSE                        | Menopause status                         | [ImplantLocationCodeSystem]      |
| **Baseline clinical factors**    |                                          |                                  |
| HeightValue                      | Body height                              | [BodyHeight]                     |
| HeightUnit                       | Body height units                        | [BodyHeight]                     |
| WeightValue                      | Body weight                              | [BodyWeight]                     |
| WeightUnit                       | Body weight units                        | [BodyWeight]                     |
| LATERAL                          | Laterality                               | [PrimaryBreastCancerCondition]   |
| FIRSTBC                          | First breast cancer                      | [PrimaryBreastCancerCondition]   |
| NEWBC                            |                                          | [SecondaryBreastCancerCondition] |
| **Baseline tumor factors**       |                                          |                                  |
| HistologicalDiagnosisDate        | Date of histological diagnosis           | [FACTESCodeSystem]               |
| HISTOTYPE                        | Histological type                        | [FACTESCodeSystem]               |
| MUTBC                            | Genetic mutation                         | [GermlineMutation]               |
| GRADEINV                         | Invasion grade                           | [InvasionGrade]                  |
| GRADEDCIS                        | Tumor grade                              | [Tumor grade]                    |
| TNMCT\_BREAST                    | Clinical tumor stage                     | [Chemotherapy]                   |
| TNMCN\_BREAST                    | Clinical nodal stage                     | [Chemotherapy]                   |
| TNMCM\_BREAST                    | Clinical distant metastatsis             | [Chemotherapy]                   |
| TNMPT\_BREAST                    | Pathological tumor stage                 | [TNMPrimaryTumorStage]           |
| TNMPN\_BREAST                    | Pathological nodal stage                 | [TNMRegionalNodalStage]          |
| TNMPM\_BREAST                    | Pathological distant metastasis          | [TNMDistantMetastases]           |
| SIZEINV                          | Size of invasive tumor                   | [TumorSize]                      |
| NumLymphNodesResect              | Number lymph nodes resected              | [ImplantLocationCodeSystem]      |
| LYMPHINV\_BREAST                 | Lymph nodes involved                     | [ImplantLocationCodeSystem]      |
| ERSTATUS                         | Estrogen receptor status                 | [EndopredictonScore]             |
| PRSTATUS                         | Progesterone receptor status             | [null]                           |
| HER2STATUS                       | HER2 receptor status                     | [HER2ReceptorStatusVS]           |
| MolecularProfiling               | Molecular profiling                      |                                  |
| Mammaprint                       | Mammaprint score                         | [ImplantLocationCodeSystem]      |
| Oncotype                         | Oncotype Score                           | [OncotypeScore]                  |
| Endopredict                      | Endopredict Score                        | [EndopredictonScore]             |
| MultMeet                         | Multidisciplinary meeting                | [ImplantLocationCodeSystem]      |
| MultRecTreatments                | Multidisciplinary Recommended Treatments | [ImplantLocationCodeSystem]      |
| **Treatment variables**          |                                          |                                  |
| TREATMENT\_BREAST                | Treatment                                |                                  |
| SURGERY\_BREAST                  | Surgery                                  | [BreastCancerPatient]            |
| SurgeryDate                      | Surgery date                             | [BreastCancerPatient]            |
| SURGERYAX                        | Surgery axilla                           | [AxillaSurgery]                  |
| SURGERYAXDATE                    | Surgery axilla date                      | [AxillaSurgery]                  |
| SURGERYAX2                       | Axillary clearance                       | [AxillaryClearance]              |
| SURGERYAX2DATE                   | Axillary clearance date                  | [AxillaryClearance]              |
| RECONSTRUCTION\_DELAY            | Reconstruction                           | [ReconstructionSurgery]          |
| SURGERY\_RECONSTRUCTION          | Reconstruction type                      | [ReconstructionSurgery]          |
| ImplantReconstruction            | Implant reconstruction                   | [ReconstructionSurgery]          |
| RECONSTRUCTDATE                  | Reconstruction date                      | [ReconstructionSurgery]          |
| RADIOTX\_BREAST                  | Radiotherapy                             | [Radiotherapy]                   |
| RADIOTXTYPE\_BREAST              | Radiotherapy type                        | [Radiotherapy]                   |
| RadioTxStartDate                 | Radiotherapy start date                  | [Radiotherapy]                   |
| RadioTxStopDate                  | Radiotherapy stop date                   | [Radiotherapy]                   |
| CHEMOTXINTENT                    | Chemotherapy                             | [Chemotherapy]                   |
| CHEMOTXTYPE\_BREAST              | Type of chemotherapy                     | [Chemotherapy]                   |
| ChemoTxStartDate                 | Chemotherapy start date                  | [Chemotherapy]                   |
| ChemoTxStopdate                  | Chemotherapy stop date                   | [Chemotherapy]                   |
| HORMONTX\_BREAST                 | Hormonal therapy                         | [FACTESCodeSystem]               |
| HORMONTXTYPE                     | Hormonal therapy type                    | [FACTESCodeSystem]               |
| HORMONTXSTARTDATE                | Start of hormonal therapy                | [FACTESCodeSystem]               |
| HORMONTXSTOPDATE                 | Stop of hormonal therapy                 | [FACTESCodeSystem]               |
| TARGETTX\_BREAST                 | Targeted therapy                         | [TargetedTherapy]                |
| TargetTxStartDate                | Targeted therapy start date              | [TargetedTherapy]                |
| TargetTxStopDate                 | Targeted therapy stop date               | [TargetedTherapy]                |
| SURGERYPATIENT                   | Surgery                                  | [ReoperationSurgery]             |
| SURGERYDATEPATIENT               | Surgery date                             | [ReoperationSurgery]             |
| TreatmentPlanFollowed            | Real treatment plan followed             | [TreatmentPlanFollowed]          |
| TreatmentPlanNotFollowed         | Treatment plan not followed              | [TreatmentPlanNotFollowed]       |
| PatientTreatPref                 | Patient Treatment Preference             | [PatientTreatPref]               |
| **Disutility of care**           |                                          |                                  |
| REOP\_BREAST                     | Involved margins reoperation             | [FACTESCodeSystem]               |
| REOP\_RECONSTRUCTION             | Reconstruction reoperation               | [ReconstructionSurgery]          |
| REOPDATE\_BREAST                 | Positive margins reoperation date        | [FACTESCodeSystem]               |
| ComplicationImpact0              | Impact of complication                   | [Complication]                   |
| ComplicationAttrTreatment        | Complication attributed to treatment     | [Complication]                   |
| COMPL\_BREAST                    | Complication type                        | [Complication]                   |
| **Survival and Disease control** |                                          |                                  |
| MalignancyRecur                  | Recurrence                               | [PrimaryBreastCancerCondition]   |
| RecurMethod                      | Recurrence method                        | [RecurrenceMethod]               |
| RecurDateCancer                  | Date of cancer recurrence                | [PrimaryBreastCancerCondition]   |
| VitalStatus                      | Vital status                             | [BreastCancerPatient]            |
| DeceasedDate                     | Date of death                            | [BreastCancerPatient]            |
| DEATHBC                          | Death attributable to breast cancer      | [DeathAttributableBC]            |

{% include markdown-link-references.md %}

This domain of knowledge IG focuses on representing the same variables in the measure set in two ways - 1) as [FHIR](artifacts.html#structures-questionnaires) for patient-reported and clinical-reported outcomes, and 2) as [discrete FHIR resources](artifacts.html#structures-resource-profiles) for clinical-reported outcomes. Implementers are free to choose whether they want to implement the questionnaires, profiles, or both.

### Questionnaires
[Questionnaires](artifacts.html#structures-questionnaires) in this IG are organized differently than the ICHOM reference guide and data dictionary, and this is due to their different focuses or intended uses. The reference guide and data dictionary are meant to describe all of the data elements included in the set, so they are organized by data or variable type (e.g. Demographics, Baseline Clinical Factors). In contrast, this IG is meant to facilitate collection of the data elements. Therefore, it is organized by when in the patient's care pathway the data is to be collected (e.g. Baseline, 1 year follow-up) and the source of the data (clinical or patient reported). Despite this difference in organization, the data elements with the FHIR IG and ICHOM's reference guide and data dictionary are completely aligned.

<object data="Questionnaires-layout.svg" type="image/svg+xml"></object>
<br/>

### Profiles
[Profiles](artifacts.html#structures-resource-profiles) follow the ICHOM reference guide and data dictionary organisation, as laid out in the table below. Each variable is mapped to a single FHIR resource, or several variables are mapped to the same FHIR resource. The mappings themselves are communicated using [a FHIR profile](https://www.hl7.org/fhir/profiling.html). 

The profile elements necessary to fully represent the ICHOM breast cancer set are labeled as must support. So, when implementers populate all the must support elements in our profiles their data completely represents the ICHOM breast cancer set. However, in situations where information on a particular data element is missing, for any reason, implementers can still use the artifacts from this IG.

The table below lays out the measure set variable to FHIR profile mappings. A backwards FHIR to ICHOM mapping is available within each profile's `Mappings` tab.

| Variable ID                      | ITEM                                     | FHIR profile                                                     |
|:---------------------------------|:-----------------------------------------|:-----------------------------------------------------------------|
| **Demographic factors**          |                                          |                                                                  |
| Sex                              | Sex                                      | [BreastCancerPatient]                                            |
| YearOfBirth                      | Year of Birth                            | [BreastCancerPatient]                                            |
| COUNTRY                          | Country                                  | [BreastCancerPatient]                                            |
| Ethnicity                        | Ethnicity                                | [BreastCancerPatient]                                            |
| Race                             | Race                                     | [BreastCancerPatient]                                            |
| EducationLevel                   | Level of education                       | [BreastCancerPatient]                                            |
| RelationshipStatus               | Relationship status                      | [BreastCancerPatient]                                            |
| MENOPAUSE                        | Menopause status                         | [MenopausalStatus]                                               |
| **Baseline clinical factors**    |                                          |                                                                  |
| HeightValue                      | Body height                              | [BodyHeight]                                                     |
| HeightUnit                       | Body height units                        | [BodyHeight]                                                     |
| WeightValue                      | Body weight                              | [BodyWeight]                                                     |
| WeightUnit                       | Body weight units                        | [BodyWeight]                                                     |
| LATERAL                          | Laterality                               | [PrimaryBreastCancerCondition]                                   |
| FIRSTBC                          | First breast cancer                      | [PrimaryBreastCancerCondition]                                   |
| NEWBC                            | New canc                                 | [SecondaryBreastCancerCondition]                                 |
| **Baseline tumor factors**       |                                          |                                                                  |
| HistologicalDiagnosisDate        | Date of histological diagnosis           | [Histotype]                                                      |
| HISTOTYPE                        | Histological type                        | [Histotype]                                                      |
| MUTBC                            | Genetic mutation                         | [GermlineMutation]                                               |
| GRADEINV                         | Invasion grade                           | [InvasionGrade]                                                  |
| GRADEDCIS                        | Tumor grade                              | [TumorGrade]                                                     |
| TNMCT\_BREAST                    | Clinical tumor stage                     | [Chemotherapy]                                                   |
| TNMCN\_BREAST                    | Clinical nodal stage                     | [Chemotherapy]                                                   |
| TNMCM\_BREAST                    | Clinical distant metastatsis             | [Chemotherapy]                                                   |
| TNMPT\_BREAST                    | Pathological tumor stage                 | [TNMPrimaryTumorStage]                                           |
| TNMPN\_BREAST                    | Pathological nodal stage                 | [TNMRegionalNodalStage]                                          |
| TNMPM\_BREAST                    | Pathological distant metastasis          | [TNMDistantMetastases]                                           |
| SIZEINV                          | Size of invasive tumor                   | [TumorSize]                                                      |
| NumLymphNodesResect              | Number lymph nodes resected              | [LymphNodesResected]                                             |
| LYMPHINV\_BREAST                 | Lymph nodes involved                     | [LymphNodesInvolved]                                             |
| ERSTATUS                         | Estrogen receptor status                 | [ERStatus]                                                       |
| PRSTATUS                         | Progesterone receptor status             | [PRStatus]                                                       |
| HER2STATUS                       | HER2 receptor status                     | [HERStatus]                                                      |
| MolecularProfiling               | Molecular profiling                      | See [MammaprintScore], [OncotypeScore], and [EndopredictonScore] |
| Mammaprint                       | Mammaprint score                         | [MammaprintScore]                                                |
| Oncotype                         | Oncotype Score                           | [OncotypeScore]                                                  |
| Endopredict                      | Endopredict Score                        | [EndopredictonScore]                                             |
| MultMeet                         | Multidisciplinary meeting                | [TreatmentPlan]                                                  |
| MultRecTreatments                | Multidisciplinary Recommended Treatments | [TreatmentPlan]                                                  |
| **Treatment variables**          |                                          |                                                                  |
| TREATMENT\_BREAST                | Treatment                                | All the procedures                                               |
| SURGERY\_BREAST                  | Surgery                                  | [BreastCancerSurgery]                                            |
| SurgeryDate                      | Surgery date                             | [BreastCancerSurgery]                                            |
| SURGERYAX                        | Surgery axilla                           | [AxillaSurgery]                                                  |
| SURGERYAXDATE                    | Surgery axilla date                      | [AxillaSurgery]                                                  |
| SURGERYAX2                       | Axillary clearance                       | [AxillaryClearance]                                              |
| SURGERYAX2DATE                   | Axillary clearance date                  | [AxillaryClearance]                                              |
| RECONSTRUCTION\_DELAY            | Reconstruction                           | [ReconstructionSurgery]                                          |
| SURGERY\_RECONSTRUCTION          | Reconstruction type                      | [ReconstructionSurgery]                                          |
| ImplantReconstruction            | Implant reconstruction                   | [ReconstructionSurgery]                                          |
| RECONSTRUCTDATE                  | Reconstruction date                      | [ReconstructionSurgery]                                          |
| RADIOTX\_BREAST                  | Radiotherapy                             | [Radiotherapy]                                                   |
| RADIOTXTYPE\_BREAST              | Radiotherapy type                        | [Radiotherapy]                                                   |
| RadioTxStartDate                 | Radiotherapy start date                  | [Radiotherapy]                                                   |
| RadioTxStopDate                  | Radiotherapy stop date                   | [Radiotherapy]                                                   |
| CHEMOTXINTENT                    | Chemotherapy                             | [Chemotherapy]                                                   |
| CHEMOTXTYPE\_BREAST              | Type of chemotherapy                     | [Chemotherapy]                                                   |
| ChemoTxStartDate                 | Chemotherapy start date                  | [Chemotherapy]                                                   |
| ChemoTxStopdate                  | Chemotherapy stop date                   | [Chemotherapy]                                                   |
| HORMONTX\_BREAST                 | Hormonal therapy                         | [Hormonaltherapy]                                                |
| HORMONTXTYPE                     | Hormonal therapy type                    | [Hormonaltherapy]                                                |
| HORMONTXSTARTDATE                | Start of hormonal therapy                | [Hormonaltherapy]                                                |
| HORMONTXSTOPDATE                 | Stop of hormonal therapy                 | [Hormonaltherapy]                                                |
| TARGETTX\_BREAST                 | Targeted therapy                         | [TargetedTherapy]                                                |
| TargetTxStartDate                | Targeted therapy start date              | [TargetedTherapy]                                                |
| TargetTxStopDate                 | Targeted therapy stop date               | [TargetedTherapy]                                                |
| SURGERYPATIENT                   | Surgery                                  | [ReoperationSurgery]                                             |
| SURGERYDATEPATIENT               | Surgery date                             | [ReoperationSurgery]                                             |
| TreatmentPlanFollowed            | Real treatment plan followed             | [TreatmentPlanFollowed]                                          |
| TreatmentPlanNotFollowed         | Treatment plan not followed              | [TreatmentPlanNotFollowed]                                       |
| **Disutility of care**           |                                          |                                                                  |
| REOP\_BREAST                     | Involved margins reoperation             | [ReoperationSurgery]                                             |
| REOP\_RECONSTRUCTION             | Reconstruction reoperation               | [ReconstructionSurgery]                                          |
| REOPDATE\_BREAST                 | Positive margins reoperation date        | [ReoperationSurgery]                                             |
| ComplicationImpact0              | Impact of complication                   | [Complication]                                                   |
| ComplicationAttrTreatment        | Complication attributed to treatment     | [Complication]                                                   |
| COMPL\_BREAST                    | Complication type                        | [Complication]                                                   |
| **Survival and Disease control** |                                          |                                                                  |
| MalignancyRecur                  | Recurrence                               | [PrimaryBreastCancerCondition]                                   |
| RecurMethod                      | Recurrence method                        | [RecurrenceMethod]                                               |
| RecurDateCancer                  | Date of cancer recurrence                | [PrimaryBreastCancerCondition]                                   |
| VitalStatus                      | Vital status                             | [BreastCancerPatient]                                            |
| DeceasedDate                     | Date of death                            | [BreastCancerPatient]                                            |
| DEATHBC                          | Death attributable to breast cancer      | [DeathAttributableBC]                                            |
{: .grid }

{% include markdown-link-references.md %}

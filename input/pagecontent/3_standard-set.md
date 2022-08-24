You may notice that this FHIR IG is organized differently than the ICHOM reference guide and data dictionary. This is due to their different focuses or intended uses. The reference guide and data dictionary are meant to describe all of the data elements included in the Set so they are organized by data or variable type (e.g. Demographics, Baseline Clinical Factors). In contrast, this IG is meant to facilitate collection of the data elements. Therefore, it is organized by when when in the patient's care pathway the data is to be collected (e.g. Baseline, 1 year follow-up) and the source of the data (clinical or patient reported). Despite this difference in organization, the data elements with the FHIR IG and ICHOM's reference guide and data dictionary are completely aligned.

*include graphic created by ICHOM here*

### Clinical data points

| Variable ID                      | ITEM                                     | FHIR profile                                  |
|:---------------------------------|:-----------------------------------------|:----------------------------------------------|
| **Demographic factors**          |                                          |                                               |
| Sex                              | Sex                                      | Breast Cancer Patient                         |
| YearOfBirth                      | Year of Birth                            | Breast Cancer Patient                         |
| COUNTRY                          | Country                                  | Breast Cancer Patient                         |
| Ethnicity                        | Ethnicity                                | Breast Cancer Patient                         |
| Race                             | Race                                     | Breast Cancer Patient                         |
| EducationLevel                   | Level of education                       | Breast Cancer Patient                         |
| RelationshipStatus               | Relationship status                      | Breast Cancer Patient                         |
| MENOPAUSE                        | Menopause status                         | Menopausal status                             |
| **Baseline clinical factors**    |                                          |                                               |
| HeightValue                      | Body height                              | Body height                                   |
| HeightUnit                       | Body height units                        | Body height                                   |
| WeightValue                      | Body weight                              | Body weight                                   |
| WeightUnit                       | Body weight units                        | Body weight                                   |
| LATERAL                          | Laterality                               | Primary Breast Cancer Condition               |
| FIRSTBC                          | First breast cancer                      | Primary Breast Cancer Condition               |
| NEWBC                            |                                          | Secondary Breast Cancer Condition             |
| **Baseline tumor factors**       |                                          |                                               |
| HistologicalDiagnosisDate        | Date of histological diagnosis           | Histological type of the tumor                |
| HISTOTYPE                        | Histological type                        | Histological type of the tumor                |
| MUTBC                            | Genetic mutation                         | Germline mutation                             |
| GRADEINV                         | Invasion grade                           | Tumor and invasion grade                      |
| GRADEDCIS                        | Tumor grade                              | Tumor and invasion grade                      |
| TNMCT\_BREAST                    | Clinical tumor stage                     | Clinical TNM tumor stage                      |
| TNMCN\_BREAST                    | Clinical nodal stage                     | Clinical TNM nodal stage                      |
| TNMCM\_BREAST                    | Clinical distant metastatsis             | Clinical TNM distant metastases               |
| TNMPT\_BREAST                    | Pathological tumor stage                 | Pathological TNM tumor stage                  |
| TNMPN\_BREAST                    | Pathological nodal stage                 | Pathological TNM nodal stage                  |
| TNMPM\_BREAST                    | Pathological distant metastasis          | Pathological TNM distant metastases           |
| SIZEINV                          | Size of invasive tumor                   | Size of invasive tumor                        |
| NumLymphNodesResect              | Number lymph nodes resected              | Lymph nodes                                   |
| LYMPHINV\_BREAST                 | Lymph nodes involved                     | Lymph nodes                                   |
| ERSTATUS                         | Estrogen receptor status                 | Estrogen receptor status                      |
| PRSTATUS                         | Progesterone receptor status             | Progesterone receptor status                  |
| HER2STATUS                       | HER2 receptor status                     | HER2 receptor status                          |
| MolecularProfiling               | Molecular profiling                      | -                                             |
| Mammaprint                       | Mammaprint score                         | Mammaprint score                              |
| Oncotype                         | Oncotype Score                           | Oncotype score                                |
| Endopredict                      | Endopredict Score                        | Endoprediction score                          |
| MultMeet                         | Multidisciplinary meeting                | Multidisciplinary meeting                     |
| MultRecTreatments                | Multidisciplinary Recommended Treatments | Multidisciplinary meeting                     |
| **Treatment variables**          |                                          |                                               |
| TREATMENT\_BREAST                | Treatment                                | All the procedures                            |
| SURGERY\_BREAST                  | Surgery                                  | Breast cancer surgery                         |
| SurgeryDate                      | Surgery date                             | Breast cancer surgery                         |
| SURGERYAX                        | Surgery axilla                           | Axilla surgery                                |
| SURGERYAXDATE                    | Surgery axilla date                      | Axilla surgery                                |
| SURGERYAX2                       | Axillary clearance                       | Axilla clearance                              |
| SURGERYAX2DATE                   | Axillary clearance date                  | Axilla clearance                              |
| RECONSTRUCTION\_DELAY            | Reconstruction                           | Reconstruction surgery                        |
| SURGERY\_RECONSTRUCTION          | Reconstruction type                      | Reconstruction surgery                        |
| ImplantReconstruction            | Implant reconstruction                   | Reconstruction surgery                        |
| RECONSTRUCTDATE                  | Reconstruction date                      | Reconstruction surgery                        |
| RADIOTX\_BREAST                  | Radiotherapy                             | Radiotherapy                                  |
| RADIOTXTYPE\_BREAST              | Radiotherapy type                        | Radiotherapy                                  |
| RadioTxStartDate                 | Radiotherapy start date                  | Radiotherapy                                  |
| RadioTxStopDate                  | Radiotherapy stop date                   | Radiotherapy                                  |
| CHEMOTXINTENT                    | Chemotherapy                             | Chemotherapy                                  |
| CHEMOTXTYPE\_BREAST              | Type of chemotherapy                     | Chemotherapy                                  |
| ChemoTxStartDate                 | Chemotherapy start date                  | Chemotherapy                                  |
| ChemoTxStopdate                  | Chemotherapy stop date                   | Chemotherapy                                  |
| HORMONTX\_BREAST                 | Hormonal therapy                         | Hormonal therapy                              |
| HORMONTXTYPE                     | Hormonal therapy type                    | Hormonal therapy                              |
| HORMONTXSTARTDATE                | Start of hormonal therapy                | Hormonal therapy                              |
| HORMONTXSTOPDATE                 | Stop of hormonal therapy                 | Hormonal therapy                              |
| TARGETTX\_BREAST                 | Targeted therapy                         | Targeted therapy                              |
| TargetTxStartDate                | Targeted therapy start date              | Targeted therapy                              |
| TargetTxStopDate                 | Targeted therapy stop date               | Targeted therapy                              |
| SURGERYPATIENT                   | Surgery                                  | Re-operations since surgery for breast cancer |
| SURGERYDATEPATIENT               | Surgery date                             | Re-operations since surgery for breast cancer |
| TreatmentPlanFollowed            | Real treatment plan followed             | Real Treatment Plan Followed                  |
| TreatmentPlanNotFollowed         | Treatment plan not followed              | Treatment Plan Not Followed                   |
| PatientTreatPref                 | Patient Treatment Preference             | Patient Treatment Preference                  |
| **Disutility of care**           |                                          |                                               |
| REOP\_BREAST                     | Involved margins reoperation             | InvolvedMarginsReoperation                    |
| REOP\_RECONSTRUCTION             | Reconstruction reoperation               | Reconstruction surgery                        |
| REOPDATE\_BREAST                 | Positive margins reoperation date        | InvolvedMarginsReoperation                    |
| ComplicationImpact0              | Impact of complication                   | Complication                                  |
| ComplicationAttrTreatment        | Complication attributed to treatment     | Complication                                  |
| COMPL\_BREAST                    | Complication type                        | Complication                                  |
| **Survival and Disease control** |                                          |                                               |
| MalignancyRecur                  | Recurrence                               | Primary Breast Cancer Condition               |
| RecurMethod                      | Recurrence method                        | Recurrence Method                             |
| RecurDateCancer                  | Date of cancer recurrence                | Primary Breast Cancer Condition               |
| VitalStatus                      | Vital status                             | Breast Cancer Patient                         |
| DeceasedDate                     | Date of death                            | Breast Cancer Patient                         |
| DEATHBC                          | Death attributable to breast cancer      | Death BC                                      |


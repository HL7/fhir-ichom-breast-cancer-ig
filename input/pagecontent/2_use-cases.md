### Business needs
1. PROMs data capture: Leverage the FHIR infrastructure to transfer PROMs data (i.e. patients’ survey responses) from a third-party vendor to the EHR or data warehouse of healthcare providers.
2. Transfer of ICHOM’s Set of Patient-Centered Outcome Measures to:
	1. Health analytic tools (e.g. Health Catalyst)
	2. Other provider organizations for the purpose of research or participation in a learning collaborative
3. The ICHOM benchmarking platform

For each of these potential use cases, the FHIR infrastructure is leveraged to transfer de-identified, individual patient data (both PROMs and data extracted from the EHR or data warehouse) to another entity in a pre-defined data format.

### Actors
* Health informaticist or IT professionals working within a healthcare provider organization.
* Clinical researcher with a health informatics background.

### Definitions
* PROM (Patient reported outcome measure: A scientifically validated questionnaire that assesses specific aspects of a patient’s experience of their health. Responses to each question receive a score and the scores are tallied based on a published algorithm. Typically both responses to individual questions and summary scores are saved but analytics are only performed on summary scores. (Examples: PHQ-9, PROMIS Global).
* Third-party vendor: Typically a technology or analytics company offering a HIPAA compliant platform to solve a discrete data or analytic need (such as collecting PROMs data from patients).
* Learning collaborative: A quality improvement activity in which provider organizations agree to privately share their de-identified patient outcome data for the purpose of facilitating conversations and learning best care practices from each other (example: [https://msqc.org](https://msqc.org)).
* ICHOM benchmarking platform: [https://www.ichom.org/global-benchmarking-platform](https://www.ichom.org/global-benchmarking-platform)
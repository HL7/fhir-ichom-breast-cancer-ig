### Business needs
This is a domain of knowledge IG: it focuses on representing the set's data elements in FHIR only and it does not aim to solve specific use cases. Concrete interaction patterns for information exchange are out of scope for this document.

That said, to give you an idea where this set is applicable, here are a few example business needs to get you started:

1. Tracking and comparing outcomes that matter most to different cohorts of patients to guide quality improvement initiatives within a provider organization, e.g using health analytic tools

2. Tracking individual patient outcomes against an average reference value to inform treatment decisions and facilitate shared decision making

3. Creating interactive dashboards that allow healthcare organizations to compare their risk adjusted outcomes to the ICHOM global average with the goal of establishing learning collaboratives and setting a standard of excellence in patient outcomes. This could, for example, faciliate sharing treatment outcomes with other provider organizations for the purpose of research or participation in a learning collaborative

### Actors
* Health informaticist or IT professionals working within a healthcare provider organization.
* Clinical researcher with a health informatics background.

### Definitions
* PROM (Patient reported outcome measure: A scientifically validated questionnaire that assesses specific aspects of a patient’s experience of their health. Responses to each question receive a score and the scores are tallied based on a published algorithm. Typically both responses to individual questions and summary scores are saved but analytics are only performed on summary scores. (Examples: PHQ-9, PROMIS Global).
* Third-party vendor: Typically a technology or analytics company offering a HIPAA compliant platform to solve a discrete data or analytic need (such as collecting PROMs data from patients).
* Learning collaborative: A quality improvement activity in which provider organizations agree to privately share their de-identified patient outcome data for the purpose of facilitating conversations and learning best care practices from each other (example: [https://msqc.org](https://msqc.org)).
* ICHOM benchmarking platform: [https://www.ichom.org/global-benchmarking-platform](https://www.ichom.org/global-benchmarking-platform)
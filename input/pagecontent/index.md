### Introduction

The International Consortium for Health Outcomes Measurement ([ICHOM](https://www.ichom.org/)) aims to unlock the potential of value-based healthcare by defining global Patient-Centered Outcome Measure Sets that involve provider observations as well as patient reported outcomes, and that drive adoption, reporting, and benchmarking of these measures worldwide to create better health outcomes for all stakeholders.
 
So far, measurement sets for 40 health conditions have been defined by bringing together global teams of patient advocates, healthcare professionals and researchers, representing over 50% of the global disease burden, as described at [https://www.ichom.org/patient-centered-outcome-measures](https://www.ichom.org/patient-centered-outcome-measures). 
 
To facilitate adoption and implementation of these ICHOM Patient-Centered Outcome Measure Sets in healthcare, IT systems require them to be published in an interoperable, open-standards-based machine-readable form. This will facilitate the semantically-interoperability collection of the required measurements along the patient care pathway, as well as the subsequent outcomes reporting based on these measurements. To this end, ICHOM is creating  the Breast Cancer patient-centered outcome measure set. The international scope of ICHOM standard sets will enable global usage, adoption, and implementation in clinical practice.

### Background

There is a growing need for representing the ICHOM Patient-Centered Outcome Measure Sets through HL7 FHIR APIs for the international community. The clinical elements of the ICHOM Patient-centered Outcomes Measures are already created and accepted as per international clinical research, patient represented and peer-reviewed process and are mapped to standard ontologies, such as SNOMED.  

The aim of this IG is to develop and publish the HL7 FHIR representation of the already internationally validated and peer-reviewed ICHOM patient-centered outcome measure set for breast cancer. This will provide the support for interoperability in exchange of data related to the measurement of value-based healthcare as defined by our international community of experts who were gathered to create the set.

### HL7 FHIR basics

The ICHOM Breast Cancer implementation guide uses terminology, notations and design principles that are specific to the HL7 FHIR standard. Before reading this implementation guide, it is important to be familiar with the basic principles of FHIR and how to read FHIR specifications. Readers who are unfamiliar with FHIR are encouraged to review the following prior to reading the rest of this implementation guide.

* FHIR overview
* Developer’s introduction (or Clinical introduction)
* FHIR data types
* Using codes
* References between resources
* How to read resource & profile definitions
* Base resource

This implementation guide supports the recently published FHIR R4 version of the FHIR standard to ensure alignment with the current direction of the FHIR standard.


### Introduction

The International Consortium for Health Outcomes Measurement ([ICHOM](https://www.ichom.org/)) aims to unlock the potential of value-based healthcare by defining global Patient-Centered Outcome Measure Sets that involve provider observations as well as patient reported outcomes, and that drive adoption, reporting, and benchmarking of these measures worldwide to create better health outcomes for all stakeholders.
 
So far, measurement sets for 40 health conditions have been defined by bringing together global teams of patient advocates, healthcare professionals and researchers, representing over 50% of the global disease burden, as described at [this page](https://www.ichom.org/patient-centered-outcome-measures). 
 
To facilitate adoption and implementation of these ICHOM Patient-Centered Outcome Measure Sets in healthcare, IT systems require them to be published in an interoperable, open-standards-based machine-readable form. This will facilitate the semantically-interoperability collection of the required measurements along the patient care pathway, as well as the subsequent outcomes reporting based on these measurements. To this end, ICHOM is creating  the Breast Cancer patient-centered outcome measure set. The international scope of ICHOM standard sets will enable global usage, adoption, and implementation in clinical practice.

This implementation guide works with the R4 version of the FHIR standard to ensure alignment with the current direction of the FHIR standard.

### Background

There is a growing need for representing the ICHOM Patient-Centered Outcome Measure Sets through HL7 FHIR APIs for the international community. The clinical elements of the ICHOM Patient-centered Outcomes Measures are already created and accepted as per international clinical research, patient represented and peer-reviewed process and are mapped to standard ontologies, such as SNOMED.  

The aim of this IG is to develop and publish the HL7 FHIR representation of the already internationally validated and peer-reviewed ICHOM patient-centered outcome measure set for breast cancer. This will provide the support for interoperability in exchange of data related to the measurement of value-based healthcare as defined by our international community of experts who were gathered to create the set.

### Prerequisites
Users of this guide must be familiar with the ICHOM Breast Cancer Set and the accompanying Data Dictionary that lists all the variables needed for data collection by implementers, [available here](https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/). Users should also be familiar with [FHIR resources](http://hl7.org/fhir/R4/resourcelist.html) to understand how the ICHOM Breast Cancer variables are represented in the Implementation Guide - see below for basics.

### Alignment with HL7 specifications
Artifacts in this Implementation Guide are in alignment with:

* [Breast Radiology Reporting, 0.1.0](http://hl7.org/fhir/us/breast-radiology/2019Sep/)
* [minimal Common Oncology Data Elements (mCODE), STU2](http://hl7.org/fhir/us/mcode/STU2/)
* [QI-Core, 5.0.0-ballot](http://hl7.org/fhir/us/qicore/2022Sep/)
* [US Core, 5.0.1 - STU5](http://hl7.org/fhir/us/core/STU5.0.1/)

### HL7 FHIR basics

The ICHOM Breast Cancer implementation guide uses terminology, notations and design principles that are specific to the HL7 FHIR standard. It is important to be familiar with the basic principles of FHIR and how to read FHIR specifications. Readers who are unfamiliar with FHIR are therefore encouraged to review the following explanation prior to reading the rest of this implementation guide. 

#### FHIR overview

Fast healthcare interoperability resources (FHIR) is a Health Level 7 (HL7) platform specification that supports the exchange of healthcare information between healthcare systems and applications. Medical data must be available and understandable when patients move around the healthcare ecosystem. To assure this, FHIR defines a set of capabilities used across the healthcare process, in all jurisdictions, and in lots of different contexts. FHIR is universally applicable, meaning that it can be used in a broad variety of implementation environments, e.g. EHR-based data sharing, mobile phone apps, and cloud communications. Also, FHIR has a strong focus on fast and easy implementation, which lowers the barriers of entry for new developers to work with FHIR.  

#### Clinical application 

FHIR is designed to standardize and enable the exchange of all healthcare-related information. This involves not only clinical data but also healthcare-related administrative and research data. FHIR can be used in both human and veterinary medicine and is worldwide applicable in a wide variety of contexts, including in-patient, acute care, long-term care, ambulatory care, community care, etc. One of the benefits of HL7 FHIR is that it is independent of any EHR vendor or health system. Furthermore, the specification is free for everyone to use and there are many public examples available to assist in development of new applications. 

#### Resources
The basic building blocks of FHIR are called resources, which are represented in XML or JSON. A resource is considered a collection of information, called data elements, to exchange or store data. For instance, the resource Patient contains demographic and administrative details about the person who is receiving care. There are multiple resources covering different aspects of the healthcare domain, from research and patient management to medical billing and clinical reports. The main goal is that a set of resources should cover most clinical use cases. This can be achieved by combining resources through references. For instance, by linking Patient to Observation (which stores (clinical) findings of a patient), Condition (problem or diagnosis) and Medication (ingredients, amount and strength of medications), you can implement and tailor specific cases. 

#### Profiling
A profile defines the use of a resource in a specific scenario. The term profiling refers to the act of applying constraints to the so-called core resources. These resources are created by workgroups of specialists to accommodate the most common use cases. Because of the generic nature, the rules in this specification are fairly loose. By applying a set of constraints to a FHIR resource, it can be tailored to a specific scenario. The chances that you will need something that specifically fits your domain when using FHIR are high. As a result, the FHIR specification expects that you will need to apply constraints to the existing resources to create a profile to satisfy your needs. For this reason, you will find national, regional, or even hospital-specific profiles. FHIR consciously chose to cover 80 percent of the data elements that are used in healthcare systems in their resources. The remaining 20 percent are specific use cases and can be dealt with as FHIR extensions. Extensions are additional resources that are useful to cover data not handled by existing core FHIR profiles from HL7.

#### Terminology
To improve interoperability, standardized terminology is crucial. By using standardized terminology, healthcare information can be collected, documented and processed in similar data concepts. This allows healthcare providers to share and compare clinical knowledge in a consistent and internationally accepted system. FHIR cannot define every code required in a healthcare system across the world, so instead, they provided two resources to manage codes and their meaning, namely:

* CodeSystem – is a collection of codes that define several codes and their meaning. The concept of a CodeSystem is similar to a catalog, containing all kinds of codes and their definitions. The CodeSystem may be SNOMED-CT or LOINC or even one you created yourself. 

* ValueSet - specifies a selection of codes extracted from one or more CodeSystems, intended for use in a particular context. A ValueSet contains the links to the actual codes from a particular CodeSystem. The advantage is that when a CodeSystem gets updated, the ValueSets containing codes from this CodeSystem will be updated automatically. 

#### Links

For further reading, we recommend to use the following links:

* [FHIR summary](http://hl7.org/fhir/r4/summary.html)
* [Developer’s introduction](http://hl7.org/fhir/r4/overview-dev.html)
* [Data types](http://hl7.org/fhir/r4/datatypes.html)
* [Using codes](http://hl7.org/fhir/r4/terminologies.html)
* [References between resources](http://hl7.org/fhir/r4/references.html)
* [How to read resource & profile definitions](http://hl7.org/fhir/r4/formats.html#table)
* [Base resource definitions](http://hl7.org/fhir/r4/resource.html)

### Authors

This body of work would not have been possible without the following individuals:

* Chris Melo (Facilitator)
* Greg Robinson (Project lead)
* Marieke Span (FHIR Modeller)
* Mica Carr (Former project coordinator)
* Umanga DeSilva (Project coordinator)
* Vadim Peretokin (Technical lead)

The authors recognize HL7 sponsorship and input from Clinical Interoperability Council, with special thanks to Laura Heermann Langford, Russell Leftwich, and James McClay.

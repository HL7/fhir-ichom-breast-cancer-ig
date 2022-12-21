### Introduction

The International Consortium for Health Outcomes Measurement ([ICHOM](https://www.ichom.org/)) aims to unlock the potential of value-based healthcare by defining global Patient-Centered Outcome Measure Sets that involve provider observations as well as patient reported outcomes, and that drive adoption, reporting, and benchmarking of these measures worldwide to create better health outcomes for all stakeholders.

So far, measurement sets for 40 health conditions have been defined by bringing together global teams of patient advocates, healthcare professionals and researchers, representing over 50% of the global disease burden, as described at [this page](https://www.ichom.org/patient-centered-outcome-measures).

To facilitate adoption and implementation of these ICHOM Patient-Centered Outcome Measure Sets in healthcare, IT systems require them to be published in an interoperable, open-standards-based machine-readable form. This will facilitate the semantically-interoperability collection of the required measurements along the patient care pathway, as well as the subsequent outcomes reporting based on these measurements. To this end, ICHOM is creating  the Breast Cancer patient-centered outcome measure set. The international scope of ICHOM standard sets will enable global usage, adoption, and implementation in clinical practice.

This implementation guide works with the R4 version of the FHIR standard to ensure alignment with the current direction of the FHIR standard.

### Background

There is a growing need for representing the ICHOM Patient-Centered Outcome Measure Sets through HL7 FHIR APIs for the international community. The clinical elements of the ICHOM Patient-centered Outcomes Measures are already created and accepted as per international clinical research, patient represented and peer-reviewed process and are mapped to standard ontologies, such as SNOMED.

The aim of this IG is to develop and publish the HL7 FHIR representation of the already internationally validated and peer-reviewed ICHOM patient-centered outcome measure set for breast cancer. This will provide the support for interoperability in exchange of data related to the measurement of value-based healthcare as defined by our international community of experts who were gathered to create the set.

### Prerequisites
Users of this guide shall be familiar with the ICHOM Breast Cancer Set and the accompanying Data Dictionary that lists all the variables needed for data collection by implementers, [available here](https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/). Users should also be familiar with [FHIR resources](http://hl7.org/fhir/R4/resourcelist.html) to understand how the ICHOM Breast Cancer variables are represented in the Implementation Guide - see below for basics.

### Alignment with HL7 specifications
Artifacts in this Implementation Guide are in alignment with:

* [Breast Radiology Reporting, 0.1.0](http://hl7.org/fhir/us/breast-radiology/2019Sep/)
* [minimal Common Oncology Data Elements (mCODE), STU2](http://hl7.org/fhir/us/mcode/STU2/)
    * Alignment on the TNM staging profiles
* [QI-Core, 5.0.0-ballot](http://hl7.org/fhir/us/qicore/2022Sep/)
* [US Core, 5.0.1 - STU5](http://hl7.org/fhir/us/core/STU5.0.1/)
    * Alignment on demographic information
* [International Patient Summary, 1.0.0 - STU 1](http://hl7.org/fhir/uv/ips/)
    * Alignment on the patient and procedure profiles
* [International Patient Access, 0.1.0 - STU 1 ballot](http://hl7.org/fhir/uv/ipa/2022Jan/)
    * Alignment on the patient, obeservation and condition profiles 

#### IP Statements

{% include ip-statements.xhtml %}

### Authors

This body of work would not have been possible without the following individuals:

* Chris Melo (Philips, Facilitator)
* Greg Robinson (ICHOM, Project lead)
* Marieke Span (Furore, FHIR Modeller)
* Mica Carr (ex-ICHOM, Former project coordinator)
* Umanga DeSilva (ICHOM, Project coordinator)
* Vadim Peretokin (Philips, Technical lead)

The authors recognize HL7 sponsorship and input from Clinical Interoperability Council, with special thanks to Laura Heermann Langford, Russell Leftwich, James McClay, and Kurt Allen.

Instance: PatientReportedFollowUp
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient-reported response at every 6 months for first 2 years post-treatment, after 2 years tracked annually for up to 10 years"
* insert PublicationInstanceRuleset

* name = "PatientReportedFollowUp"
* title = "Patient reported response at post-treatment follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
//    * linkId = "N/A-Clinical"
    * linkId = "NA-Clinical"
    * type = #string
    * text = "What is the patient's medical record number?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "What is the patient's last name?"
    * required = true

// GROUP 5 - DEGREE OF HEALTH

// EORTC-QLQ
* insert EORTCQuestionnaire

// BreastQ
* insert BreastQFollowup

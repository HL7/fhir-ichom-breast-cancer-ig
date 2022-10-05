Instance: PatientReportedAnnual
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient-reported response annual follow-up"
* insert PublicationInstanceRuleset

* name = "PatientReportedAnnual"
* title = "Patient reported response annual follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
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



// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment(code)
* enableWhen
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = {code}

Instance: TreatmentVariables
InstanceOf: Questionnaire
Usage: #definition
Description: "Treatment variables"
* insert PublicationInstanceRuleset

* name = "Treatment variables"
* title = "Treatment variables"
* status = #draft

* item[+]
  * linkId = "TREATMENT_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply) "
  * answerValueSet = Canonical(TreatmentTypes)
  * required = true
  * repeats = true

* item[+]
  // TODO: handle unknown dates, see notes.md for options
  * linkId = "SURGERY_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received surgery during the last year:"
  * insert enableWhenTreatment($treatment#1)
  * answerValueSet = Canonical(BreastSurgeryTypes)
  * required = true

* item[+]
  * linkId = "SURGERYAX"
  * type = #choice
  * text = "Indicate whether the patient received surgery to the axilla during the last year:"
  * insert enableWhenTreatment($treatment#2)
Instance: Demographics
InstanceOf: Questionnaire
Usage: #definition
Description: "Demographic Factors"
* insert PublicationInstanceRuleset

* name = "DemographicFactors"
* title = "Demographic Factors"
* status = #draft

* item[+]
  * linkId = "Sex"
  * type = #choice
  * text = "Please indicate your sex at birth."
  * answerValueSet = Canonical(DemographicFactorsSex)
  * required = true
  * repeats = false

* item[+]
  * linkId = "YearOfBirth"
  * type = #date
  * text = "In what year were you born?"
  * required = true

* item[+]
  * linkId = "COUNTRY"
  * type = #choice
  * text = "What is your country of residence?"
  * answerValueSet = Canonical(DemographicCountry)
  * required = true
  * repeats = false

* item[+]
  * linkId = "Ethnicity"
  * type = #string
  * text = "Please indicate the ethnicity that you identify with."

* item[+]
  * linkId = "Race"
  * type = #string
  * text = "Please indicate the biological race that you identify with."

* item[+]
  * linkId = "EducationLevel"
  * type = #choice
  * text = "Please indicate your highest level of schooling."
  * answerValueSet = Canonical(EducationLevel)
  * required = true
  * repeats = false

// valueset described in dictionary not standard, currently referring to standard value set
* item[+]
  * linkId = "RelationshipStatus"
  * type = #choice
  * text = "What is your country of residence?"
  * answerValueSet = Canonical(RelationshipStatus)
  * required = true
  * repeats = false

* item[+]
  * linkId = "MENOPAUSE"
  * type = #choice
  * text = "What is your current menopausal status?"
  * answerValueSet = Canonical(MenopausalStatus)
  * enableWhen
    * question = "Sex"
    * operator = #=
    * answerCoding = http://hl7.org/fhir/administrative-gender#female
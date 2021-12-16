// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenFemale(code)
* enableWhen
  * question = "DemographicFactors_Sex"
  * operator = #=
  * answerCoding = {code}

Instance: Demographics
InstanceOf: Questionnaire
Usage: #definition
Title: "Demographic Factors"
Description: "Demographic Factors"
* insert PublicationInstanceRuleset

* name = "DemographicFactors"
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
  * type = #string
  * text = "Please indicate your highest level of schooling."

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
  * type = #boolean
  * text = "What is your current menopausal status?"
  * insert enableWhenFemale(#female)
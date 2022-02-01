RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: Survival
InstanceOf: Questionnaire
Usage: #definition
Description: "Survival and disease control"

name: "Survival-questionnaire"
title: "Questionnaire regarding survival and disease control of breastcancer patients"
status = #draft

* item[+]
  * linkId =  "Survival-Q0"
  * type = #boolean
  * text = "Was the intent of the treatment curative?"
  * required = true

* item[+]
  * linkId =  "MalignancyRecur"
  * type = #choice
  * text = "Is there evidence of local, regional or distant recurrence of neoplasm?"
  * answerValueSet = Canonical(Recurrence-VS)
  * required = true
  * insert enableWhenTrue(Survival-Q0)

* item[+]
  * linkId =  "RecurMethod"
  * type = #choice
  * text = "What was the method of confirming recurrence of neoplasm?"
  * answerValueSet = Canonical(Recurrencemethod-VS)
  * required = true
  * enableWhen
    * question =  "Survival-Q1"
    * operator = #=
    * answerOption = {1,2,3}

* item[+]
  * linkId =  "RecurDateCancer"
  * type = #date
  * text = "What is the date of cancer recurrence?"
  * required = true
  * enableWhen
    * question =  "Survival-Q1"
    * operator = #=
    * answerOption = {1,2,3}

* item[+]
  * linkId =  "VitalStatus"
  * type = #boolean
  * text = "Has the person deceased?"
  * required = true

* item[+]
  * linkId =  "DeceasedDate"
  * type = #date
  * text = "What was the date of death of the person?"
  * required = true
  * insert enableWhenTrue(Survival-Q4)

* item[+]
  * linkId =  "DEATHBC"
  * type = #boolean
  * text = "Is the death attributable to breast cancer?"
  * required = true
  * insert enableWhenTrue(Survival-Q4)

RuleSet: enableWhenRecurrence(code)
* enableWhen[+]
  * question = "MalignancyRecur"
  * operator = #=
  * answerCoding = RecurrenceCodeSystem{code}

Instance: Survival
InstanceOf: Questionnaire
Usage: #definition
Description: "Survival and disease control questionnaire"
* insert PublicationInstanceRuleset

* name = "SurvivalQuestionnaire"
* title = "Survival and disease control questionnaire"
* status = #draft

// Timing: 1-year post treatment, tracked annually up to 10 years
* item[+]
  * linkId =  "Survival_Timing"
  * type = #choice
  * text = "What is the timing of the response of this questionnaire?"
  * answerValueSet = Canonical(ResponseTimingSurvivalValueSet ) 
  * required = true

* item[+]
  * linkId =  "Survival-Q0"
  * type = #boolean
  * text = "Was the intent of the treatment curative?"
  * required = true

* item[+]
  * linkId =  "MalignancyRecur"
  * type = #choice
  * text = "Is there evidence of local, regional or distant recurrence of neoplasm? (In case of multiple recurrences, please report the most severe)"
  * answerValueSet = Canonical(RecurrenceValueSet)
  * insert enableWhenTrue(Survival-Q0)

* item[+]
  * linkId =  "RecurMethod"
  * type = #choice
  * text = "What was the method of confirming recurrence of neoplasm?"
  * answerValueSet = Canonical(RecurrenceMethodValueSet)
  * insert enableWhenRecurrence(#1)
  * insert enableWhenRecurrence(#2)
  * insert enableWhenRecurrence(#3)
  * enableBehavior = #any

* item[+]
  * linkId =  "RecurDateCancer"
  * type = #date
  * text = "What is the date of cancer recurrence?"
  * insert enableWhenRecurrence(#1)
  * insert enableWhenRecurrence(#2)
  * insert enableWhenRecurrence(#3)
  * enableBehavior = #any

* item[+]
  * linkId =  "VitalStatus"
  * type = #boolean
  * text = "Has the person deceased?"
  * required = true

* item[+]
  * linkId =  "DeceasedDate"
  * type = #date
  * text = "What was the date of death of the person?"
  * insert enableWhenTrue(VitalStatus)

* item[+]
  * linkId =  "DEATHBC"
  * type = #boolean
  * text = "Is the death attributable to breast cancer?"
  * insert enableWhenTrue(VitalStatus)

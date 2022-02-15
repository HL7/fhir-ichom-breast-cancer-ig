Instance: Survival
InstanceOf: Questionnaire
Usage: #definition
Description: "Survival and disease control"
* insert PublicationInstanceRuleset

* name = "Survival-questionnaire"
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
  * required = true
  * insert enableWhenTrue(Survival-Q0)

* item[+]
  * linkId =  "RecurMethod"
  * type = #choice
  * text = "What was the method of confirming recurrence of neoplasm?"
  * answerValueSet = Canonical(RecurrenceMethodValueSet)
  * required = true
  * enableWhen
    * question =  "MalignancyRecur"
    * operator = #=
    * answerCoding = #1|#2|#3 

* item[+]
  * linkId =  "RecurDateCancer"
  * type = #date
  * text = "What is the date of cancer recurrence?"
  * required = true
  * enableWhen
    * question =  "MalignancyRecur"
    * operator = #=
    * answerCoding = #1|#2|#3 

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

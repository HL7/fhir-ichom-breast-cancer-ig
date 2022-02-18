Instance: FACTES
InstanceOf: Questionnaire
Usage: #definition
Description: "Functional Assesment of Cancer Therapy Questionnaire"
* insert PublicationInstanceRuleset

* name = "FACTESQuestionnaire"
* title = "Functional Assesment of Cancer Therapy Endocrine Subscale (FACT-ES) Questionnaire"
* status = #draft

// TIMING: Baseline, 6 months, 1-year post treatment, tracked annually up to 10 years
* item[+]
  * linkId =  "FACT-ES_Timing"
  * type = #choice
  * text = "What is the timing of the response of this questionnaire?"
  * answerValueSet = Canonical(ResponseTimingValueSet) 
  * required = true

* item[+]
  * linkId =  "FACTES-00"
  * type = #display
  * text = "Please indicate your response as it applies to the past 7 days:"

* item[+]
  * linkId = "FACTES_BRM1"
  * type = #choice
  * text = "I have pain in my joints"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES4"
  * type = #choice
  * text = "I have vaginal discharge"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES5"
  * type = #choice
  * text = "I have vaginal itching/irritation"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES6"
  * type = #choice
  * text = "I have vaginal bleeding or spotting"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES7" 
  * type = #choice
  * text = "I have vaginal dryness"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES8" 
  * type = #choice
  * text = "I have pain or discomfort with intercourse"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

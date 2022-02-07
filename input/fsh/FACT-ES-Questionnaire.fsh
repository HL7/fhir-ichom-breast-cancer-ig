Instance: FACT-ES
InstanceOf: Questionnaire
Usage: #definition
Description: "Functional Assesment of Cancer Therapy"

* name = "FACT-ES-questionnaire"
* title = "Functional Assesment of Cancer Therapy"
* status = #draft

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
  * text = " I have vaginal dryness"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

* item[+]
  * linkId = "FACTES_ES8" 
  * type = #choice
  * text = " I have pain or discomfort with intercourse"
  * required = true
  * answerValueSet = Canonical(FACTESValueSet)

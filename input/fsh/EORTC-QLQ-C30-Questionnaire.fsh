RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: EORTCQLQ
InstanceOf: Questionnaire
Usage: #definition
Description: "European Organization for Research and Treatment for Cancer Quality of Life Questionnaire (EORTC QLQ)."

name: "EORTCQLQ-questionnaire"
title: "EORTC QLQ Questionnaire"
status = #draft

* item[+]
  * linkId =  "EORTCQLQC30_Q31-Q43"
  * type = #display
  * text = "We are interested in some things about you and your health. 
Please answer all of the questions yourself by selecting the answer that best applies to you.
There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."

* item[+]
  * linkId = "EORTCQLQC30_Q01"
  * type = #choice
  * text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q02"
  * type = #choice
  * text = "Do you have any trouble taking a long walk?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q03"
  * type = #choice
  * text = "Do you have any trouble taking a short walk outside of the house?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q04"
  * type = #choice
  * text = "Do you need to stay in bed or a chair during the day?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q05"
  * type = #choice
  * text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId =  "EORTCQLQC30_Q06-Q28"
  * type = #display
  * text = "During the past week:"

* item[+]
  * linkId = "EORTCQLQC30_Q06"
  * type = #choice
  * text = "Were you limited in doing either your work or other daily activities?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q07"
  * type = #choice
  * text = "Were you limited in pursuing your hobbies or other leisure time activities?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q08"
  * type = #choice
  * text = "Were you short of breath?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q09"
  * type = #choice
  * text = "Have you had pain?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q10"
  * type = #choice
  * text = "Did you need to rest?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q11"
  * type = #choice
  * text = "Have you had trouble sleeping?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q12"
  * type = #choice
  * text = "Have you felt weak?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q13"
  * type = #choice
  * text = "Have you lacked appetite?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q14"
  * type = #choice
  * text = "Have you felt nauseated?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q15"
  * type = #choice
  * text = "Have you vomited?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q16"
  * type = #choice
  * text = "Have you been constipated?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q17"
  * type = #choice
  * text = "Have you had diarrhea?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q18"
  * type = #choice
  * text = "Were you tired?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q19"
  * type = #choice
  * text = "Did pain interfere with your daily activities?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q20"
  * type = #choice
  * text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q21"
  * type = #choice
  * text = "Did you feel tense?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q22"
  * type = #choice
  * text = "Did you worry?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q23"
  * type = #choice
  * text = "Did you feel irritable?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q24"
  * type = #choice
  * text = "Did you feel depressed?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q25"
  * type = #choice
  * text = "Have you had difficulty remembering things?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q26"
  * type = #choice
  * text = "Has your physical condition or medical treatment interfered with your family life?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q27"
  * type = #choice
  * text = "Has your physical condition or medical treatment interfered with your social activities?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q28"
  * type = #choice
  * text = "Has your physical condition or medical treatment caused you financial difficulties?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId =  "EORTCQLQC30_Q29-Q30"
  * type = #display
  * text = "For the following questions please select the number between 1 and 7 that best applies to you."

* item[+]
  * linkId = "EORTCQLQC30_Q29"
  * type = #choice
  * text = "How would you rate your overall health during the past week?"
  * answerOption.value = integer
  * required = true

* item[+]
  * linkId = "EORTCQLQC30_Q30"
  * type = #choice
  * text = "How would you rate your overall quality of life during the past week?"
  * answerOption.value = integer
  * required = true

* item[+]
  * linkId =  "EORTCQLQBR23_Q31-Q43"
  * type = #display
  * text = "Patients sometimes report that they have the following symptoms or problems. 
Please indicate the extent to which you have experienced these symptoms or problems during the past week. 
Please answer by selecting the answer that best applies to you. During the past week:"

* item[+]
  * linkId = "EORTCQLQBR23_Q31"
  * type = #choice
  * text = "Did you have a dry mouth?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q32"
  * type = #choice
  * text = "Did food and drink taste different than usual?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q33"
  * type = #choice
  * text = "Were you eyes painful, irritated or watery?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q34"
  * type = #choice
  * text = "Have you lost any hair?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q35"
  * type = #choice
  * text = "Answer this question only if you had any hair loss: Were you upset by the loss of your hair?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * insert enableWhenTrue(EORTCQLQBR23_Q34) 
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q36"
  * type = #choice
  * text = "Did you feel ill or unwell?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q37"
  * type = #choice
  * text = "Did you have hot flushes?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q38"
  * type = #choice
  * text = "Did you have headaches?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q39"
  * type = #choice
  * text = "Have you felt physically less attractive as a result of your disease or treatment?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q40"
  * type = #choice
  * text = "Have you been feeling less feminine as a result of your disease or treatment?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q41"
  * type = #choice
  * text = "Did you find it difficult to look at yourself naked?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q42"
  * type = #choice
  * text = "Have you been dissatisfied with your body?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q43"
  * type = #choice
  * text = "Were you worried about your health in the future?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId =  "EORTCQLQBR23_Q44-Q46"
  * type = #display
  * text = "During the past four weeks:"

* item[+]
  * linkId = "EORTCQLQBR23_Q44"
  * type = #choice
  * text = "To what extent were you interested in sex?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q45"
  * type = #choice
  * text = "To what extent were you sexually active? (with or without intercourse)"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q46"
  * type = #choice
  * text = "To what extent was sex enjoyable for you?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * insert enableWhenTrue(EORTCQLQBR23_Q45) 
  * required = true

* item[+]
  * linkId =  "EORTCQLQBR23_Q47-Q53"
  * type = #display
  * text = "During the past week:"

* item[+]
  * linkId = "EORTCQLQBR23_Q47"
  * type = #choice
  * text = "Did you have any pain in your arm or shoulder?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

  * item[+]
  * linkId = "EORTCQLQBR23_Q48"
  * type = #choice
  * text = "Did you have a swollen arm or hand?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q49"
  * type = #choice
  * text = "Was it difficult to raise your arm or to move it sideways?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q50"
  * type = #choice
  * text = "Have you had any pain in the area of your affected breast?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q51"
  * type = #choice
  * text = "Was the area of your affected breast swollen?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q52"
  * type = #choice
  * text = "Was the area of your affected breast oversensitive?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTCQLQBR23_Q53"
  * type = #choice
  * text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true

* item[+]
  * linkId = "EORTC QLQ-LMC21"
  * type = #choice
  * text = "During the past week: Have you had tingling hands or feet?"
  * answerValueSet = Canonical(EORTCQLQ-VS)
  * required = true
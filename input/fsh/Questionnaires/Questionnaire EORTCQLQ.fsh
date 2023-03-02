RuleSet: EORTCQuestionnaire
* item[+]
  * linkId = "Degree-of-Health-EORTC-QLQ"
  * text = "Degree of Health - EORTC-QLQ"
  * type = #group

  * item[+]
    * linkId = "EORTCQLQ-Question01-05"
    * text = "We are interested in some things about you and your health. Please answer all of the questions yourself by selecting the answer that best applies to you. There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."
    * type = #group 

    * item[+]
      * linkId = "EORTCQLQC30_Q01"
      * type = #choice
      * text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q02"
      * type = #choice
      * text = "Do you have any trouble taking a long walk?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q03"
      * type = #choice
      * text = "Do you have any trouble taking a short walk outside of the house?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q04"
      * type = #choice
      * text = "Do you need to stay in bed or a chair during the day?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q05"
      * type = #choice
      * text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question06-28"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQC30_Q06"
      * type = #choice
      * text = "Were you limited in doing either your work or other daily activities?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q07"
      * type = #choice
      * text = "Were you limited in pursuing your hobbies or other leisure time activities?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q08"
      * type = #choice
      * text = "Were you short of breath?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q09"
      * type = #choice
      * text = "Have you had pain?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q10"
      * type = #choice
      * text = "Did you need to rest?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q11"
      * type = #choice
      * text = "Have you had trouble sleeping?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q12"
      * type = #choice
      * text = "Have you felt weak?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q13"
      * type = #choice
      * text = "Have you lacked appetite?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q14"
      * type = #choice
      * text = "Have you felt nauseated?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q15"
      * type = #choice
      * text = "Have you vomited?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q16"
      * type = #choice
      * text = "Have you been constipated?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q17"
      * type = #choice
      * text = "Have you had diarrhea?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q18"
      * type = #choice
      * text = "Were you tired?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q19"
      * type = #choice
      * text = "Did pain interfere with your daily activities?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q20"
      * type = #choice
      * text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q21"
      * type = #choice
      * text = "Did you feel tense?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q22"
      * type = #choice
      * text = "Did you worry?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q23"
      * type = #choice
      * text = "Did you feel irritable?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q24"
      * type = #choice
      * text = "Did you feel depressed?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q25"
      * type = #choice
      * text = "Have you had difficulty remembering things?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q26"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your family life?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q27"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your social activities?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q28"
      * type = #choice
      * text = "Has your physical condition or medical treatment caused you financial difficulties?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question29-30"
    * type = #group
    * text = "For the following questions please select the number between 1 and 7 that best applies to you, with 1 = Very poor and 7 = Excellent."

    * item[+]
      * linkId = "EORTCQLQC30_Q29"
      * type = #choice
      * text = "How would you rate your overall health during the past week?"
      * required = true
      * answerOption[+].valueInteger = 1
      * answerOption[+].valueInteger = 2
      * answerOption[+].valueInteger = 3
      * answerOption[+].valueInteger = 4
      * answerOption[+].valueInteger = 5
      * answerOption[+].valueInteger = 6
      * answerOption[+].valueInteger = 7

    * item[+]
      * linkId = "EORTCQLQC30_Q30"
      * type = #choice
      * text = "How would you rate your overall quality of life during the past week?"
      * required = true
      * answerOption[+].valueInteger = 1
      * answerOption[+].valueInteger = 2
      * answerOption[+].valueInteger = 3
      * answerOption[+].valueInteger = 4
      * answerOption[+].valueInteger = 5
      * answerOption[+].valueInteger = 6
      * answerOption[+].valueInteger = 7

  * item[+]
    * linkId = "EORTCQLQ-Question31-43"
    * type = #group
    * text = "Patients sometimes report that they have the following symptoms or problems. Please indicate the extent to which you have experienced these symptoms or problems during the past week. Please answer by selecting the answer that best applies to you. During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q31"
      * type = #choice
      * text = "Have you had dry mouth?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q32"
      * type = #choice
      * text = "Have food and drink tasted different than usual?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q33"
      * type = #choice
      * text = "Have your eyes been painful, irritated or watery?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q34"
      * type = #choice
      * text = "Have you lost any hair?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q35"
      * type = #choice
      * text = "Have you been upset by the loss of your hair?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * enableWhen[+]
        * question = "EORTCQLQBR45_Q34"
        * operator = #!=
        * answerCoding = AgreementResponseCodeSystem#no "Not at all"

    * item[+]
      * linkId = "EORTCQLQBR45_Q36"
      * type = #choice
      * text = "Have you felt ill or unwell?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q37"
      * type = #choice
      * text = "Have you had hot flushes?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q38"
      * type = #choice
      * text = "Have you had headaches?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q39"
      * type = #choice
      * text = "Have you felt physically less attractive as a result of your disease or treatment?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q40"
      * type = #choice
      * text = "Have you felt less feminine as a result of your disease or treatment?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q41"
      * type = #choice
      * text = "Have you had problems looking at yourself naked?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q42"
      * type = #choice
      * text = "Have you been dissatisfied with your body?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q43"
      * type = #choice
      * text = "Have you worried about your health in the future?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question44-46"
    * type = #group
    * text = "During the past four weeks:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q44"
      * type = #choice
      * text = "Have you been sexually active? (with or without intercourse)"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q45"
      * type = #choice
      * text = "To what extent were you sexually active? (with or without intercourse)"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q46"
      * type = #choice
      * text = "Has sex been enjoyable for you?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * enableWhen[+]
        * question = "EORTCQLQBR45_Q45"
        * operator = #!=
        * answerCoding = AgreementResponseCodeSystem#no "Not at all"

  * item[+]
    * linkId = "EORTCQLQ-Question47-69"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q47"
      * type = #choice
      * text = "Have you had any pain in your arm or shoulder?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

      * item[+]
      * linkId = "EORTCQLQBR45_Q48"
      * type = #choice
      * text = "Have you had a swollen arm or hand?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q49"
      * type = #choice
      * text = "Have you had problems raising your arm or moving it sideways?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q50"
      * type = #choice
      * text = "Have you had any pain in the area of your affected breast?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q51"
      * type = #choice
      * text = "Has the area of your affected breast been swollen?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q52"
      * type = #choice
      * text = "Has the area of your affected breast been oversensitive?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q53"
      * type = #choice
      * text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q54"
      * type = #choice
      * text = "Have you sweated excessively?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q55"
      * type = #choice
      * text = "Have you had mood swings?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q56"
      * type = #choice
      * text = "Have you been dizzy?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q57"
      * type = #choice
      * text = "Have you had soreness in your mouth?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q58"
      * type = #choice
      * text = "Have you had any reddening in your mouth?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q59"
      * type = #choice
      * text = "Have you had pain in your hands or feet?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q60"
      * type = #choice
      * text = "Have you had any redenning on your hands or feet?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q61"
      * type = #choice
      * text = "Have you had tingling in your fingers or toes?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q62"
      * type = #choice
      * text = "Have you had numbness in your fingers or toes?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q63"
      * type = #choice
      * text = "Have you had problems with your joints?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q64"
      * type = #choice
      * text = "Have you had stiffness in your joints?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q65"
      * type = #choice
      * text = "Have you had pain in your joints?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q66"
      * type = #choice
      * text = "Have you had aches or pains in your bones?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q67"
      * type = #choice
      * text = "Have you had aches or pains in your muscles?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q68"
      * type = #choice
      * text = "Have you gained weight?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q69"
      * type = #choice
      * text = "Has weight gain been a problem for you?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question70-71"
    * type = #group
    * text = "During the past four weeks:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q70"
      * type = #choice
      * text = "Have you had a dry vagina?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q71"
      * type = #choice
      * text = "Have you had discomfort in your vagina?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question72-73"
    * type = #group
    * text = "Please answer the following two questions only if you have been sexually active:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q72"
      * type = #choice
      * text = "Have you had pain in your vagina during sexual activity?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q73"
      * type = #choice
      * text = "Have you experienced a dry vagina during sexual activity?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

  * item[+]
    * linkId = "EORTCQLQ-Question74-75"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR45_Q74"
      * type = #choice
      * text = "Have you been satisfied with the cosmetic result of the surgery?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR45_Q75"
      * type = #choice
      * text = "Have you been satisfied with the appearance of the skin of your affected breast (thoracic area)?"
      * answerValueSet = Canonical(AgreementResponseVS)
      * required = true

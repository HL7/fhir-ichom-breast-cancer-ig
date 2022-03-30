// shorthand notation to only show questions based on the surgery the patient received
RuleSet: enableWhenSurgeryType03(code)
* enableWhen[+]
  * question = "BreastQ_Surgery-03"
  * operator = #=
  * answerCoding = BreastSurgeryTypesCodeSystem{code}

Instance: Year1and2PatientReported
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient-reported response at year 1 and 2 of post-treatment follow-up"
* insert PublicationInstanceRuleset

* name = "Year1and2PatientReported"
* title = "Patient reported response at year 1 and 2 of post-treatment follow-up"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-03-PatientReported"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-03-PatientReported"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-03-PatientReported"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true

// GROUP 5 - DEGREE OF HEALTH
* item[+]
  * linkId = "Degree-of-Health-EORTC-QLQ-03"
  * text = "Degree of Health - EORTC-QLQ"
  * type = #group

  * item[+]
    * linkId = "EORTC-QLQ-Q01-Q05-03"
    * text = "We are interested in some things about you and your health. Please answer all of the questions yourself by selecting the answer that best applies to you. 
    There are no 'right' or 'wrong' answers. The information that you provide will remain strictly confidential."
    * type = #group 

    * item[+]
      * linkId = "EORTCQLQC30_Q01-03"
      * type = #choice
      * text = "Do you have any trouble doing strenuous activities, like carrying a heavy shopping bag or a suitcase?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q02-03"
      * type = #choice
      * text = "Do you have any trouble taking a long walk?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q03-03"
      * type = #choice
      * text = "Do you have any trouble taking a short walk outside of the house?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q04-03"
      * type = #choice
      * text = "Do you need to stay in bed or a chair during the day?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q05-03"
      * type = #choice
      * text = "Do you need help with eating, dressing, washing yourself or using the toilet?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId = "EORTC-QLQ-Q06-Q28-03"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQC30_Q06-03"
      * type = #choice
      * text = "Were you limited in doing either your work or other daily activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q07-03"
      * type = #choice
      * text = "Were you limited in pursuing your hobbies or other leisure time activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q08-03"
      * type = #choice
      * text = "Were you short of breath?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q09-03"
      * type = #choice
      * text = "Have you had pain?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q10-03"
      * type = #choice
      * text = "Did you need to rest?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q11-03"
      * type = #choice
      * text = "Have you had trouble sleeping?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q12-03"
      * type = #choice
      * text = "Have you felt weak?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q13-03"
      * type = #choice
      * text = "Have you lacked appetite?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q14-03"
      * type = #choice
      * text = "Have you felt nauseated?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q15-03"
      * type = #choice
      * text = "Have you vomited?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q16-03"
      * type = #choice
      * text = "Have you been constipated?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q17-03"
      * type = #choice
      * text = "Have you had diarrhea?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q18-03"
      * type = #choice
      * text = "Were you tired?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q19-03"
      * type = #choice
      * text = "Did pain interfere with your daily activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q20-03"
      * type = #choice
      * text = "Have you had difficulty in concentrating on things, like reading a newspaper or watching television?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q21-03"
      * type = #choice
      * text = "Did you feel tense?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q22-03"
      * type = #choice
      * text = "Did you worry?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q23-03"
      * type = #choice
      * text = "Did you feel irritable?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q24-03"
      * type = #choice
      * text = "Did you feel depressed?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q25-03"
      * type = #choice
      * text = "Have you had difficulty remembering things?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q26-03"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your family life?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q27-03"
      * type = #choice
      * text = "Has your physical condition or medical treatment interfered with your social activities?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQC30_Q28-03"
      * type = #choice
      * text = "Has your physical condition or medical treatment caused you financial difficulties?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId = "EORTC-QLQ-Q29-Q30-03"
    * type = #group
    * text = "For the following questions please select the number between 1 and 7 that best applies to you, with 1 = Very poor and 7 = Excellent."

    * item[+]
      * linkId = "EORTCQLQC30_Q29-03"
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
      * linkId = "EORTCQLQC30_Q30-03"
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
    * linkId = "EORTC-QLQ-Q31-Q43-03"
    * type = #group
    * text = "Patients sometimes report that they have the following symptoms or problems. Please indicate the extent to which you have experienced these symptoms or problems during the past week. 
  Please answer by selecting the answer that best applies to you. During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q31-03"
      * type = #choice
      * text = "Did you have a dry mouth?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q32-03"
      * type = #choice
      * text = "Did food and drink taste different than usual?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q33-03"
      * type = #choice
      * text = "Were your eyes painful, irritated or watery?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q34-03"
      * type = #choice
      * text = "Have you lost any hair?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q35-03"
      * type = #choice
      * text = "Were you upset by the loss of your hair?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * insert enableWhenTrue(EORTCQLQBR23_Q34-03) 

    * item[+]
      * linkId = "EORTCQLQBR23_Q36-03"
      * type = #choice
      * text = "Did you feel ill or unwell?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q37-03"
      * type = #choice
      * text = "Did you have hot flushes?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q38-03"
      * type = #choice
      * text = "Did you have headaches?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q39-03"
      * type = #choice
      * text = "Have you felt physically less attractive as a result of your disease or treatment?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q40-03"
      * type = #choice
      * text = "Have you been feeling less feminine as a result of your disease or treatment?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q41-03"
      * type = #choice
      * text = "Did you find it difficult to look at yourself naked?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q42-03"
      * type = #choice
      * text = "Have you been dissatisfied with your body?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q43-03"
      * type = #choice
      * text = "Were you worried about your health in the future?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

  * item[+]
    * linkId = "EORTC-QLQ-Q44-Q46-03"
    * type = #group
    * text = "During the past four weeks:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q44-03"
      * type = #choice
      * text = "To what extent were you interested in sex?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q45-03"
      * type = #choice
      * text = "To what extent were you sexually active? (with or without intercourse)"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q46-03"
      * type = #choice
      * text = "To what extent was sex enjoyable for you?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * insert enableWhenTrue(EORTCQLQBR23_Q45-03) 

  * item[+]
    * linkId = "EORTC-QLQ-Q47-Q53-03"
    * type = #group
    * text = "During the past week:"

    * item[+]
      * linkId = "EORTCQLQBR23_Q47-03"
      * type = #choice
      * text = "Did you have any pain in your arm or shoulder?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

      * item[+]
      * linkId = "EORTCQLQBR23_Q48-03"
      * type = #choice
      * text = "Did you have a swollen arm or hand?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q49-03"
      * type = #choice
      * text = "Was it difficult to raise your arm or to move it sideways?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q50-03"
      * type = #choice
      * text = "Have you had any pain in the area of your affected breast?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q51-03"
      * type = #choice
      * text = "Was the area of your affected breast swollen?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q52-03"
      * type = #choice
      * text = "Was the area of your affected breast oversensitive?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTCQLQBR23_Q53-03"
      * type = #choice
      * text = "Have you had skin problems on or in the area of your affected breast (e.g., itchy, dry, flaky)?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

    * item[+]
      * linkId = "EORTC QLQ-LMC21-03"
      * type = #choice
      * text = "Have you had tingling hands or feet?"
      * answerValueSet = Canonical(EORTCQLQValueSet)
      * required = true

// BreastQ
* item[+]
  * linkId = "Degree-of-Health-BreastQ-03"
  * text = "Degree of Health BreastQ"
  * type = #group
    
  * item[+]
    * linkId = "BreastQ_Surgery-03"
    * type = #choice
    * text = "Which type of surgery did you receive?"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet) 
    * required = true

// Group 1 - Patients with mastectomy without immediate reconstruction
  * item[+]
    * linkId = "Group_mastectomy-posttreatment-03"
    * type = #group
    * text = "With your breast area in mind, in the past 2 weeks, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType03(#2)
    * enableBehavior = #all

    * item[+]
      * linkId = "BREASTQMASTP_Q01-03"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType03(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q02-03"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType03(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q03-03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType03(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q04-03"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType03(#2)


  // Group 2 - Patients with breast conserving therapy (#0 and #1)
  * item[+]
    * linkId = "Group-BCT-posttreatment-03"
    * type = #group
    * text = "With your breasts in mind, in the past 2 weeks, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType03(#0)
    * insert enableWhenSurgeryType03(#1)
    * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q01-03"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q02-03"
      * type = #choice
      * text = "The shape of your lumpectomy breast when you are wearing a bra?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any
      
    * item[+]
      * linkId = "BREASTQBCTP_Q03-03"
      * type = #choice
      * text = "How normal you feel in your clothes?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q04-03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any
      
    * item[+]
      * linkId = "BREASTQBCTP_Q05-03"
      * type = #choice
      * text = "How your lumpectomy breast sits/hangs?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "e"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q06-03"
      * type = #choice
      * text = "How smoothly shaped your lumpectomy breast looks?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "f"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q07-03"
      * type = #choice
      * text = "The contour (outline) of your lumpectomy breast?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "g"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q08-03"
      * type = #choice
      * text = "How equal in size your breasts are to each other?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "h"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q09-03"
      * type = #choice
      * text = "How normal your lumpectomy breast looks?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "i"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q10-03"
      * type = #choice
      * text = "How much your breast look the same?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "j"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q11-03"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "k"
      * insert enableWhenSurgeryType03(#0)
      * insert enableWhenSurgeryType03(#1)
      * enableBehavior = #any

  // Group 3 - Patients with reconstruction (#3, #4 and #5) 
  * item[+]
    * linkId = "Group_reconstruction-posttreatment-03"
    * type = #group
    * text = "With your breasts in mind, in the past 2 weeks, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType03(#3)
    * insert enableWhenSurgeryType03(#4)
    * insert enableWhenSurgeryType03(#5)
    * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q01-03"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "a"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q02-03"
      * type = #choice
      * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "b"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q03-03"
      * type = #choice
      * text = "How normal you feel in your clothes?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "c"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q04-03"
      * type = #choice
      * text = "The size of your reconstructed breast(s)?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "d"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q05-03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "e"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q06-03"
      * type = #choice
      * text = "How your breasts are lined up in relation to each other?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "f"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q07-03"
      * type = #choice
      * text = "How comfortable your bras fit?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "g"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q08-03"
      * type = #choice
      * text = "The softness of your reconstructed breast(s)?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "h"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q09-03"
      * type = #choice
      * text = "How equal in size your breasts are to each other?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "i"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q10-03"
      * type = #choice
      * text = "How natural your reconstructed breast(s) looks?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "j"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any
    * item[+]
      * linkId = "BREASTQRECP_Q11-03"
      * type = #choice
      * text = "How naturally your reconstructed breast(s) sits/hangs?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "k"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q12-03"
      * type = #choice
      * text = "How your reconstructed breast(s) feel to touch?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "l"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q13-03"
      * type = #choice
      * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "m"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q14-03"
      * type = #choice
      * text = "How closely matched your breasts are to each other?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "n"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any
    * item[+]
      * linkId = "BREASTQRECP_Q15-03"
      * type = #choice
      * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "o"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQRECP_Q16-03"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(BreastQValueSet)
      * prefix = "p"
      * insert enableWhenSurgeryType03(#3)
      * insert enableWhenSurgeryType03(#4)
      * insert enableWhenSurgeryType03(#5)
      * enableBehavior = #any


// FACT-ES
* item[+]
  * linkId = "Degree-of-Health-FACTES-03"
  * type = #group
  * text = "Please indicate your response as it applies to the past 7 days:"

  * item[+]
    * linkId = "FACTES_BRM1-03"
    * type = #choice
    * text = "I have pain in my joints"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES4-03"
    * type = #choice
    * text = "I have vaginal discharge"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES5-03"
    * type = #choice
    * text = "I have vaginal itching/irritation"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES6-03"
    * type = #choice
    * text = "I have vaginal bleeding or spotting"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES7-03"
    * type = #choice
    * text = "I have vaginal dryness"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)

  * item[+]
    * linkId = "FACTES_ES8-03" 
    * type = #choice
    * text = "I have pain or discomfort with intercourse"
    * required = true
    * answerValueSet = Canonical(FACTESValueSet)


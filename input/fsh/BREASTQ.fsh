/* EnableWhen function to only show questions based on their timing. 
#0 = baseline, #1 = 1 year post treatment #2 = 2 years post-treatment */ 
RuleSet: enableWhenTiming(code)
* enableWhen[+]
  * question = "BreastQ_Timing"
  * operator = #=
  * answerCoding = ResponseTimingCodeSystem{code}

RuleSet: enableWhenTimingNotEquals(code)
* enableWhen[+]
  * question = "BreastQ_Timing"
  * operator = #!=
  * answerCoding = ResponseTimingCodeSystem{code}

/* EnableWhen function to only show questions based on the surgery the patient received */ 
RuleSet: enableWhenSurgeryType(code)
* enableWhen[+]
  * question = "BreastQ_Surgery"
  * operator = #=
  * answerCoding = BreastQSurgeryCodeSystem{code}

Instance: BreastQ
InstanceOf: Questionnaire
Usage: #definition
Description: "Patient Reported Outcomes Instrument about quality of life of patients with breast cancer"
* insert PublicationInstanceRuleset

* name = "BreastQ"
* title = "BREAST-Q: Patient Reported Outcomes Instrument"
* status = #draft

* item[+]
  * linkId =  "BreastQ_Timing"
  * type = #choice
  * text = "What is the timing of the response of this questionnaire?"
  * answerValueSet = Canonical(ResponseTimingBreastQValueSet) 
  * required = true

* item[+]
  * linkId =  "BreastQ_Surgery"
  * type = #choice
  * text = "Which type of surgery did you receive?"
  * answerValueSet = Canonical(BreastQSurgeryValueSet) 
  * required = true

//Group 1: Patients with mastectomy (#2) - Baseline (=#0)
* item[+]
  * linkId =  "Group-Mastectomy-baseline"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#2)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all


// Group 2.1 - Patients with breast conserving therapy (#0) + Baseline (#0)
* item[+]
  * linkId =  "Group-BCT-Baseline-1"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#0)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q01.1"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q02.1"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q03.1"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q04.1"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all


// Group 2.2 - Patients with breast conserving therapy (#1) - Baseline (=#0)
* item[+]
  * linkId =  "Group-BCT-Baseline-2"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#1)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q01.2"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q02.2"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q03.2"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q04.2"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

// Group 3.1 - Patients with reconstruction (#3) - Baseline (#0)
* item[+]
  * linkId =  "Group-Resection-Baseline-1"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#3)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q01.1"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q02.1"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q03.1"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q04.1"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

// Group 3.2 - Patients with reconstruction (#4) - Baseline (#0)
* item[+]
  * linkId =  "Group-Resection-Baseline-2"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#4)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q01.2"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q02.2"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q03.2"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q04.2"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

// Group 3.3 - Patients with reconstruction (#5) - Baseline (#0)
* item[+]
  * linkId =  "Group-Resection-Baseline-3"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTiming(#0)
  * insert enableWhenSurgeryType(#5)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q01.3"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q02.3"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q03.3"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q04.3"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTiming(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all    

// Group 4 - Patients with mastectomy (#2) - 1 and 2 year post treatment (#1 and #2) 
* item[+]
  * linkId =  "Group_mastectomy-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#2)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all


// Group 5.1 - Patients with breast conserving therapy (#0)- 1 and 2 year post treatment (#1 and #2)
* item[+]
  * linkId =  "Group-BCT0-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#0)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q01.1"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q02.1"
    * type = #choice
    * text = "The shape of your lumpectomy breast when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all
    
  * item[+]
    * linkId =  "BREASTQBCTP_Q03.1"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q04.1"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q05.1"
    * type = #choice
    * text = "How your lumpectomy breast sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q06.1"
    * type = #choice
    * text = "How smoothly shaped your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q07.1"
    * type = #choice
    * text = "The contour (outline) of your lumpectomy breast?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q08.1"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q09.1"
    * type = #choice
    * text = "How normal your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q10.1"
    * type = #choice
    * text = "How much your breast look the same?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q11.1"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#0)
    * enableBehavior = #all


// Group 5.2 - Patients with breast conserving therapy (#1)- 1 and 2 year post treatment (#1 and #2)
* item[+]
  * linkId =  "Group-BCT1-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#1)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q01.2"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q02.2"
    * type = #choice
    * text = "The shape of your lumpectomy breast when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all
    
  * item[+]
    * linkId =  "BREASTQBCTP_Q03.2"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q04.2"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q05.2"
    * type = #choice
    * text = "How your lumpectomy breast sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q06.2"
    * type = #choice
    * text = "How smoothly shaped your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q07.2"
    * type = #choice
    * text = "The contour (outline) of your lumpectomy breast?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q08.2"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q09.2"
    * type = #choice
    * text = "How normal your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q10.2"
    * type = #choice
    * text = "How much your breast look the same?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q11.2"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #all


// Group 6.1 - Patients with reconstruction (#3) - 1 and 2 year post treatment (#1 and #2)
* item[+]
  * linkId =  "Group_reconstruction3-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#3)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q01.1"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q02.1"
    * type = #choice
    * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q03.1"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q04.1"
    * type = #choice
    * text = "The size of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q05.1"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q06.1"
    * type = #choice
    * text = "How your breasts are lined up in relation to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q07.1"
    * type = #choice
    * text =  "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q08.1"
    * type = #choice
    * text = "The softness of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q09.1"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q10.1"
    * type = #choice
    * text = "How natural your reconstructed breast(s) looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q11.1"
    * type = #choice
    * text = "How naturally your reconstructed breast(s) sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q12.1"
    * type = #choice
    * text = "How your reconstructed breast(s) feel to touch?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "l"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q13.1"
    * type = #choice
    * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "m"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q14.1"
    * type = #choice
    * text = "How closely matched your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "n"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q15.1"
    * type = #choice
    * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "o"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q16.1"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "p"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#3)
    * enableBehavior = #all

// Group 6.2 - Patients with reconstruction (#4) - 1 and 2 year post treatment (#1 and #2)
* item[+]
  * linkId =  "Group_reconstruction4-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#4)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q01.2"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q02.2"
    * type = #choice
    * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q03.2"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q04.2"
    * type = #choice
    * text = "The size of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q05.2"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q06.2"
    * type = #choice
    * text = "How your breasts are lined up in relation to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q07.2"
    * type = #choice
    * text =  "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q08.2"
    * type = #choice
    * text = "The softness of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q09.2"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q10.2"
    * type = #choice
    * text = "How natural your reconstructed breast(s) looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q11.2"
    * type = #choice
    * text = "How naturally your reconstructed breast(s) sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q12.2"
    * type = #choice
    * text = "How your reconstructed breast(s) feel to touch?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "l"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q13.2"
    * type = #choice
    * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "m"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q14.2"
    * type = #choice
    * text = "How closely matched your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "n"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q15.2"
    * type = #choice
    * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "o"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q16.2"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "p"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#4)
    * enableBehavior = #all

// Group 6.3 - Patients with reconstruction (#5) - 1 and 2 year post treatment (#1 and #2)
* item[+]
  * linkId =  "Group_reconstruction5-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  * insert enableWhenTimingNotEquals(#0)
  * insert enableWhenSurgeryType(#5)
  * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q01.3"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q02.3"
    * type = #choice
    * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q03.3"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q04.3"
    * type = #choice
    * text = "The size of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q05.3"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q06.3"
    * type = #choice
    * text = "How your breasts are lined up in relation to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q07.3"
    * type = #choice
    * text =  "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q08.3"
    * type = #choice
    * text = "The softness of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q09.3"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q10.3"
    * type = #choice
    * text = "How natural your reconstructed breast(s) looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q11.3"
    * type = #choice
    * text = "How naturally your reconstructed breast(s) sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q12.3"
    * type = #choice
    * text = "How your reconstructed breast(s) feel to touch?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "l"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q13.3"
    * type = #choice
    * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "m"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q14.3"
    * type = #choice
    * text = "How closely matched your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "n"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q15.3"
    * type = #choice
    * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "o"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q16.3"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "p"
    * insert enableWhenTimingNotEquals(#0)
    * insert enableWhenSurgeryType(#5)
    * enableBehavior = #all


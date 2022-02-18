/* EnableWhen function to only show questions based on their timing. 
#0 = baseline, #1 = 1 year post treatment #2 = 2 years post-treatment */ 
RuleSet: enableWhenTiming(code)
* enableWhen
  * question = "BreastQ_Timing"
  * operator = #=
  * answerCoding = ResponseTimingCodeSystem{code}

/* EnableWhen function to only show questions based on the surgery the patient received */ 
RuleSet: enableWhenSurgeryType(code)
* enableWhen
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

//Group 1: Patients with mastectomy - Baseline (=#0)
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
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMAST_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

// Group 2 - Patients with breast conserving therapy - Baseline (=#0)
* item[+]
  * linkId =  "Group-BCT-Baseline"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  //* insert enableWhenTiming(0)
  //* insert enableWhenSurgeryType(0|1)
  //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCT_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

// Group 3 - Patients with reconstruction - Baseline (=#0)
* item[+]
  * linkId =  "Group-Resection-Baseline"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  //* insert enableWhenTiming(0)
  //* insert enableWhenSurgeryType(3|4|5)
  //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQREC_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(0)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

// Group 4 - Patients with mastectomy - 1- and 2-year post treatment
* item[+]
  * linkId =  "Group_mastectomy-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  //* insert enableWhenTiming(1|2)
  //* insert enableWhenSurgeryType(2|3|4|5)
  //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q02"
    * type = #choice
    * text = "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q03"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQMASTP_Q04"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(2|3|4|5)
    //* enableBehavior = #all

// Group 5 - Patients with breast conserving therapy - 1- and 2-year post treatment
* item[+]
  * linkId =  "Group-BCT-posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  //* insert enableWhenTiming(1|2)
  //* insert enableWhenSurgeryType(0|1)
  //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q02"
    * type = #choice
    * text = "The shape of your lumpectomy breast when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all
    
  * item[+]
    * linkId =  "BREASTQBCTP_Q03"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q04"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q05"
    * type = #choice
    * text = "How your lumpectomy breast sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q06"
    * type = #choice
    * text = "How smoothly shaped your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q07"
    * type = #choice
    * text = "The contour (outline) of your lumpectomy breast?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q08"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q09"
    * type = #choice
    * text = "How normal your lumpectomy breast looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q10"
    * type = #choice
    * text = "How much your breast look the same?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQBCTP_Q11"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(0|1)
    //* enableBehavior = #all

// Group 6 - Patients with reconstruction - 1- and 2-year post treatment
* item[+]
  * linkId =  "Group_reconstruction_posttreatment"
  * type = #group
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  //* insert enableWhenTiming(1|2)
  //* insert enableWhenSurgeryType(3|4|5)
  //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q01"
    * type = #choice
    * text = "How you look in the mirror clothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "a"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q02"
    * type = #choice
    * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "b"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q03"
    * type = #choice
    * text = "How normal you feel in your clothes?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "c"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q04"
    * type = #choice
    * text = "The size of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "d"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q05"
    * type = #choice
    * text = "Being able to wear clothing that is more fitted?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "e"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q06"
    * type = #choice
    * text = "How your breasts are lined up in relation to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "f"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q07"
    * type = #choice
    * text =  "How comfortable your bras fit?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "g"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q08"
    * type = #choice
    * text = "The softness of your reconstructed breast(s)?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "h"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q09"
    * type = #choice
    * text = "How equal in size your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "i"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q10"
    * type = #choice
    * text = "How natural your reconstructed breast(s) looks?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "j"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q11"
    * type = #choice
    * text = "How naturally your reconstructed breast(s) sits/hangs?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "k"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q12"
    * type = #choice
    * text = "How your reconstructed breast(s) feel to touch?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "l"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q13"
    * type = #choice
    * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "m"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q14"
    * type = #choice
    * text = "How closely matched your breasts are to each other?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "n"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q15"
    * type = #choice
    * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "o"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all

  * item[+]
    * linkId =  "BREASTQRECP_Q16"
    * type = #choice
    * text = "How you look in the mirror unclothed?"
    * answerValueSet = Canonical(BreastQValueSet)
    * prefix = "p"
    //* insert enableWhenTiming(1|2)
    //* insert enableWhenSurgeryType(3|4|5)
    //* enableBehavior = #all




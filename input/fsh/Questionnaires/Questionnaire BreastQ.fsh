RuleSet: BreastQFollowup
* item[+]
  * linkId = "Degree-of-Health-BreastQ"
  * text = "Degree of Health BreastQ"
  * type = #group
    
  * item[+]
    * linkId = "BreastQ_Surgery"
    * type = #choice
    * text = "Which type of surgery did you receive?"
    * answerValueSet = Canonical(BreastSurgeryTypeVS) 
    * required = true

// Group 1 - Patients with mastectomy without immediate reconstruction
  * item[+]
    * linkId = "MastectomyFollowUp"
    * type = #group
    * text = "With your breast area in mind, in the past 2 weeks, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#2)
    * enableBehavior = #all

    * item[+]
      * linkId = "BREASTQMASTP_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q02"
      * type = #choice
      * text = "How comfortably your bras fit?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q03"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#2)

    * item[+]
      * linkId = "BREASTQMASTP_Q04"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#2)


  // Group 2 - Patients with breast conserving therapy (#0 and #1)
  * item[+]
    * linkId = "BreastConservingTherapyFollowUp"
    * type = #group
    * text = "The following questions are about your breasts and your breast cancer treatment (by treatment, we mean lumpectomy with or without radiation). If you have had a lumpectomy and radiation of both breasts, answer these questions thinking of the breast you are least satisfied with. With your breasts in mind, in the past week, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#0)
    * insert enableWhenSurgeryType(#1)
    * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q02"
      * type = #choice
      * text = "The shape of your lumpectomy breast when you are wearing a bra?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any
      
    * item[+]
      * linkId = "BREASTQBCTP_Q03"
      * type = #choice
      * text = "How normal you feel in your clothes?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q04"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any
      
    * item[+]
      * linkId = "BREASTQBCTP_Q05"
      * type = #choice
      * text = "How your lumpectomy breast sits/hangs?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q06"
      * type = #choice
      * text = "How smoothly shaped your lumpectomy breast looks?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q07"
      * type = #choice
      * text = "The contour (outline) of your lumpectomy breast?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q08"
      * type = #choice
      * text = "How equal in size your breasts are to each other?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q09"
      * type = #choice
      * text = "How normal your lumpectomy breast looks?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q10"
      * type = #choice
      * text = "How much your breast look the same?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

    * item[+]
      * linkId = "BREASTQBCTP_Q11"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#0)
      * insert enableWhenSurgeryType(#1)
      * enableBehavior = #any

  // Group 3 - Patients with reconstruction (#3) 
  * item[+]
    * linkId = "ReconstructionFollowUp"
    * type = #group
    * text = "If you have had a mastectomy and reconstruction of both breasts, answer these questions thinking of the breast you are least satisfied with. With your breasts in mind ,in the past week, how satisfied or dissatisfied have you been with:"
    * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q01"
      * type = #choice
      * text = "How you look in the mirror clothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q02"
      * type = #choice
      * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q03"
      * type = #choice
      * text = "How normal you feel in your clothes?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q04"
      * type = #choice
      * text = "The size of your reconstructed breast(s)?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q05"
      * type = #choice
      * text = "Being able to wear clothing that is more fitted?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q06"
      * type = #choice
      * text = "How your breasts are lined up in relation to each other?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q07"
      * type = #choice
      * text = "How comfortably your bras fit?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q08"
      * type = #choice
      * text = "The softness of your reconstructed breast(s)?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q09"
      * type = #choice
      * text = "How equal in size your breasts are to each other?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q10"
      * type = #choice
      * text = "How natural your reconstructed breast(s) looks?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q11"
      * type = #choice
      * text = "How naturally your reconstructed breast(s) sits/hangs?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q12"
      * type = #choice
      * text = "How your reconstructed breast(s) feel to touch?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q13"
      * type = #choice
      * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q14"
      * type = #choice
      * text = "How closely matched (similar) your breasts are to each other?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)

    * item[+]
      * linkId = "BREASTQRECP_Q15"
      * type = #choice
      * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)
 
    * item[+]
      * linkId = "BREASTQRECP_Q16"
      * type = #choice
      * text = "How you look in the mirror unclothed?"
      * answerValueSet = Canonical(SatisfactionResponseVS)
      * insert enableWhenSurgeryType(#3)


RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: BreastQ
InstanceOf: Questionnaire
Usage: #definition
Description: "Questionnaire about quality of life of patients with breast cancer"

name: "BreastQ"
title: "Questionnaire regarding quality of life of breastcancer patients"
status = #draft

* item[+]
  * linkId =  "BREASTQMAST_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"
  
* item[+]
  * linkId =  "BREASTQMAST_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQMAST_Q02"
  * type = #choice
  * text = "How comfortable your bras fit?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"

* item[+]
  * linkId =  "BREASTQMAST_Q03"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"

* item[+]
  * linkId =  "BREASTQMAST_Q04"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"

* item[+]
  * linkId =  "BREASTQBCT_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"

* item[+]
  * linkId =  "BREASTQBCT_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQBCT_Q02"
  * type = #choice
  * text = "How comfortable your bras fit?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"


* item[+]
  * linkId =  "BREASTQBCT_Q03"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"

* item[+]
  * linkId =  "BREASTQBCT_Q04"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"

* item[+]
  * linkId =  "BREASTQREC_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"

* item[+]
  * linkId =  "BREASTQREC_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQREC_Q02"
  * type = #choice
  * text = "How comfortable your bras fit?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"

* item[+]
  * linkId =  "BREASTQREC_Q03"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"

* item[+]
  * linkId =  "BREASTQREC_Q04"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"


* item[+]
  * linkId =  "BREASTQMASTP_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"

* item[+]
  * linkId =  "BREASTQMASTP_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQMASTP_Q02"
  * type = #choice
  * text = "How comfortable your bras fit?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"

* item[+]
  * linkId =  "BREASTQMASTP_Q03"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"


* item[+]
  * linkId =  "BREASTQMASTP_Q04"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"

* item[+]
  * linkId =  "BREASTQBCTP_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"

* item[+]
  * linkId =  "BREASTQBCTP_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQBCTP_Q02"
  * type = #choice
  * text = "The shape of your lumpectomy breast when you are wearing a bra?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"

* item[+]
  * linkId =  "BREASTQBCTP_Q03"
  * type = #choice
  * text = "How normal you feel in your clothes?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"

* item[+]
  * linkId =  "BREASTQBCTP_Q04"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"

* item[+]
  * linkId =  "BREASTQBCTP_Q05"
  * type = #choice
  * text = "How your lumpectomy breast sits/hangs?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "e"

* item[+]
  * linkId =  "BREASTQBCTP_Q06"
  * type = #choice
  * text = "How smoothly shaped your lumpectomy breast looks?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "f"

* item[+]
  * linkId =  "BREASTQBCTP_Q07"
  * type = #choice
  * text = "The contour (outline) of your lumpectomy breast?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "g"

* item[+]
  * linkId =  "BREASTQBCTP_Q08"
  * type = #choice
  * text = "How equal in size your breasts are to each other?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "h"

* item[+]
  * linkId =  "BREASTQBCTP_Q09"
  * type = #choice
  * text = "How normal your lumpectomy breast looks?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "i"

* item[+]
  * linkId =  "BREASTQBCTP_Q10"
  * type = #choice
  * text = "How much your breast look the same?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "j"

* item[+]
  * linkId =  "BREASTQBCTP_Q11"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "k"

* item[+]
  * linkId =  "BREASTQRECP_Q00"
  * type = #display
  * text = "With your breasts in mind, or if you have had a mastectomy, with your breast area in mind, in the past 2 weeks, 
  how satisfied or dissatisfied have you been with:"

* item[+]
  * linkId =  "BREASTQRECP_Q01"
  * type = #choice
  * text = "How you look in the mirror clothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "a"

* item[+]
  * linkId =  "BREASTQRECP_Q02"
  * type = #choice
  * text = "The shape of your reconstructed breast(s) when you are wearing a bra?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "b"

* item[+]
  * linkId =  "BREASTQRECP_Q03"
  * type = #choice
  * text = "How normal you feel in your clothes?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "c"

* item[+]
  * linkId =  "BREASTQRECP_Q04"
  * type = #choice
  * text = "The size of your reconstructed breast(s)?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "d"

* item[+]
  * linkId =  "BREASTQRECP_Q05"
  * type = #choice
  * text = "Being able to wear clothing that is more fitted?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "e"

* item[+]
  * linkId =  "BREASTQRECP_Q06"
  * type = #choice
  * text = "How your breasts are lined up in relation to each other?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "f"

* item[+]
  * linkId =  "BREASTQRECP_Q07"
  * type = #choice
  * text =  "How comfortable your bras fit?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "g"


* item[+]
  * linkId =  "BREASTQRECP_Q08"
  * type = #choice
  * text ="The softness of your reconstructed breast(s)?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "h"

* item[+]
  * linkId =  "BREASTQRECP_Q09"
  * type = #choice
  * text = "How equal in size your breasts are to each other?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "i"

* item[+]
  * linkId =  "BREASTQRECP_Q10"
  * type = #choice
  * text = "How natural your reconstructed breast(s) looks?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "j"

* item[+]
  * linkId =  "BREASTQRECP_Q11"
  * type = #choice
  * text = "How naturally your reconstructed breast(s) sits/hangs?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "k"

* item[+]
  * linkId =  "BREASTQRECP_Q12"
  * type = #choice
  * text = "How your reconstructed breast(s) feel to touch?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "l"

* item[+]
  * linkId =  "BREASTQRECP_Q13"
  * type = #choice
  * text = "How much your reconstructed breast(s) feels like a natural part of your body?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "m"

* item[+]
  * linkId =  "BREASTQRECP_Q14"
  * type = #choice
  * text = "How closely matched your breasts are to each other?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "n"

* item[+]
  * linkId =  "BREASTQRECP_Q15"
  * type = #choice
  * text = "How your reconstructed breast(s) look now compared to before you had any breast surgery?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "o"

* item[+]
  * linkId =  "BREASTQRECP_Q16"
  * type = #choice
  * text = "How you look in the mirror unclothed?"
  * answerValueSet = Canonical(BreastQ-VS)
  * prefix = "p"
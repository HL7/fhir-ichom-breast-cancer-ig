// Rulesets: shorthand notation to only show a particular question based on the type of comorbidity

// identifies if the question is true 
RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true
  
// identifies the type of comorbidity
RuleSet: enableWhenComorbidity(code)
* enableWhen
  * question = "ComorbiditiesSACQ"
  * operator = #=
  * answerCoding = {code}

// identifies the type of treatment with ICHOM custom codes
RuleSet: enableWhenTreatment(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

// identifies the type of snomedcode for treatment
RuleSet: enableWhenTreatmentSCT(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = {code}

// identifies if there was cancer recurrence
RuleSet: enableWhenRecurrence(code)
* enableWhen[+]
  * question = "MalignancyRecur"
  * operator = #=
  * answerCoding = RecurrenceCodeSystem{code}

// identifies the type of breast cancer surgery the patient received
RuleSet: enableWhenSurgeryType(code)
* enableWhen[+]
  * question = "BreastQ_Surgery"
  * operator = #=
  * answerCoding = BreastSurgeryTypesCodeSystem{code}


// identifies the which molecular profiling tool was used
RuleSet: enableWhenSMolecularProfiling(code)
* enableWhen[+]
  * question = "MolecularProfiling"
  * operator = #=
  * answerCoding = MolecularProfilingCodeSystem{code}

// Copyrights BreastQ
RuleSet: BreastQCopyrights
* ^copyright = "BREAST-Q® VERSION 2.0 © Memorial Sloan Kettering Cancer Center and The University of British Columbia, 2017, All rights reserved"

// Copyrights EORTC-QLQ-BR-45
RuleSet: EORTCBR45Copyrights
* ^copyright = "QLQ-BR45 © 2018 EORTC Quality of Life Group. All right reserved. Phase IV module"

// Copyrights EORTC-QLQ-C-30
RuleSet: EORTCC30Copyrights
* ^copyright = "© Copyright 1995, 1999, 2001 EORTC, Brussels. EORTC Quality of Life Group. All rights reserved. Version 3.0"

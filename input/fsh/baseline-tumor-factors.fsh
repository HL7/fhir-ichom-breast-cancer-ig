// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: BaselineTumorFactors
InstanceOf: Questionnaire
Usage: #definition
Title: "Baseline Tumor Factors"
Description: "Baseline Tumor Factors"
* insert PublicationInstanceRuleset

* name = "BaselineTumorFactors"
* status = #draft

* item[+]
  * linkId = "HistologicalDiagnosisDate"
  * type = #date
  * text = "The initial date of histological diagnosis"

* item[+]
  * linkId = "HISTOTYPE"
  * type = #choice
  * text = "Indicate histologic type of the tumor (select all that apply)"
  * answerValueSet = Canonical(HistologicalType)
  * required = true
  * repeats = true

* item[+]
  * linkId = "MUTBC"
  * type = #choice
  * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
  * answerValueSet = Canonical(GeneticMutation)
  * required = true

* item[+]
  * linkId = "GRADEINV"
  * type = #choice
  * text = "Indicate grade of invasive component of tumor"
  * answerValueSet = Canonical(InvasionGrade)
  * required = true

* item[+]
  * linkId = "GRADEDCIS"
  * type = #choice
  * text = "Indicate tumor grade of DCIS component of tumor"
  * answerValueSet = Canonical(TumorGrade)
  * required = true

* item[+]
  * linkId = "received_neoadjuvant_therapy"
  * type = #boolean
  * text = "Has the patient received neoadjuvant therapy?"
  * required = true

* item[+]
  * linkId = "TNMCT_BREAST"
  * type = #choice
  * text = "Clinical tumor stage (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(ClinicalTumorStage)
  * insert enableWhenTrue(received_neoadjuvant_therapy)

* item[+]
  * linkId = "TNMCN_BREAST"
  * type = #choice
  * text = "Clinical nodal stage (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(ClinicalNodalStage)
  * insert enableWhenTrue(received_neoadjuvant_therapy)

* item[+]
  * linkId = "TNMCM_BREAST"
  * type = #choice
  * text = "Clinical distant metastasis (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(ClinicalDistantMetastasis)
  * insert enableWhenTrue(received_neoadjuvant_therapy)

* item[+]
  * linkId = "received_surgery"
  * type = #boolean
  * text = "Has the patient received surgery?"
  * required = true

* item[+]
  * linkId = "TNMPT_BREAST"
  * type = #choice
  * text = "Pathological tumor stage (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(PathologicalTumorStage)
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "TNMPN_BREAST"
  * type = #choice
  * text = "Pathological nodal stage (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(PathologicalNodalStage)
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "TNMPM_BREAST"
  * type = #choice
  * text = "Pathological distant metastasis (per AJCC 5th - 7th Ed.)"
  * answerValueSet = Canonical(PathologicalDistantMetastasis)
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "SIZEINV"
  * type = #integer
  // todo: automatically fill in 999 if it's not filled in
  * text = "Indicate size of invasive component of tumor (in mm, 999 if unknown)"
  * required = true
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "NumLymphNodesResect"
  * type = #integer
  * text = "Number of lymph nodes resected (999 if unknown)"
  * required = true
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "LYMPHINV_BREAST"
  * type = #integer
  * text = "Number of lymph nodes involved according to the TNM stage AJCC 7th Ed. (999 if unknown)"
  * required = true
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "ERSTATUS"
  * type = #choice
  * text = "Indicate if the estrogen receptor status is positive"
  * answerValueSet = Canonical(ReceptorStatus)
  * required = true
  * insert enableWhenTrue(received_surgery)

* item[+]
  * linkId = "PRSTATUS"
  * type = #choice
  * text = "Indicate if the progesterone receptor status is positive"
  * answerValueSet = Canonical(ReceptorStatus)
  * insert enableWhenTrue(received_surgery)
  * required = true

* item[+]
  * linkId = "HER2STATUS"
  * type = #choice
  * text = "Indicate if the HER2 receptor status is positive"
  * answerValueSet = Canonical(HER2ReceptorStatus)
  * insert enableWhenTrue(received_surgery)
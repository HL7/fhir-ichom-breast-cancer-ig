// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTreatment(code)
* enableWhen[+]
  * question = "TREATMENT_BREAST"
  * operator = #=
  * answerCoding = TreatmentTypesCodeSystem{code}

Instance: TreatmentVariables
InstanceOf: Questionnaire
Usage: #definition
Description: "Treatment variables"
* insert PublicationInstanceRuleset

* name = "TreatmentVariables"
* title = "Treatment variables"
* status = #draft

* item[+]
  * linkId = "TREATMENT_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
  * answerValueSet = Canonical(TreatmentTypeValueSet)
  * required = true
  * repeats = true

* item[+]
  // TODO: handle unknown dates, see notes.md for options
  * linkId = "SURGERY_BREAST"
  * type = #choice
  * text = "Indicate whether the patient received surgery during the last year:"
  * insert enableWhenTreatment(#1)
  * answerValueSet = Canonical(BreastSurgeryTypeValueSet)

* item[+]
  * linkId = "SurgeryDate"
  * type = #date
  * text = "Provide the date of surgery:"
  * insert enableWhenTreatment(#1)

* item[+]
  * linkId = "SURGERYAX"
  * type = #choice
  * text = "Indicate whether the patient received surgery to the axilla during the last year:"
  * insert enableWhenTreatment(#2)
  * answerValueSet = Canonical(SurgeryAxillaTypeValueSet)

* item[+]
  * linkId = "SURGERYAXDATE"
  * type = #date
  * text = "Please provide the date of surgery to the axilla:"  
  * insert enableWhenTreatment(#2)

* item[+]
  * linkId = "SURGERYAX2"
  * type = #choice
  * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
  * answerValueSet = Canonical(BooleanExtendedValueSet)
  * enableWhen[+]
    * question = "SURGERYAX"
    * operator = #=
    * answerCoding = SurgeryAxillaCodeSystem#0
  * enableWhen[+]
    * question = "SURGERYAX"
    * operator = #=
    * answerCoding = SurgeryAxillaCodeSystem#1
  * enableBehavior = #any

* item[+]  
  * linkId = "SURGERYAX2DATE"
  * type = #date
  * text = "Please provide the date of axillary clearance:"
  * enableWhen[+]
    * question = "SURGERYAX2"
    * operator = #=
    * answerCoding = BooleanExtendedCodeSystem#1


* item[+] 
  * linkId = "RECONSTRUCT"
  * type = #choice
  * text = "Indicate whether the patient received a delayed reconstruction during the last year:"
  * answerValueSet = Canonical(DelayedReconstructionValueSet)
  * insert enableWhenTreatment(#3)

* item[+]  
  * linkId = "RECONSTRUCTDATE"
  * type = #date
  * text = "Please provide the date of delayed reconstruction:"
  * insert enableWhenTreatment(#3)

* item[+]  
  * linkId = "RADIOTX_BREAST"
  * type = #choice
  * text = "If the patient received radiotherapy during the last year, please indicate the intent of radiotherapy:"
  * answerValueSet = Canonical(TherapyIntentValueSet)
  * insert enableWhenTreatment(#4)

* item[+]  
  * linkId = "RADIOTXTYPE_BREAST"
  * type = #choice
  * text = "Indicate location/type of radiotherapy:"
  * answerValueSet = Canonical(RadiotherapyLocationValueSet)
  * insert enableWhenTreatment(#4)

* item[+]  
  * linkId = "RadioTxStartDate"
  * type = #date
  * text = "Please provide the start date of radiotherapy:"
  * insert enableWhenTreatment(#4)

* item[+]
  * linkId = "RadioTxStopDate"
  * type = #date
  * text = "Please provide the stop date of radiotherapy:"
  * insert enableWhenTreatment(#4)


* item[+]
  * linkId = "CHEMOTXINTENT"
  * type = #choice
  * text = "If the patient received chemotherapy during the last year, please indicate the intent of chemotherapy:"
  * answerValueSet = Canonical(TherapyIntentValueSet)
  * insert enableWhenTreatment(#5)

* item[+]
  * linkId = "CHEMOTXTYPE_BREAST"
  * type = #choice
  * text = "Indicate what type of chemotherapy (select all that apply):"
  * answerValueSet = Canonical(ChemotherapyTypeValueSet)
  * insert enableWhenTreatment(#5)

* item[+]
  * linkId = "ChemoTxStartDate"
  * type = #date
  * text = "Please provide the start date of chemotherapy:"
  * insert enableWhenTreatment(#5)

* item[+]
  * linkId = "ChemoTxStopdate"
  * type = #date
  * text = "Please provide the stop date of chemotherapy:"
  * insert enableWhenTreatment(#5)


* item[+]  
  * linkId = "HORMONTX_BREAST"
  * type = #choice
  * text = "If the patient received hormontherapy during the last year, please indicate the intent of hormontherapy:"
  * answerValueSet = Canonical(TherapyIntentValueSet)
  * insert enableWhenTreatment(#6)

* item[+]  
  * linkId = "HORMONTXTYPE"
  * type = #choice
  * text = "Indicate what type of hormonal therapy (select all that apply):"
  * answerValueSet = Canonical(HormonalTherapyTypeValueSet)
  * insert enableWhenTreatment(#6)

* item[+]  
  * linkId = "HORMONTXSTARTDATE"
  * type = #date
  * text = "Please provide the start date of hormonal therapy:"
  * insert enableWhenTreatment(#6)

* item[+]  
  * linkId = "HORMONTXSTOPDATE"
  * type = #date
  * text = "Please provide the stop date of hormonal therapy, if applicable:"
  * insert enableWhenTreatment(#6)

* item[+]  
  * linkId = "TARGETTX_BREAST"
  * type = #choice
  * text = "Indicate what type of targeted therapy:"
  * answerValueSet = Canonical(TargetedTherapyValueSet)
  * insert enableWhenTreatment(#7)

* item[+]  
  * linkId = "TargetTxStartDate"
  * type = #date
  * text = "Please provide the start date of targeted therapy, if applicable"
  * insert enableWhenTreatment(#7)

* item[+]  
  * linkId = "TargetTxStopDate"
  * type = #date
  * text = "Please provide the stop date of targeted therapy, if applicable"
  * insert enableWhenTreatment(#7)

* item[+]  
  * linkId = "SURGERYPATIENT"
  * type = #choice
  * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
  * answerValueSet = Canonical(ReoperationsValueSet)


* item[+]  
  * linkId = "SURGERYDATEPATIENT"
  * type = #date
  * text = "When was the reoperation?"
  * enableWhen[+]
    * question = "SURGERYPATIENT"
    * operator = #=
    * answerCoding = ReoperationsCodeSystem#1
  * enableWhen[+]
    * question = "SURGERYPATIENT"
    * operator = #=
    * answerCoding = ReoperationsCodeSystem#2
  * enableWhen[+]
    * question = "SURGERYPATIENT"
    * operator = #=
    * answerCoding = ReoperationsCodeSystem#3
  * enableBehavior = #any

* item[+]  
  * linkId = "SYSTPATIENT"
  * type = #choice
  * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
  * answerValueSet = Canonical(SystemicTherapyValueSet)


* item[+]  
  * linkId = "SYSTDATEPATIENT"
  * type = #date
  * text = "When did the systemic treatment stop?"
  * enableWhen[+]
    * question = "SYSTPATIENT"
    * operator = #=
    * answerCoding = ReoperationsCodeSystem#1

// Disutility of Care

* item[+]
  * linkId = "REOP_BREAST"
  * type = #choice
  * text = "Indicate if the patient has undergone a reoperation due to involved margins after primary surgery:"
  * enableWhen[+]
    * question = "SURGERY_BREAST"
    * operator = #!=
    * answerCoding = BreastSurgeryTypesCodeSystem#999
  * answerValueSet = Canonical(InvolvedMarginsValueSet)
  
* item[+]
  * linkId = "REOPDATE_BREAST"
  * type = #date
  * text = "Please provide the date of the reoperation due to positive margins:"
  * enableWhen[+]
    * question = "REOP_BREAST"
    * operator = #!=
    * answerCoding = InvolvedMarginsCodeSystem#999
  * enableWhen[+]
    * question = "REOP_BREAST"
    * operator = #!=
    * answerCoding = InvolvedMarginsCodeSystem#0
  * enableBehavior = #all

* item[+]
  * linkId = "ComplicationImpact"
  * type = #choice
  * text = "Please state the impact of the complication experienced by the patient:"
  * required = true
  * enableWhen[+]
    * question = "TREATMENT_BREAST"
    * operator = #!=
    * answerCoding = InvolvedMarginsCodeSystem#0
  * enableWhen[+]
    * question = "TREATMENT_BREAST"
    * operator = #!=
    * answerCoding = InvolvedMarginsCodeSystem#999
  * enableBehavior = #all
  * answerValueSet = Canonical(ComplicationImpactValueSet)


* item[+]
  * linkId = "ComplicationAttrTreatment"
  * type = #choice
  * text = "Indicate whether the complication is attributable to treatment:"
  * enableWhen[+]
    * question = "TREATMENT_BREAST"
    * operator = #!=
    * answerCoding = ComplicationImpactCodeSystem#0
  * enableWhen[+]
    * question = "TREATMENT_BREAST"
    * operator = #!=
    * answerCoding = ComplicationImpactCodeSystem#999
  * enableBehavior = #all
  * answerValueSet = Canonical(BooleanExtendedValueSet)

* item[+]
  * linkId = "COMPL_BREAST"
  * type = #choice
  * text = "Please indicate the type of complication:"
  * enableWhen[+]
    * question = "ComplicationAttrTreatment"
    * operator = #=
    * answerCoding = BooleanExtendedCodeSystem#1
  * answerValueSet = Canonical(ComplicationTypeValueSet)
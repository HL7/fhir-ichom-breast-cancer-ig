RuleSet: enableWhenRecurrence(code)
* enableWhen[+]
  * question = "MalignancyRecur"
  * operator = #=
  * answerCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add{code}

Instance: ClinicalResponseAnnualUpdate
InstanceOf: Questionnaire
Usage: #definition
Description: "Annual post-treatment follow-up of clinical questionnaire response"
* insert PublicationInstanceRuleset

* name = "AnnualClinicalResponse"
* title = "Annual follow-up of clinical questionnaire response"
* status = #draft

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
    * type = #integer //or string
    * text = "What is the patient's ID?"
    * required = true

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true

// GROUP 3 - TREATMENT VARIABLES 
* item[+]
  * linkId = "Treatment-Variables"
  * type = #group
  * text = "Treatment Variables"
  * required = true

  * item[+]
    * linkId = "TREATMENT_BREAST"
    * type = #choice
    * text = "Indicate whether the patient received one of the following treatment during the last year: (select all that apply)"
    * answerValueSet = Canonical(TreatmentTypeValueSet)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERY_BREAST"
    * type = #choice
    * text = "Indicate the type of surgery the patient received during the last year:"
    * answerValueSet = Canonical(BreastSurgeryTypeValueSet)
    * insert enableWhenTreatment(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDateKnown"
    * type = #boolean
    * text = "Is the date of surgery known?"
    * insert enableWhenTreatment(#1)
    * required = true

  * item[+]
    * linkId = "SurgeryDate"
    * type = #date
    * text = "Provide the date of surgery:"
    * insert enableWhenTrue(SurgeryDateKnown)
    * required = true

  * item[+]
    * linkId = "SURGERYAX"
    * type = #choice
    * text = "Indicate the type of surgery to the axilla the patient received during the last year:"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#0 "Sentinel lymph node biopsy"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#1 "Axillary sampling"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#2 "Axillary clearance"
    * answerOption[+].valueCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#999 "Unknown"
    * insert enableWhenTreatment(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE-Known"
    * type = #boolean
    * text = "Is the date of surgery to the axilla known?"
    * insert enableWhenTreatment(#2)
    * required = true

  * item[+]
    * linkId = "SURGERYAXDATE"
    * type = #date
    * text = "Please provide the date of surgery to the axilla:"
    * insert enableWhenTrue(SURGERYAXDATE-Known)
    * required = true

  * item[+]
    * linkId = "SURGERYAX2"
    * type = #choice
    * text = "Indicate whether the patient received axillary clearance due to lymph node involvement after sentinel lymph node biopsy during the last year:"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#0 "No"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#1 "Yes"
    * answerOption[+].valueCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#999 "Unkown"
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#0
    * enableWhen[+]
      * question = "SURGERYAX"
      * operator = #=
      * answerCoding = urn:uuid:8c808fb0-0b36-4623-9c13-e2caee216df4#1
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE-Known"
    * type = #boolean
    * text = "Is the date of axillary clearance known?"
    * enableWhen[+]
      * question = "SURGERYAX2"
      * operator = #=
      * answerCoding = urn:uuid:9fa16cf2-ad20-46d9-b4d6-b4782a222370#1
    * required = true

  * item[+]
    * linkId = "SURGERYAX2DATE"
    * type = #date
    * text = "Please provide the date of axillary clearance:"
    * insert enableWhenTrue(SURGERYAX2DATE-Known)
    * required = true

  * item[+] 
    * linkId = "RECONSTRUCT"
    * type = #choice
    * text = "Indicate the type of delayed reconstruction the patient received during the last year:"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#0 "Delayed reconstruction (direct/staged implant)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#1 "Delayed reconstruction ( autologous)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#2 "Delayed reconstruction (implant/autologous)"
    * answerOption[+].valueCoding = urn:uuid:ee9a6809-ec45-43be-9070-8a7c4b364269#999 "Unknown"
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE-Known"
    * type = #boolean
    * text = "Is the date of the delayed reconstruction known?"
    * insert enableWhenTreatment(#3)
    * required = true

  * item[+]
    * linkId = "RECONSTRUCTDATE"
    * type = #date
    * text = "Please provide the date of delayed reconstruction:"
    * insert enableWhenTrue(RECONSTRUCTDATE-Known)
    * required = true

  * item[+]
    * linkId = "RADIOTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of radiotherapy:"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:dff8b0ba-47f8-48bd-9e81-021783c9d0d0#999 "Unknown"
    * insert enableWhenTreatment(#4)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "RADIOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate location/type of radiotherapy:"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#0 "Breast"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#1 "Chest wall"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#2 "Axillary nodal irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#3 "Supraclavicular irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#4 "Internal mammary node irradiation"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#5 "Tumor bed boost"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#6 "Brain metastases"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#7 "Bone metastases"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#8 "Any metastatic site"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#9 "Other"
    * answerOption[+].valueCoding = urn:uuid:848b3292-4a18-43c8-a0dc-a133443a4b33#999 "Unknown"
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of radiotherapy known?"
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStartDate"
    * type = #date
    * text = "Please provide the start date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of radiotherapy known?"
    * insert enableWhenTreatment(#4)
    * required = true

  * item[+]
    * linkId = "RadioTxStopDate"
    * type = #date
    * text = "Please provide the stop date of radiotherapy:"
    * insert enableWhenTrue(RadioTxStopDate-Known)
    * required = true

  * item[+]
    * linkId = "CHEMOTXINTENT"
    * type = #choice
    * text = "Indicate the intent of chemotherapy:"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#999 "Unknown"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "CHEMOTXTYPE_BREAST"
    * type = #choice
    * text = "Indicate the type of chemotherapy (select all that apply):"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#0 "Anthracycline containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#1 "Taxane containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#2 "Platinum containing"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#3 "Other"
    * answerOption[+].valueCoding = urn:uuid:de25b812-330d-4e4e-9791-22efa124c222#999 "Unknown"
    * insert enableWhenTreatment(#5)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "ChemoTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of chemotherapy known?"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStartDate"
    * type = #date
    * text = "Please provide the start date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate-Known"
    * type = #boolean
    * text = "Is the stop date of chemotherapy known?"
    * insert enableWhenTreatment(#5)
    * required = true

  * item[+]
    * linkId = "ChemoTxStopdate"
    * type = #date
    * text = "Please provide the stop date of chemotherapy:"
    * insert enableWhenTrue(ChemoTxStopdate-Known)
    * required = true

  * item[+]
    * linkId = "HORMONTX_BREAST"
    * type = #choice
    * text = "Please indicate the intent of hormontherapy:"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#0 "Neoadjuvant"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#1 "Adjuvant"
    * answerOption[+].valueCoding = urn:uuid:103a95b9-d961-4ef1-8cd2-21d21a60dd15#999 "Unknown"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXTYPE"
    * type = #choice
    * text = "Indicate the type of hormonal therapy (select all that apply):"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#0 "Aromatase inhibitor"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#1 "Selective estrogen-receptor modulator (e.g. Tamoxifen)"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#2 "Oophorectomy"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#3 "LHRH agonist"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#4 "Other"
    * answerOption[+].valueCoding = urn:uuid:e5a35a65-0b47-4c3b-bbd8-8682d9064abb#999 "Unknown"
    * insert enableWhenTreatment(#6)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE-Known"
    * type = #boolean
    * text = "Is the start date of hormonal therapy known?"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTARTDATE"
    * type = #date
    * text = "Please provide the start date of hormonal therapy:"
    * insert enableWhenTrue(HORMONTXSTARTDATE-Known)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE-Known"
    * type = #boolean
    * text = "Is the stop date of hormonal therapy known?"
    * insert enableWhenTreatment(#6)
    * required = true

  * item[+]
    * linkId = "HORMONTXSTOPDATE"
    * type = #date
    * text = "Please provide the stop date of hormonal therapy, if applicable:"
    * insert enableWhenTrue(HORMONTXSTOPDATE-Known)
    * required = true

  * item[+]
    * linkId = "TARGETTX_BREAST"
    * type = #choice
    * text = "Indicate the type of targeted therapy:"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#0 "Her-2 targeting therapy"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#1 "Other"
    * answerOption[+].valueCoding = urn:uuid:7e263f5e-2bfc-45d7-a4fb-19078a3c0a8d#999 "Unknown"
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate-Known"
    * type = #boolean
    * text = "Is the start date of targeted therapy known?"
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStartDate"
    * type = #date
    * text = "Please provide the start date of targeted therapy"
    * insert enableWhenTrue(TargetTxStartDate-Known)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate-Known"
    * type = #boolean
    * text = "Is the stop date of targeted therapy known?"
    * insert enableWhenTreatment(#7)
    * required = true

  * item[+]
    * linkId = "TargetTxStopDate"
    * type = #date
    * text = "Please provide the stop date of targeted therapy"
    * insert enableWhenTrue(TargetTxStopDate-Known)
    * required = true
    
  * item[+]
    * linkId = "SURGERYPATIENT"
    * type = #choice
    * text = "Indicate if the patient has had one of the following re-operations since their surgery for breast cancer? (select all that apply)"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#0 "No"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#1 "Breast reconstruction surgery"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#2 "Mastectomy"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#3 "Axillary dissection"
    * answerOption[+].valueCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#999 "Unknown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the date of the reoperation known?"
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#0
    * enableWhen[+]
      * question = "SURGERYPATIENT"
      * operator = #!=
      * answerCoding = urn:uuid:c6d1ad7a-4a40-4f06-b518-88a34063bdf3#999
    * enableBehavior = #all
    * required = true

  * item[+]
    * linkId = "SURGERYDATEPATIENT"
    * type = #date
    * text = "When was the reoperation?"
    * insert enableWhenTrue(SURGERYDATEPATIENT-Known)
    * required = true

  * item[+]
    * linkId = "SYSTPATIENT"
    * type = #choice
    * text = "Is the patient currently receiving systemic (ie drug) treatment for breast cancer?"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#0 "no, never had systemic treatment"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#1 "yes, but the treatment has stopped"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#2 "yes, on chemotherapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#3 "yes, on targeted therapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#4 "yes, on hormone therapy"
    * answerOption[+].valueCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#999 "unkown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "SYSTDATEPATIENT-Known"
    * type = #boolean
    * text = "Is the stop date of the systemic treatment known?"
    * enableWhen[+]
      * question = "SYSTPATIENT"
      * operator = #=
      * answerCoding = urn:uuid:f59e0a1c-f0a0-4d12-b5ed-9720c91cf862#1
    * required = true

  * item[+]
    * linkId = "SYSTDATEPATIENT"
    * type = #date
    * text = "When did the systemic treatment stop?"
    * insert enableWhenTrue(SYSTDATEPATIENT-Known)
    * required = true


// GROUP 5 - Survival and disease control
* item[+]
  * linkId = "Survival-and-Disease-control"
  * type = #group
  * text = "Survival and disease control"
  * required = true

  * item[+]
    * linkId = "Survival-Q0"
    * type = #boolean
    * text = "Was the intent of the treatment curative?"
    * required = true

  * item[+]
    * linkId = "MalignancyRecur"
    * type = #choice
    * text = "Is there evidence of local, regional or distant recurrence of neoplasm? (In case of multiple recurrences, please report the most severe)"
    * answerOption[+].valueCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add#0 "No"
    * answerOption[+].valueCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add#1 "Yes, local recurrence"
    * answerOption[+].valueCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add#2 "Yes, regional recurrence" 
    * answerOption[+].valueCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add#3 "Yes, distant recurrence"
    * answerOption[+].valueCoding = urn:uuid:dc449654-ad57-40af-ae6c-2bcf6b570add#999 "Unknown"
    * insert enableWhenTrue(Survival-Q0)

  * item[+]
    * linkId = "RecurMethod"
    * type = #choice
    * text = "What was the method of confirming recurrence of neoplasm?"
    * answerOption[+].valueCoding = urn:uuid:ff0e5d9c-aeba-4415-9f52-f4b36179c648#0 "Radiological diagnosis"
    * answerOption[+].valueCoding = urn:uuid:ff0e5d9c-aeba-4415-9f52-f4b36179c648#1 "Histological diagnosis"
    * answerOption[+].valueCoding = urn:uuid:ff0e5d9c-aeba-4415-9f52-f4b36179c648#2 "Radiological and histological diagnosis"
    * answerOption[+].valueCoding = urn:uuid:ff0e5d9c-aeba-4415-9f52-f4b36179c648#999 "Unknown"
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any

  * item[+]
    * linkId = "RecurDateCancer-Known"
    * type = #boolean
    * text = "Is the date of cancer recurrence known?"
    * insert enableWhenRecurrence(#1)
    * insert enableWhenRecurrence(#2)
    * insert enableWhenRecurrence(#3)
    * enableBehavior = #any
    * required = true

  * item[+]
    * linkId = "RecurDateCancer"
    * type = #date
    * text = "What is the date of cancer recurrence?"
    * insert enableWhenTrue(RecurDateCancer-Known)

  * item[+]
    * linkId = "VitalStatus"
    * type = #boolean
    * text = "Has the person deceased?"
    * required = true

  * item[+]
    * linkId = "DeceasedDate-Known"
    * type = #boolean
    * text = "Is the date of death of the person known?"
    * insert enableWhenTrue(VitalStatus)
    * required = true

  * item[+]
    * linkId = "DeceasedDate"
    * type = #date
    * text = "What was the date of death of the person?"
    * insert enableWhenTrue(DeceasedDate-Known)

  * item[+]
    * linkId = "DEATHBC"
    * type = #boolean
    * text = "Is the death attributable to breast cancer?"
    * insert enableWhenTrue(VitalStatus)

Alias: E_Var = http://hl7.org/fhir/StructureDefinition/variable
Alias: E_IE = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-initialExpression
Alias: E_MinQ = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-minQuantity
Alias: E_MaxQ = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-maxQuantity
Alias: E_Unit = http://hl7.org/fhir/StructureDefinition/questionnaire-unitOption
Alias: E_ObsExtract = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationExtract
Alias: E_ObsLink = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-observationLinkPeriod
Alias: E_Calc = http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-calculatedExpression
Alias: E_Hidden = http://hl7.org/fhir/StructureDefinition/questionnaire-hidden

// shorthand notation to only show a particular question in the context of this questionnaire
RuleSet: enableWhenTrue(question)
* enableWhen
  * question = "{question}"
  * operator = #=
  * answerBoolean = true

Instance: ClinicalResponseBaseline
InstanceOf: Questionnaire
Usage: #definition
Description: "Clinical response questionnaire at baseline (first doctors' visit)"
* insert PublicationInstanceRuleset

* name = "ClinicalResponseBaseline"
* title = "Clinical response questionnaire at baseline"
* status = #draft
* extension[0]
  * url = "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-launchContext"
  //
  // Launch Context: always patient
  //
  * extension[0]
    * url = "name"
    * valueCoding
      * code = #patient
      * system = "http://hl7.org/fhir/uv/sdc/CodeSystem/launchContext"
      * display = "Patient"
  * extension[1]
    * url = "type"
    * valueCode = #Patient
  * extension[2]
    * url = "description"
    * valueString = "The patient that is to be used to pre-populate the form"

// GROUP 1 - GENERAL INFORMATION (ON ALL FORMS)
* item[+]
  * linkId = "General-Information-Clinical"
  * type = #group
  * text = "General information"
  * required = true

  * item[+]
    * linkId = "N/A-Clinical"
    * type = #string 
    * text = "What is the patient's medical record number?"
    * required = true
    * extension[0]
      * url = E_IE
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%patient.id"

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "Indicate the person's last name"
    * required = true
    * extension[0]
      * url = E_IE
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%patient.name.first().family.first()"

// GROUP 2 - DEMOGRAPHICS
* item[+]
  * linkId = "Demographics"
  * type = #group
  * text = "Demographic factors"
  * required = true

  * item[+]
    * linkId = "Sex"
    * type = #choice
    * text = "Please indicate your sex at birth."
    * answerValueSet = Canonical(AdministrativeGender)
    * required = true
    * extension[+]
      * url = E_Var
      * valueExpression[+]
        * name = "expandedGender"
        * language = #application/x-fhir-query
        * expression = "ValueSet/$expand?url=http://hl7.org/fhir/ValueSet/administrative-gender"
    * extension[+]
      * url = E_IE
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%expandedGender.expansion.contains.where(code=%patient.gender)"

  * item[+]
    * linkId = "YearOfBirth"
    * type = #integer
    * text = "In what year were you born?"
    * required = true
    * maxLength = 4
    * extension[+]
      * url = E_IE
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%patient.birthDate.substring(0,4)"

// GROUP 3 - CLINICAL FACTORS
* item[+]
  * linkId = "Clinical-Factors"
  * type = #group
  * text = "Clinical factors"
  * required = true
  
  * item[+]
    * linkId = "Height"
    * type = #quantity
    * text = "Please indicate your body height."
    * required = true
    * code[+] = LNC#8302-2 "Body height"
    * extension[+]
      * url = E_ObsLink
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a
    * extension[+]
      * url = E_ObsExtract
      * valueBoolean = true
    * extension[+]
      * url = E_Unit
      * valueCoding[+] = UCUM#cm "cm"
    * extension[+]
      * url = E_MinQ
      * valueQuantity[+]
        * value = 10
        * system = UCUM
        * code = #cm
    * extension[+]
      * url = E_MaxQ
      * valueQuantity[+]
        * value = 320
        * system = UCUM
        * code = #cm
    * extension[+]
      * url = E_Unit
      * valueCoding[+] = UCUM#[in_i] "inches"
    * extension[+]
      * url = E_MinQ
      * valueQuantity[+]
        * value = 3.94
        * system = UCUM
        * code = #[in_i]
    * extension[+]
      * url = E_MaxQ
      * valueQuantity[+]
        * value = 126
        * system = UCUM 
        * code = #[in_i]

  // Original question about the height. Kept for reporting purposes
  * item[+]
    * linkId = "HeightValue"
    * text = "Please indicate your body height."
    * type = #integer
    * readOnly = true
    * extension[+]
      * url = E_Calc
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%resource.repeat(item).where(linkId='Height').answer.valueQuantity.value"
    * extension[+]
      * url = E_Hidden
      * valueBoolean = true
    
  // Original question about the height. Kept for reporting purposes
  * item[+]
    * linkId = "HeightUnit" 
    * type = #string
    * text = "Please indicate what units of measurement (centimeters or inches) that you recorded your height in."
    * answerOption[+].valueCoding = urn:uuid:f36dcb8d-aede-4634-9194-f0f948d87ddd#1 "cm"
    * answerOption[+].valueCoding = urn:uuid:f36dcb8d-aede-4634-9194-f0f948d87ddd#2 "inches"
    * readOnly = true
    * extension[+]
      * url = E_Calc
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "iif(%resource.repeat(item).where(linkId='Height').answer.valueQuantity.code = 'cm', 'cm', 'inches')"
    * extension[+]
      * url = E_Hidden
      * valueBoolean = true
  
  // Weight, as quantity
  * item[+]
    * type = #quantity
    * linkId = "Weight"
    * text = "Please indicate your body weight."
    * required = true
    * code[+] = LNC#29463-7 "Body weight"
    * code[+] = LNC#3141-9 "Body weight Measured"
    * code[+] = SCT#27113001 "Body weight"
    * extension[+]
      * url = E_ObsLink
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a
    * extension[+]
      * url = E_ObsExtract
      * valueBoolean = true
    * extension[+]
      * url = E_Unit
      * valueCoding[+] = UCUM#kg "kilograms"
    * extension[+]
      * url = E_MinQ
      * valueQuantity[+]
        * value = 0.1
        * system = UCUM
        * code = #kg
    * extension[+]
      * url = E_MaxQ
      * valueQuantity[+]
        * value = 750
        * system = UCUM
        * code = #kg
    * extension[+]
      * url = E_Unit
      * valueCoding[+] = UCUM#[lb_av] "lbs"
    * extension[+]
      * url = E_MinQ
      * valueQuantity[+]
        * value = 0.22
        * system = UCUM
        * code = #[lb_av]
    * extension[+]
      * url = E_MaxQ
      * valueQuantity[+]
        * value = 1653.47
        * system = UCUM 
        * code = #[lb_av]

  * item[+]
    * linkId = "WeightValue"
    * type = #integer
    * text = "Please indicate your body weight." 
    * readOnly = true
    * extension[+]
      * url = "http://hl7.org/fhir/StructureDefinition/questionnaire-observationLinkPeriod"
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a
    * extension[+]
      * url = E_Calc
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%resource.repeat(item).where(linkId='Weight').answer.valueQuantity.value"
    * extension[+]
      * url = E_Hidden
      * valueBoolean = true

  * item[+]
    * linkId = "WeightUnit" 
    * type = #string
    * text = "Please indicate what units of measurement (kilograms or pounds) that you recorded your weight in." 
    * answerOption[+].valueCoding = urn:uuid:6d020c76-9ac1-4dfd-bfad-c084afd9f045#1 "kilograms"
    * answerOption[+].valueCoding = urn:uuid:6d020c76-9ac1-4dfd-bfad-c084afd9f045#2 "lbs"
    * required = true
    * extension[+]
      * url = E_Calc
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "iif(%resource.repeat(item).where(linkId='Weight').answer.valueQuantity.code = 'kg', 'kilograms', 'lbs')"
    * extension[+]
      * url = E_Hidden
      * valueBoolean = true

  * item[+]
    * linkId = "LATERAL"
    * type = #choice
    * text = "Indicate the laterality of breast cancer:"
    * answerOption[+].valueCoding = urn:uuid:e7d240f0-ea4c-4206-b488-f83c055fc1d4#0 "Left breast"
    * answerOption[+].valueCoding = urn:uuid:e7d240f0-ea4c-4206-b488-f83c055fc1d4#1 "Right breast"
    * answerOption[+].valueCoding = urn:uuid:e7d240f0-ea4c-4206-b488-f83c055fc1d4#3 "Both breasts"
    * required = true

  * item[+]
    * linkId = "FIRSTBC"
    * type = #choice
    * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
    * answerOption[+].valueCoding = urn:uuid:23e2a296-dce5-447d-9a7c-7f4ac97b6ebe#0 "Primary tumor"
    * answerOption[+].valueCoding = urn:uuid:23e2a296-dce5-447d-9a7c-7f4ac97b6ebe#1 "New ipsilateral"
    * answerOption[+].valueCoding = urn:uuid:23e2a296-dce5-447d-9a7c-7f4ac97b6ebe#2 "New contralateral"
    * required = true

// GROUP 4 - TUMOR FACTORS
* item[+]
  * linkId = "Tumor-Factors"
  * type = #group
  * text = "Tumor factors"
  * required = true

  * item[+]
    * linkId = "HistologicalDiagnosisDate"
    * type = #date
    * text = "Indicate the initial date of histological diagnosis"
    * required = true

  * item[+]
    * linkId = "HISTOTYPE"
    * type = #choice
    * text = "Indicate the histologic type of the tumor (select all that apply)"
    * answerOption[+].valueCoding = urn:uuid:54f3b593-e92c-49c2-838a-5e59196de2f0#0 "Ductal carcinoma in situ"
    * answerOption[+].valueCoding = urn:uuid:54f3b593-e92c-49c2-838a-5e59196de2f0#1 "Invasive ductal carcinoma"
    * answerOption[+].valueCoding = urn:uuid:54f3b593-e92c-49c2-838a-5e59196de2f0#2 "Invasive lobular carcinoma"
    * answerOption[+].valueCoding = urn:uuid:54f3b593-e92c-49c2-838a-5e59196de2f0#3 "Other"
    * answerOption[+].valueCoding = urn:uuid:54f3b593-e92c-49c2-838a-5e59196de2f0#999 "Unknown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "MUTBC"
    * type = #choice
    * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
    * answerOption[+].valueCoding = urn:uuid:4574904d-f3a9-44c4-9349-40ea58076505#0 "No mutation"
    * answerOption[+].valueCoding = urn:uuid:4574904d-f3a9-44c4-9349-40ea58076505#1 "BRCA 1"
    * answerOption[+].valueCoding = urn:uuid:4574904d-f3a9-44c4-9349-40ea58076505#2 "BRCA 2"
    * answerOption[+].valueCoding = urn:uuid:4574904d-f3a9-44c4-9349-40ea58076505#3 "Other mutation"
    * answerOption[+].valueCoding = urn:uuid:4574904d-f3a9-44c4-9349-40ea58076505#4 "Not tested"
    * required = true

  * item[+]
    * linkId = "GRADEINV"
    * type = #choice
    * text = "Indicate the grade of the invasive component of tumor"
    * answerOption[+].valueCoding = urn:uuid:ce2aba40-12ae-41cd-85a6-fa8ae68d3284#0 "Grade 1"
    * answerOption[+].valueCoding = urn:uuid:ce2aba40-12ae-41cd-85a6-fa8ae68d3284#1 "Grade 2"
    * answerOption[+].valueCoding = urn:uuid:ce2aba40-12ae-41cd-85a6-fa8ae68d3284#2 "Grade 3"
    * answerOption[+].valueCoding = urn:uuid:ce2aba40-12ae-41cd-85a6-fa8ae68d3284#3 "Not reported"
    * required = true

  * item[+]
    * linkId = "GRADEDCIS"
    * type = #choice
    * text = "Indicate the tumor grade of DCIS component of tumor"
    * answerOption[+].valueCoding = urn:uuid:28afa2eb-fab0-4985-85c0-b560b1de5cb4#0 "Low"
    * answerOption[+].valueCoding = urn:uuid:28afa2eb-fab0-4985-85c0-b560b1de5cb4#1 "Intermediate"
    * answerOption[+].valueCoding = urn:uuid:28afa2eb-fab0-4985-85c0-b560b1de5cb4#2 "High"
    * answerOption[+].valueCoding = urn:uuid:28afa2eb-fab0-4985-85c0-b560b1de5cb4#3 "Not reported"
    * required = true

  * item[+]
    * linkId = "TNMCT_BREAST"
    * type = #choice
    * text = "Indicate the clinical tumor stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#0 "cTX"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#1 "cT0"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#2 "cTis"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#3 "cT1"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#4 "cT2"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#5 "cT3"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#6 "cT4"
    * answerOption[+].valueCoding = urn:uuid:bbf043ae-77f6-4d72-9c26-54120c64877a#999 "Unknown"    
    * required = true

  * item[+]
    * linkId = "TNMCN_BREAST"
    * type = #choice
    * text = "Indicate the clinical nodal stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#0 "cNX"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#1 "cN0"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#2 "cN1"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#3 "cN2"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#4 "cN3"
    * answerOption[+].valueCoding = urn:uuid:aac07446-dc50-4dfe-a241-77d0fa203591#999 "Unknown"  
    * required = true

  * item[+]
    * linkId = "TNMCM_BREAST"
    * type = #choice
    * text = "Indicate the clinical distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueCoding = urn:uuid:5f8d75d7-3fd5-4899-a6af-6e1ea80520b3#1 "cMX"
    * answerOption[+].valueCoding = urn:uuid:5f8d75d7-3fd5-4899-a6af-6e1ea80520b3#2 "cM0"
    * answerOption[+].valueCoding = urn:uuid:5f8d75d7-3fd5-4899-a6af-6e1ea80520b3#3 "cM1"
    * answerOption[+].valueCoding = urn:uuid:5f8d75d7-3fd5-4899-a6af-6e1ea80520b3#999 "Unknown"      
    * required = true

  * item[+]
    * linkId = "ERSTATUS"
    * type = #choice
    * text = "Indicate if the estrogen receptor status is positive"
    * answerOption[+].valueCoding = urn:uuid:93e05a33-3b00-4ae9-b4cd-ba7ba3e1f54e#0 "No"
    * answerOption[+].valueCoding = urn:uuid:93e05a33-3b00-4ae9-b4cd-ba7ba3e1f54e#1 "Yes"
    * answerOption[+].valueCoding = urn:uuid:93e05a33-3b00-4ae9-b4cd-ba7ba3e1f54e#2 "Not performed"
    * answerOption[+].valueCoding = urn:uuid:93e05a33-3b00-4ae9-b4cd-ba7ba3e1f54e#999 "Unkown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "PRSTATUS"
    * type = #choice
    * text = "Indicate if the progesterone receptor status is positive"
    * answerOption[+].valueCoding = urn:uuid:02d110fd-1183-41fa-bacb-a689e0c67149#0 "No"
    * answerOption[+].valueCoding = urn:uuid:02d110fd-1183-41fa-bacb-a689e0c67149#1 "Yes"
    * answerOption[+].valueCoding = urn:uuid:02d110fd-1183-41fa-bacb-a689e0c67149#2 "Not performed"
    * answerOption[+].valueCoding = urn:uuid:02d110fd-1183-41fa-bacb-a689e0c67149#999 "Unkown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "HER2STATUS"
    * type = #choice
    * text = "Indicate if the HER2 receptor status is positive"
    * answerOption[+].valueCoding = urn:uuid:17b96500-8800-4371-87d3-1498c8d2e039#0 "Negative"
    * answerOption[+].valueCoding = urn:uuid:17b96500-8800-4371-87d3-1498c8d2e039#1 "Positive"
    * answerOption[+].valueCoding = urn:uuid:17b96500-8800-4371-87d3-1498c8d2e039#2 "Equivocal"
    * answerOption[+].valueCoding = urn:uuid:17b96500-8800-4371-87d3-1498c8d2e039#3 "HER2 receptor status not tested"
    * required = true
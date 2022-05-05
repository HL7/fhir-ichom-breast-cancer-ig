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
    * readOnly = true
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
    * answerOption[+].valueString = "Left breast"
    * answerOption[+].valueString = "Right breast"
    * answerOption[+].valueString = "Both breasts"
    * required = true

  * item[+]
    * linkId = "FIRSTBC"
    * type = #choice
    * text = "Indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
    * answerOption[+].valueString = "Primary tumor"
    * answerOption[+].valueString = "New ipsilateral"
    * answerOption[+].valueString = "New contralateral"
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
    * answerOption[+].valueString = "Ductal carcinoma in situ"
    * answerOption[+].valueString = "Invasive ductal carcinoma"
    * answerOption[+].valueString = "Invasive lobular carcinoma"
    * answerOption[+].valueString = "Other"
    * answerOption[+].valueString = "Unknown"
    * required = true
    * repeats = true

  * item[+]
    * linkId = "MUTBC"
    * type = #choice
    * text = "Indicate if the patient carries a genetic mutation predisposing breast cancer"
    * answerOption[+].valueString = "No mutation"
    * answerOption[+].valueString = "BRCA 1"
    * answerOption[+].valueString = "BRCA 2"
    * answerOption[+].valueString = "Other mutation"
    * answerOption[+].valueString = "Not tested"
    * required = true

  * item[+]
    * linkId = "GRADEINV"
    * type = #choice
    * text = "Indicate the grade of the invasive component of tumor"
    * answerOption[+].valueString = "Grade 1"
    * answerOption[+].valueString = "Grade 2"
    * answerOption[+].valueString = "Grade 3"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "GRADEDCIS"
    * type = #choice
    * text = "Indicate the tumor grade of DCIS component of tumor"
    * answerOption[+].valueString = "Low"
    * answerOption[+].valueString = "Intermediate"
    * answerOption[+].valueString = "High"
    * answerOption[+].valueString = "Not reported"
    * required = true

  * item[+]
    * linkId = "TNMCT_BREAST"
    * type = #choice
    * text = "Indicate the clinical tumor stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cTX"
    * answerOption[+].valueString = "cT0"
    * answerOption[+].valueString = "cTis"
    * answerOption[+].valueString = "cT1"
    * answerOption[+].valueString = "cT2"
    * answerOption[+].valueString = "cT3"
    * answerOption[+].valueString = "cT4"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "TNMCN_BREAST"
    * type = #choice
    * text = "Indicate the clinical nodal stage (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cNX"
    * answerOption[+].valueString = "cN0"
    * answerOption[+].valueString = "cN1"
    * answerOption[+].valueString = "cN2"
    * answerOption[+].valueString = "cN3"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "TNMCM_BREAST"
    * type = #choice
    * text = "Indicate the clinical distant metastasis (per AJCC 5th - 7th Ed.)"
    * answerOption[+].valueString = "cMX"
    * answerOption[+].valueString = "cM0"
    * answerOption[+].valueString = "cM1"
    * answerOption[+].valueString = "Unknown"
    * required = true

  * item[+]
    * linkId = "ERSTATUS"
    * type = #choice
    * text = "Indicate if the estrogen receptor status is positive"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unkown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "PRSTATUS"
    * type = #choice
    * text = "Indicate if the progesterone receptor status is positive"
    * answerOption[+].valueString = "No"
    * answerOption[+].valueString = "Yes"
    * answerOption[+].valueString = "Not performed"
    * answerOption[+].valueString = "Unkown"
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "HER2STATUS"
    * type = #choice
    * text = "Indicate if the HER2 receptor status is positive"
    * answerOption[+].valueString = "Negative"
    * answerOption[+].valueString = "Positive"
    * answerOption[+].valueString = "Equivocal"
    * answerOption[+].valueString = "HER2 receptor status not tested"
    * required = true
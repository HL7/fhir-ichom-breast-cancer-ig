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
    * valueString = "Patient information to pre-populate the form with"

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
    * extension[+]
      * url = InitialExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%patient.id"

  * item[+]
    * linkId = "LastName-Clinical"
    * type = #string
    * text = "What is the patient's last name?"
    * required = true
    * extension[+]
      * url = InitialExpressionEx
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
    * text = "Please indicate the sex of the patient at birth:"
    * answerValueSet = Canonical(AdministrativeGenderVS)
    * required = true
    * extension[+]
      * url = VariableEx
      * valueExpression[+]
        * name = "expandedGender"
        * language = #application/x-fhir-query
        * expression = "ValueSet/$expand?url=http://hl7.org/fhir/ValueSet/administrative-gender"
    * extension[+]
      * url = InitialExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%expandedGender.expansion.contains.where(code=%patient.gender)"

  * item[+]
    * linkId = "YearOfBirth"
    * type = #integer
    * text = "In what year was the patient born?"
    * required = true
    * maxLength = 4
    * extension[+]
      * url = InitialExpressionEx
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
      * url = ObservationLinkPeriodEx // limit the observation fetching to (300 years before current date)
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a  // years
    * extension[+]
      * url = ObservationExtractEx
      * valueBoolean = true
    * extension[+]
      * url = UnitOptionEx
      * valueCoding[+] = UCUM#cm "cm"
    * extension[+]
      * url = MinQuantityEx
      * valueQuantity[+]
        * value = 10
        * system = UCUM
        * code = #cm
    * extension[+]
      * url = MaxQuantityEx
      * valueQuantity[+]
        * value = 320
        * system = UCUM
        * code = #cm
    * extension[+]
      * url = UnitOptionEx
      * valueCoding[+] = UCUM#[in_i] "[in_i]"
    * extension[+]
      * url = MinQuantityEx
      * valueQuantity[+]
        * value = 3.94
        * system = UCUM
        * code = #[in_i]
    * extension[+]
      * url = MaxQuantityEx
      * valueQuantity[+]
        * value = 126
        * system = UCUM 
        * code = #[in_i]

<<<<<<< HEAD
=======
  * item[+]
    * linkId = "HeightValue"
    * type = #integer
    * text = "Please indicate the patient's body height:"
    * readOnly = true
    * extension[+]
      * url = CalculatedExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%resource.repeat(item).where(linkId='Height').answer.valueQuantity.value"
    * extension[+]
      * url = HiddenEx
      * valueBoolean = true

    
  * item[+]
    * linkId = "HeightUnit" 
    * type = #choice
    * text = "Please indicate the units of measurement you recorded the patient's height in:"
    * answerOption[+].valueCoding = UCUM#cm "cm"
    * answerOption[+].valueCoding = UCUM#[in_i] "[in_i]"
    * required = true
    * readOnly = true
    * extension[+]
      * url = CalculatedExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "iif(%resource.repeat(item).where(linkId='Height').answer.valueQuantity.code = 'cm', 'urn:uuid:f36dcb8d-aede-4634-9194-f0f948d87ddd#1', 'urn:uuid:f36dcb8d-aede-4634-9194-f0f948d87ddd#2')"
    * extension[+]
      * url = HiddenEx
      * valueBoolean = true
>>>>>>> origin/release/connectathon-sep2022
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
      * url = ObservationLinkPeriodEx  // limit the observation fetching to (300 years before current date)
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a // years
    * extension[+]
      * url = ObservationExtractEx
      * valueBoolean = true
    * extension[+]
      * url = UnitOptionEx
      * valueCoding[+] = UCUM#kg "kg"
    * extension[+]
      * url = MinQuantityEx
      * valueQuantity[+]
        * value = 0.1
        * system = UCUM
        * code = #kg
    * extension[+]
      * url = MaxQuantityEx
      * valueQuantity[+]
        * value = 750
        * system = UCUM
        * code = #kg
    * extension[+]
      * url = UnitOptionEx
      * valueCoding[+] = UCUM#[lb_av] "[lb_av]"
    * extension[+]
      * url = MinQuantityEx
      * valueQuantity[+]
        * value = 0.22
        * system = UCUM
        * code = #[lb_av]
    * extension[+]
      * url = MaxQuantityEx
      * valueQuantity[+]
        * value = 1653.47
        * system = UCUM 
        * code = #[lb_av]
<<<<<<< HEAD
     
=======

  * item[+]
    * linkId = "WeightValue"
    * type = #integer
    * text = "Please indicate the patient's body weight:" 
    * readOnly = true
    * extension[+]
      * url = ObservationLinkPeriodEx
      * valueDuration[+]
        * value = 300
        * system = UCUM
        * code = #a
    * extension[+]
      * url = CalculatedExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "%resource.repeat(item).where(linkId='Weight').answer.valueQuantity.value"
    * extension[+]
      * url = HiddenEx
      * valueBoolean = true

  * item[+]
    * linkId = "WeightUnit" 
    * type = #choice
    * text = "Please indicate the units of measurement you recorded the patient's weight in:" 
    * answerOption[+].valueCoding = UCUM#kg "kg"
    * answerOption[+].valueCoding = UCUM#[lb_av] "[lb_av]"
    * required = true
    * extension[+]
      * url = CalculatedExpressionEx
      * valueExpression[+]
        * language = #text/fhirpath
        * expression = "iif(%resource.repeat(item).where(linkId='Weight').answer.valueQuantity.code = 'kg', 'urn:uuid:6d020c76-9ac1-4dfd-bfad-c084afd9f045#1', 'urn:uuid:6d020c76-9ac1-4dfd-bfad-c084afd9f045#2')"
    * extension[+]
      * url = HiddenEx
      * valueBoolean = true
      
>>>>>>> origin/release/connectathon-sep2022
  * item[+]
    * linkId = "LATERAL"
    * type = #choice
    * text = "Please indicate the laterality of breast cancer:"
    * answerValueSet = Canonical(LateralityVS)
    * required = true

  * item[+]
    * linkId = "FIRSTBC"
    * type = #choice
    * text = "Please indicate if this is first breast cancer or new cancer on contralateral or ipsilateral breast:"
    * answerValueSet = Canonical(LateralityNewCancerVS)
    * required = true

// GROUP 4 - TUMOR FACTORS
* item[+]
  * linkId = "Tumor-Factors"
  * type = #group
  * text = "Tumor factors"
  * required = true

  * item[+]
    * linkId = "HistologicalDateKnown"
    * type = #boolean
    * text = "Is the date of histological diagnosis known?"
    * required = true

  * item[+]
    * linkId = "HistologicalDiagnosisDate"
    * type = #date
    * text = "Please indicate the initial date of histological diagnosis:"
    * required = true
    * enableWhenTrue(HistologicalDateKnown)

  * item[+]
    * linkId = "HISTOTYPE"
    * type = #choice
    * text = "Please indicate the histologic type of the tumor (select all that apply):"
    * answerValueSet = Canonical(HistologicalTypeVS)
    * required = true
    * repeats = true

  * item[+]
    * linkId = "MUTBC"
    * type = #choice
    * text = "Please indicate if the patient carries a genetic mutation predisposing breast cancer:"
    * answerValueSet = Canonical(GermlineMutationVS)
    * required = true

  * item[+]
    * linkId = "GRADEINV"
    * type = #choice
    * text = "Please indicate the grade of the invasive component of tumor:"
    * answerValueSet = Canonical(GradingVS)
    * required = true

  * item[+]
    * linkId = "GRADEDCIS"
    * type = #choice
    * text = "Please indicate the tumor grade of DCIS component of tumor:"
    * answerValueSet = Canonical(GradingVS)
    * required = true

  * item[+]
    * linkId = "TNMCT_BREAST"
    * type = #choice
    * text = "Please indicate the clinical tumor stage (per AJCC 5th - 7th Ed.):"
    * answerValueSet = Canonical(TNMPrimaryTumorVS)
    * required = true

  * item[+]
    * linkId = "TNMCN_BREAST"
    * type = #choice
    * text = "Please indicate the clinical nodal stage (per AJCC 5th - 7th Ed.):"
    * answerValueSet = Canonical(TNMRegionalNodesVS)
    * required = true

  * item[+]
    * linkId = "TNMCM_BREAST"
    * type = #choice
    * text = "Please indicate the clinical distant metastasis (per AJCC 5th - 7th Ed.):"
    * answerValueSet = Canonical(TNMDistantMetastasesVS)     
    * required = true

  * item[+]
    * linkId = "ERSTATUS"
    * type = #choice
    * text = "Please indicate if the estrogen receptor status is positive:"
    * answerValueSet = Canonical(EstrogenStatusVS)
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "PRSTATUS"
    * type = #choice
    * text = "Please indicate if the progesterone receptor status is positive:"
    * answerValueSet = Canonical(ProgesteroneStatusVS)
    * required = true

// add existing valueset link: https://www.hl7.org/fhir/valueset-example-yesnodontknow.html and add not performed into it

  * item[+]
    * linkId = "HER2STATUS"
    * type = #choice
    * text = "Please indicate if the HER2 receptor status is positive:"
    * answerValueSet = Canonical(HER2ReceptorStatusVS)
    * required = true

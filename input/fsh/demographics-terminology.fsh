ValueSet: DemographicFactorsSex
Id: DemographicFactorsSex
Title: "Sex of patient"
Description: "Codes used in sex of patient"
* include codes from system http://hl7.org/fhir/administrative-gender

ValueSet: DemographicCountry
Id: DemographicCountry
Title: "Country"
Description: "Country (e.g. of residence)"
* include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3

ValueSet: RelationshipStatus
Id: RelationshipStatus
Title: "RelationshipStatus"
Description: "Relationship Status"
* include codes from valueset http://hl7.org/fhir/ValueSet/marital-status

CodeSystem: MenopausalStatus
Id: MenopausalStatusCS
Title: "MenopausalStatus"
Description: "Menopausal Status"
* #0 "Pre-menopause"
* #1 "Post-menopausei (natural/surgical) - if you have not had your period >12 months, caused by natural decline of hormones or due to surgery (e.g. menopause that develops after the ovaries are surgically removed)"
* #2 "I don't know what my current menopausal status is"

ValueSet: MenopausalStatus
Id: MenopausalStatus-vs
Title: "MenopausalStatus"
Description: "Menopausal Status"
* MenopausalStatusCS#0
* MenopausalStatusCS#1
* MenopausalStatusCS#2

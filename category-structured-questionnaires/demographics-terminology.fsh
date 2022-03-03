// Alias: $FHIRMS = http://terminology.hl7.org/CodeSystem/v3-MaritalStatus

// ValueSet: DemographicFactorsSex
// Id: DemographicFactorsSex
// Title: "Sex of patient"
// Description: "Codes used in sex of patient"
// * include codes from system http://hl7.org/fhir/administrative-gender

// ValueSet: DemographicCountry
// Id: DemographicCountry
// Title: "Country"
// Description: "Country (e.g. of residence)"
// * include codes from valueset http://hl7.org/fhir/ValueSet/iso3166-1-3

// CodeSystem: EducationLevelCodeSystem
// Id: EducationLevelCodeSystem
// Title: "EducationLevelCodeSystem"
// Description: "Highest level of education completed based on local standard definitions of education levels"
// * ^url =  http://connect.ichom.org/fhir/CodeSystem/education-level
// * ^caseSensitive = true

// * #none "None"
// * #primary "Primary"
// * #secondary "Secondary"
// * #tertiary "Tertiary"

// ValueSet: EducationLevel
// Id: EducationLevel
// Title: "EducationLevel"
// Description: "Highest level of education completed based on local standard definitions of education levels"
// * include codes from system EducationLevelCodeSystem

// CodeSystem: RelationshipStatusCodeSystem
// Id: RelationshipStatusCodeSystem
// Title: "RelationshipStatusCodeSystem"
// Description: "Codes used in ICHOM relationship status that are not available yet in standard terminologies"
// * ^url =  http://connect.ichom.org/fhir/CodeSystem/relationship-status
// * ^caseSensitive = true

// * #not-married-partnered "Not married/partnered"
// * #married-partnered "Married/partnered"
// * #divorced-separated "Divorced/separated"
// * #unknown "unknown"

// ValueSet: RelationshipStatus
// Id: RelationshipStatus
// Title: "RelationshipStatus"
// Description: "Relationship Status"
// * RelationshipStatusCodeSystem#not-married-partnered
// * RelationshipStatusCodeSystem#married-partnered
// * RelationshipStatusCodeSystem#divorced-separated
// * $FHIRMS#W "Widowed"
// * RelationshipStatusCodeSystem#unknown

// CodeSystem: MenopausalStatusCodeSystem
// Id: MenopausalStatusCodeSystem
// Title: "MenopausalStatusCodeSystem"
// Description: "Menopausal Status"
// * ^caseSensitive = true
// * #0 "Pre-menopause"
// * #1 "Post-menopausei (natural/surgical) - if you have not had your period >12 months, caused by natural decline of hormones or due to surgery (e.g. menopause that develops after the ovaries are surgically removed)"
// * #2 "I don't know what my current menopausal status is"

// ValueSet: MenopausalStatus
// Id: MenopausalStatus-vs
// Title: "MenopausalStatus"
// Description: "Menopausal Status"
// * MenopausalStatusCodeSystem#0
// * MenopausalStatusCodeSystem#1
// * MenopausalStatusCodeSystem#2

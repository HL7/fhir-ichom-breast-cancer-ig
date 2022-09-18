# Modelling
## Questionnaires
* separate the questionnaires based on timing + reporting source
  * .fsh file layout will follow from that
* use groups to mark differences in categories
* enforce PROM best practice rendering guidelines, list so far:
  * make sure top of the questionnares has text for how a questionnaire shoud be filled out (sourced from original material PDF)
* questionnaires will include auto-scoring capabilities (pending ICHOM providing algorithms)
* BreastQ:
  * at baseline: ignore surgery type  (for example in breastq-masectomy), questions remain the same anyway
  * during follow-up: we need to be able to know the context of the patient that answers these questions. It is not an option to have the patient fill in the type of surgery they had, this should be filled in by a clinician. Therefore we need to be able to do some sort of prefill based on the CROMs. 
* will model baseline, 6 mo, and up to 4 year follow-up for the May Connectathon
* will ignore neo-adjuvant and metastatic cases for now
* "Date by DD/MM/YYYY; Please enter "999" if date is unknown": put a checkbox in at the beginning to signal that the date is known, this should enable a date picker
* the receptor status (ER, PR and HER2) can be filled in at baseline, so we can ignore the inclusion criteria which requires the surgery type 
* the timing of the question about genetic mutation (linkID=MUTBC) can go from baseline + 1 year to baseline + 6 months. This change will leave us with 3 questionnaires for CROMs instead of 4.
* disutility of care is only timed at 6 months follow-up. We should limit the amount of questions about the treatment, this will be covered in the annual follow-up.
* use valuesets over answerOptions since the latter make creating prepopulation expressions difficult

### Questionnaire pre-population
* need to strike a balance between reducing patient burden and patient safety
* OK to prefill is information already known in the healthcare information system, and say how old the information is:
  * MRN, last name, sex at birth, year birth
  * laterality of breast cancer and other clinical factors
* not OK is generally anything that can change within a few days: 
  * not body height, weight
  * not the 1st year's clinical response, but others are OK
  * patient-reported questions previously answered
  * comobirdities (these are also considered to be proms, so patients need to fill these in themselves)
* rule of thumb: if questions are event based, e.g. proms, prepopulation should not be applied. 

## Clinical data points
* this data will already be available in the health information system (HIT) as part of patient care
  * aim is to extract it for purposes of analytics
* will be aligning codes, valuesets, and extensions used with US Core and mCODE
  * but not introducing a hard dependency on those guides or deriving profiles from them since we are Universal Realm and those are US specs
* will not be fixing minimum cardinality of elements since this is a low-level, domain of knowledge specification
  * more concrete implementation guides will be needed here for actual implementation that fix them
* the binding of the valuesets will be set to required to represent the ICHOM BC set
* in case of drug treatments, such as hormonal and immunotherapy, we will cover all the different types of medication resources and have implementers decide for themselves what fits their needs.
* staging modelling is aligned with mCODE and represented as Observations instead of `Condition.stage` - reason being that different practitioners at different times could be recording the staging information
  * a single Condition would not allow recording of this, but multiple Observations do
* all therapies will be modelled as Procedures instead of MedicationRequests/MedicationAdministrations as it is in mCODE, since our variables have a high-level view of just the therapy type, start and end date, while mCODE has a lower-level view of what medication was administered to whom without making assumptions as to the reason behind them
* multidisciplinary meeting: does not need to reflect that an actual meeting occurred; just needs to reflect the care plan that was agreed upon by however many clinicians are working on a particular patient's case. 

## Terminology
* terminology will not be shared agross IGs, as there is little overlap between the initial [breast cancer](https://connect.ichom.org/patient-centered-outcome-measures/breast-cancer/) and [autism spectrum disorders](https://connect.ichom.org/patient-centered-outcome-measures/autism-spectrum-disorder/) sets that are proposed for the initial HL7 inclusion
* The nullflavors, mapped by Linda, will remain in the valueSets we created, as these are also used in the questionnaires and we can therefore not remove them from the profiles.

# Tooling
* stay on top of errors and warnings: both SUSHI and publisher's QA report should always say 0 warnings and 0 errors
* keep IG publisher and sushi up to date - always use the latest version

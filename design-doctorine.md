# Modelling
## Questionnaires
* separate the questionnaires based on timing + reporting source
  * .fsh file layout will follow from that
* use groups to mark differences in categories
* enforce PROM best practice rendering guidelines, list so far:
  * make sure top of the questionnares has text for how a questionnaire shoud be filled out (sourced from original material)
* questionnaires will include auto-scoring capabilities (pending ICHOM providing algorithms)
* ignore surgery type at baseline (for example in breastq-masectomy), questions remain the same anyway
* answerOptions should still transmit the codes relevant for them, and not strings
* will model baseline, 6 mo, and up to 4 year follow-up for the May Connectathon
* will ignore neo-adjuvant and metastatic cases for now
* top of the questionnaires needs to have instructions on how it should be filled out (see original PDFs for them)
* "Date by DD/MM/YYYY; Please enter "999" if date is unknown": put a checkbox in at the beginning to signal that the date is known, this should enable a date picker
* receptor status (ER, PR and HER2) can be filled in at baseline, and ignore using them as inclusion criteria

### Questionnaire pre-population
* need to strike a balance between reducing patient burden and patient safety
* OK to prefill is information already known in the healthcare information system, and say how old the information is:
  * MRN, last name, sex at birth, year birth
  * laterality of breast cancer and other clinical factors
  * comobirdities
* not OK is generally anything that can change within a few days: 
  * not body height, weight
  * not the 1st year's clinical response, but others are OK
  * patient-reported questions previously answered

## Clinical data points
* this data will already be available in the health information system (HIT) as part of patient care
* aim is to extract it for purposes of analytics

# Tooling
* stay on top of errors and warnings: both SUSHI and publisher's QA report should always say 0 warnings and 0 errors
* keep IG publisher and sushi up to date - always use the latest version

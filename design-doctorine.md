# Modelling
## Questionnaires
* separate the questionnaires based on timing + reporting source
  * .fsh file layout will follow from that
* use groups to mark differences in categories
* enforce PROM best practice rendering guidelines
  * (these need to be created by ICHOM first)
* questionnaires will not include auto-scoring capabilities (algorithms are not available in the sets dictionary)
* breastq-masectomy question: differing from what is in the standard set, fine to put it into baseline for now
* answerOptions should still transmit the codes relevant for them, and not strings
* will model baseline, 6 mo, and up to 4 year follow-up for the May Connectathon
* will ignore neo-adjuvant and metastatic cases for now
* top of the questionnaires needs to have instructions on how it should be filled out (see original PDFs for them)
* "Date by DD/MM/YYYY; Please enter "999" if date is unknown": put a checkbox in at the beginning to signal that the date is known, this should enable a date picker

## Clinical data points
* this data will already be available in the health information system (HIT) as part of patient care
* aim is to extract it for purposes of analytics

# Tooling
* stay on top of errors and warnings: both SUSHI and publisher's QA report should always say 0 warnings and 0 errors
* keep IG publisher and sushi up to date - always use the latest version

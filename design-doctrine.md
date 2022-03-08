# Modelling
* separate the questionnaires based on timing + reporting source
  * .fsh file layout will follow from that
* use groups to mark differences in categories
* enforce PROM best practice rendering guidelines
  * (these need to be created by ICHOM first)

# Tooling
* stay on top of errors and warnings: both SUSHI and publisher's QA report should always say 0 warnings and 0 errors
* keep IG publisher and sushi up to date - always use the latest version

# AnswerOptions versus ValueSet
* Rule of thumb is: Use Valuesets when the list of permitted answers consists of existing codes (e.g. gender) and/or when the list of permitted answers are repeatedly used in other questions. Otherwise, use answerOptions.

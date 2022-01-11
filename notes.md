amalgamated codesystem with hiearchies for valuesets, include all codes from a hiearchy into a valueset (descendants of)

terminology should be published separately for

conceptmap mapping to loinc & snomed where appropriate for

include original ICHOM codes in comorbidities

Bas idea: 
1) separate configuration file that dictates how to pull questionnaires from excel and transform them into FSH
2) processor for FSH: says where to pull data from which excel cell

"Treatement" typo

"Date by DD/MM/YYYY; Please enter "999" if date is unknown"
(1) free-text field, if it parses as a date then it's a date, otherwise if it parses 999 or unknown -> unknown
(2) pre-question with a checkbox that enables the date field
(3) post-question with a checkbox that shows if date field wasn't picked

can also put 2 questions together in a group, and say the group should be rendered as a table (https://build.fhir.org/valueset-questionnaire-item-control.html, gtable or grid)
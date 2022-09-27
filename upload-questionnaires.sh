# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-01-Baseline.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-02-SixMonths.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-03-Annual.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-01-Baseline.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-02-SixMonths.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-03-Year1and2.json" https://lforms-fhir.nlm.nih.gov/baseR4
# curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-04-Year3and4.json" https://lforms-fhir.nlm.nih.gov/baseR4

# curl -X PUT -H "Content-Type: application/json" -d "@fsh-generated/resources/Patient-BreastCancerPatient147.json" https://lforms-fhir.nlm.nih.gov/baseR4/Patient/BreastCancerPatient147

curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-01-Baseline.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-02-SixMonths.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundleClinical-03-Annual.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-01-Baseline.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-02-SixMonths.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-03-Year1and2.json" https://server.fire.ly/r4
curl -X POST -H "Content-Type: application/json" -d "@fsh-generated/resources/Bundle-DebugBundlePatient-04-Year3and4.json" https://server.fire.ly/r4

curl -X PUT -H "Content-Type: application/json" -d "@fsh-generated/resources/Patient-BreastCancerPatient147.json" https://server.fire.ly/r4/Patient/BreastCancerPatient147

curl -X POST -H "Content-Type: application/json" -d "@DebugBundlePatient-01-Baseline.json" http://localhost:8080/fhir
 
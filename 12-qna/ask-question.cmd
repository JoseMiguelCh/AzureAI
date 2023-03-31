@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set variables
set prediction_url="YOUR_PREDICTION_ENDPOINT"
set key="YOUR_KEY"

curl -X POST https://lab12jmco.cognitiveservices.azure.com/language/:query-knowledgebases?projectName=LearnFAQ&api-version=2021-10-01&deploymentName=production -H "Ocp-Apim-Subscription-Key: 27dfb5a7f91a4355901e1406108e8d55" -H "Content-Type: application/json" -d "{'question': 'What is a learning Path?' }"

curl -X POST "https://lab12jmco.cognitiveservices.azure.com/language/:query-knowledgebases?projectName=LearnFAQ&api-version=2021-10-01&deploymentName=production" -H "Ocp-Apim-Subscription-Key: 27dfb5a7f91a4355901e1406108e8d55" -H "Content-Type: application/json" -d "{\"top\":3,\"question\":\"YOUR_QUESTION_HERE\",\"includeUnstructuredSources\":true,\"confidenceScoreThreshold\":\"YOUR_SCORE_THRESHOLD_HERE\",\"answerSpanRequest\":{\"enable\":true,\"topAnswersWithSpan\":1,\"confidenceScoreThreshold\":\"0.5\"},\"filters\":{\"metadataFilter\":{\"logicalOperation\":\"YOUR_LOGICAL_OPERATION_HERE\",\"metadata\":[{\"key\":\"YOUR_ADDITIONAL_PROP_KEY_HERE\",\"value\":\"YOUR_ADDITIONAL_PROP_VALUE_HERE\"}]}}}"
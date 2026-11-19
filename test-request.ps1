# Sends the sample inquiries to the n8n webhook (Windows PowerShell)
# Use the "Test URL" from the Webhook node while testing, the "Production URL" once the workflow is active.
$url = "http://localhost:5678/webhook-test/inquiries"
$body = Get-Content -Raw -Encoding UTF8 ".\sample-payload.json"
Invoke-RestMethod -Uri $url -Method Post -ContentType "application/json; charset=utf-8" -Body $body

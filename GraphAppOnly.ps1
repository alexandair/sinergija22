# Authenticate
Connect-MgGraph -ClientId "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" -TenantId "XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX" -CertificateName "CN=PowerShellScriptCert"

Write-Host "USERS:"
Write-Host "======================================================"
# List first 50 users
Get-MgUser -Property "id,displayName" -PageSize 50 | Format-Table DisplayName, Id

Write-Host "GROUPS:"
Write-Host "======================================================"
# List first 50 groups
Get-MgGroup -Property "id,displayName" -PageSize 50 | Format-Table DisplayName, Id

# Disconnect
Disconnect-MgGraph